package com.kh.ergate.schedule.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.ergate.schedule.model.service.ScheduleService;
import com.kh.ergate.schedule.model.vo.Schedule;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService sService;
	
	
	
	// 스케줄 페이지로 이동
	@RequestMapping("selectList.sc")
	public ModelAndView scheduleMain() {
		ArrayList<Schedule> slist = sService.selectScheduleList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("schedule/scheduleMain");
		mv.addObject("slist", slist);
		
		return mv;
	}
	
	
	
	@RequestMapping("insert.sc")
	public String insertSchedule(Schedule s, Model model,HttpSession session) {
	
		System.out.println(s);
		
		int result = sService.insertSchedule(s);
		
		if(result > 0) {  // 일정등록 성공
			
			session.setAttribute("msg", "일정등록 성공");
			return "redirect:/selectList.sc";
			
		}else {  // 일정등록 실패
			
			model.addAttribute("msg", "일정등록실패");
			return "common/errorPage";
			
		}
		
		
		
	}
	
	
	
	 // @ResponseBody
	  @RequestMapping(value="slist.sc")
	  public void selectScheduleDetail(String scheduleNo, HttpServletResponse response ) throws JsonIOException, IOException{		
		  int scNo=Integer.parseInt(scheduleNo);			
		  Schedule sc = sService.selectScheduleDetail(scNo);	
		  response.setContentType("application/json; charset=utf-8");
		   new Gson().toJson(sc, response.getWriter());		 
	  
	  }
	  
	  
	  @RequestMapping("update.sc")
	  public String updateSchedule(Schedule sc, Model model, HttpSession session) {
	
		  int result = sService.updateSchedule(sc);
		  
		  if(result > 0) {  // 수정 성공
			  
			  session.setAttribute("scloginUser", sService.selectScheduleDetail(sc.getScheduleNo() ));
			  
			  return "redirect:selectList.sc";
			  
		  }else {  // 수정 실패
			  
			  model.addAttribute("msg", "일정 정보 수정 실패!!");
			  return "common/errorPage";
			  
		  }
		  
		  
	  }
	  
	  @RequestMapping("delete.sc")
	  public String deleteSchedule(int ScheduleNo, Model model, HttpSession session) {
		  
		  int result = sService.deleteSchedule(ScheduleNo);
		  
		  if(result > 0) {
			  
			  session.invalidate();
			  return "redirect:selectList.sc";
			  
		  }else {
			  
			  model.addAttribute("msg", "일정 삭제 실패!!!!");
			  return "common/errorPage";
		  }
	  }
	  
	 
}
