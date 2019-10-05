package com.ItemStore.api;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
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
    
    @RequestMapping(value = "/delete", method=RequestMethod.POST)
    public String deleteCosmetics(@RequestParam("t1") String name) {
//    	System.out.println(name);
    	for(int i = 0; i < items.size(); i++) {
    		if(items.get(i).getName().equals(name)) {
    			items.remove(i);
    			break;
    		}
    	}
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

}
