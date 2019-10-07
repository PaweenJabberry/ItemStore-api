package com.ItemStore.api;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class itemController {
	
	List<Item> items = new ArrayList<>(Arrays.asList(
	        new Item("001", "Snack", 1),
	        new Item("002", "Lollipop", 1)
	    ));
	
	@RequestMapping("/index")
    public String index() {
        return "index";
    }
	    
    public List<Item> getAllItems() {
        return items;
    }
    
    public Item findItem(String id) {
    	Item targetItem = new Item();
		
		for(int i = 0; i < items.size(); i++) {
    		if(items.get(i).getId().equals(id)) {
    			targetItem = items.get(i);
    			break;
    		}
    	}
		
    	return targetItem;
    }
    
    @RequestMapping(value = "/delete", method=RequestMethod.POST)
    public String deleteItems(@RequestParam("t1") String name) {
//    	System.out.println(name);
    	for(int i = 0; i < items.size(); i++) {
    		if(items.get(i).getName().equals(name)) {
    			items.remove(i);
    			break;
    		}
    	}
    	return "index";
    }
    
    @RequestMapping(value = "/add", method=RequestMethod.POST)
    public String addItems(@RequestParam("id") String id, @RequestParam("name") String name, @RequestParam("amount") int amount) {
//    	System.out.println(name);
    	Item newItem = new Item(id,name,amount);
    	items.add(newItem);

    	return "index";
    }
	
	@RequestMapping("/showItems")
	public ModelAndView callList(HttpServletRequest request,HttpServletResponse response) {
		
		List<Item> items = new ArrayList<Item>();

		items = getAllItems();

		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		mv.addObject("items", items);
		
		return mv;
	}

	@RequestMapping(value = "/display/{id}", method=RequestMethod.GET)
    public ModelAndView display(@PathVariable("id") String id) {
		Item targetItem = findItem(id);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("display");
		mv.addObject("items", targetItem);
		
		return mv;
    }
}
