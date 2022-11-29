package com.gery.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.gery.domain.BoardVO;
import com.gery.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {

	
	private BoardService service;
	
	//	@GetMapping("/list")
//	public String list(Model model) {
//		
//		log.info("list");
//		
//		model.addAttribute("list", service.getlist());
//		return "pages/list";
//	}
	
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);
		model.addAttribute("list", service.getlist(cri));

	}
	
	@GetMapping("/register")
	public String register() {
		return "pages/register";
	}
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		
		log.info("register : " + board);
		
		service.register(board);
		rttr.addFlashAttribute("result", board.getBno());
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/get")
	public String get(@RequestParam("bno") Long bno, Model model) {
		
		log.info("/get");
		model.addAttribute("board", service.get(bno));
		
		return "pages/get";
	}
	
	
	@GetMapping("/modify")
	public String modify(@RequestParam("bno") Long bno, Model model) {
		
		log.info("/modfiy");
		model.addAttribute("board", service.get(bno));
		
		return "pages/modify";
	}
	
	@PostMapping("/modify.do")
	
	public String modify(BoardVO board, RedirectAttributes rttr) {
		log.info("modify.do" + board);
		
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/list";
	}
	
	
	@GetMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, Model model) {
		
		log.info("/remove");
		model.addAttribute("bno", bno);
		
		return "pages/remove";
	}
	
	
	@PostMapping("/remove.do")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
		log.info("remove.do..." + bno);
		
		if(service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/board/list";
		
	}
}
