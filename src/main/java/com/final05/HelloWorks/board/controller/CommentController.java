package com.final05.HelloWorks.board.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.final05.HelloWorks.board.model.Service.CommentService;
import com.final05.HelloWorks.board.model.vo.Comment;

@Controller
public class CommentController {
	@Autowired
	private Comment c;

	@Autowired
	private CommentService cService;

	@RequestMapping(value = "cWrite", method = RequestMethod.GET)
	public ModelAndView commentWrite(@RequestParam(name = "b_n") int b_n,
			@RequestParam(name = "page", defaultValue = "1") int page, Comment c, ModelAndView mv) {
		try {
			cService.writeComment(c);
			mv.addObject("b_n", b_n);
			mv.addObject("page", page);
			mv.setViewName("redirect:boardDetail");
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("errorPage");
		}
		return mv;
	}

	@RequestMapping(value = "cUpdate", method = RequestMethod.POST)
	public void commentUpdate(HttpServletResponse response, Comment c) {
		PrintWriter out = null;
		JSONObject job = new JSONObject();
		try {
			job.put("ack", cService.updateComment(c));
			out = response.getWriter();
			out.append(job.toJSONString());
		} catch (Exception e) {
			job.put("ack", -1);
		} finally {
			out.flush();
			out.close();
		}
	}

	@RequestMapping(value = "cDelete", method = RequestMethod.POST)
	public void commentDelete(HttpServletResponse response, Comment c) {

		PrintWriter out = null;
		JSONObject job = new JSONObject();

		try {
			job.put("ack", cService.deleteComment(c));
			out = response.getWriter();
			out.append(job.toJSONString());
		} catch (Exception e) {
			job.put("ack", -1);
		} finally {
			out.flush();
			out.close();
		}
	}

}
