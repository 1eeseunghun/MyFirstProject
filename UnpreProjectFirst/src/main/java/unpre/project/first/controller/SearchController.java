package unpre.project.first.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import unpre.project.first.service.SearchService;

@Controller
public class SearchController {
	
	@Autowired
	SearchService searchService;

	
	@RequestMapping(value = "/search", method=RequestMethod.GET) // 전체 목록
	public ModelAndView list(@RequestParam Map<String, Object> map) {

		List<Map<String, Object>> list = this.searchService.searchList(map);
		List<Map<String, Object>> nicknameList = this.searchService.nicknameDistinct(map);
		List<Map<String, Object>> itemList = this.searchService.searchItem(map);
		
		ModelAndView mav = new ModelAndView();

		mav.addObject("data", list);
		mav.addObject("nickname", nicknameList);
		mav.addObject("item", itemList);

		if (map.containsKey("keyword")) {
			mav.addObject("keyword", map.get("keyword"));
		}

		mav.setViewName("main/search");
		return mav;
	}
	
}
