package mvc.controller;

import mvc.model.BookEntity;
import mvc.model.CategoryEntity;
import mvc.repository.BookRepository;
import mvc.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value = "/")
public class BookController {
    @Autowired
    BookRepository bookRepository;
    @Autowired
    CategoryRepository categoryRepository;
    @RequestMapping(method = GET)
    public String showBooks(Model model){
        List<BookEntity> bookEntityList = (List<BookEntity>) bookRepository.findAll();
        model.addAttribute("bookList", bookEntityList);
        return "home";
    }
    @RequestMapping(value = "/search", method = GET)
    public String search(@RequestParam("searchInput") String searchInput, Model model){
        List<BookEntity> resultList;
        if(searchInput.isEmpty()){
            resultList = (List<BookEntity>) bookRepository.findAll();
        }else {
            resultList = bookRepository.findByNameContainingOrAuthorContaining(searchInput, searchInput);
        }
        model.addAttribute("bookList", resultList);
        return "home";
    }
    @RequestMapping(value = "/newBook", method = GET)
    public String showNewBook(Model model){
        model.addAttribute("book", new BookEntity());
        model.addAttribute("msg","Add a new book");
        model.addAttribute("action", "newBook");
        setCategoryDropDownlist(model);
        return "book";
    }
    @RequestMapping(value ="/newBook",method = POST, produces ="text/plain;charset=UTF-8")
    public String submitForm(@Valid @ModelAttribute("book") BookEntity book, BindingResult br, Model model)
    {
        if(br.hasErrors())
        {
            setCategoryDropDownlist(model);
            return "book";
        }
        else
        {
            bookRepository.save(book);
            return "redirect:/";
        }
    }

    public String saveBook(BookEntity book){
        bookRepository.save(book);
        return "redirect:/";
    }
    @RequestMapping(value = "/edit/{id}", method = GET)
    public String showEditBook(Model model, @PathVariable int id){
        model.addAttribute("book", bookRepository.findById(id));
        model.addAttribute("msg","Update book information");
        model.addAttribute("type","update");
        model.addAttribute("action","/updateBook");

        setCategoryDropDownlist(model);
        return "book";
    }
    @RequestMapping(value = "/updateBook", method = POST)
    public String updateBook(@ModelAttribute BookEntity book){
        bookRepository.save(book);
        return "redirect:/";
    }
   @RequestMapping(value = "/delete/{id}", method = GET)
   public String deleteBook(@PathVariable int id){
        bookRepository.deleteById(id);
        return "redirect:/";
   }
   @InitBinder
   public void initBinder(WebDataBinder binder){
       SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
       sdf.setLenient(true);
       binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf,true));
   }

    private void setCategoryDropDownlist(Model model) {
        List<CategoryEntity> categoryEntities = (List<CategoryEntity>) categoryRepository.findAll();
        if(!categoryEntities.isEmpty()){
            Map<Integer,String> cateMap = new LinkedHashMap<>();
            for(CategoryEntity category: categoryEntities){
                cateMap.put(category.getId(),category.getName());
            }
            model.addAttribute("categoryList",cateMap);
        }
    }
}
