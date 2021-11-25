package com.final05.HelloWorks.board.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.final05.HelloWorks.board.model.Service.BoardService;
import com.final05.HelloWorks.board.model.Service.CommentService;
import com.final05.HelloWorks.board.model.vo.Board;

@Controller
public class BoardController {
	@Autowired
	private BoardService bService;
	@Autowired
	private CommentService cService;

	public static final int LIMIT = 10;

	@RequestMapping(value = "blist.do", method = RequestMethod.GET)
	public ModelAndView boardListService(@RequestParam(name = "page", defaultValue = "1") int page,
			@RequestParam(name = "keyword", required = false) String keyword, ModelAndView mv) {
		try {
			int currentPage = page;

			// 한 페이지당 출력할 목록 갯수
			int listCount = bService.totalCount();
			int maxPage = (int) ((double) listCount / LIMIT + 0.9);
			if (keyword != null && !keyword.equals(""))
				mv.addObject("list", bService.selectSearch(keyword));
			else
				mv.addObject("list", bService.selectList(currentPage, LIMIT));
			mv.addObject("currentPage", currentPage);
			mv.addObject("maxPage", maxPage);
			mv.addObject("listCount", listCount);
			mv.setViewName("board/blist");
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("errorPage");
		}
		return mv;
	}

	@RequestMapping(value = "bDetail.do", method = RequestMethod.GET)
	public ModelAndView boardDetail(@RequestParam(name = "b_n") int b_n,
			@RequestParam(name = "page", defaultValue = "1") int page, ModelAndView mv) {
		try {
			int currentPage = page;
			// 한 페이지당 출력할 목록 갯수
			mv.addObject("board", bService.selectBoard(0, b_n));
			mv.addObject("commentList", cService.selectList(b_n));
			mv.addObject("currentPage", currentPage);
			mv.setViewName("board/boardDetail");
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("errorPage");
		}
		return mv;
	}

	@RequestMapping(value = "bRenew.do", method = RequestMethod.GET)
	public ModelAndView boardDetail(@RequestParam(name = "b_n") int b_n, ModelAndView mv) {
		try {
			mv.addObject("board", bService.selectBoard(1, b_n));
			mv.setViewName("board/boardRenew");
		} catch (Exception e) {
			mv.addObject("msg", e.getMessage());
			mv.setViewName("errorPage");
		}
		return mv;
	}

	@RequestMapping(value = "writeForm.do", method = RequestMethod.GET)
	public String boardInsertForm(ModelAndView mv) {
		return "board/writeForm";
	}

//	@RequestMapping(value = "bInsert.do", method = RequestMethod.POST)
//	public ModelAndView boardInsert(Board b, @RequestParam(name = "upfile", required = false) MultipartFile report,
//			HttpServletRequest request, ModelAndView mv) {
//		try {
//			if (report != null && !report.equals(""))
//				saveFile(report, request);
//			b.getImg_n(report.getOriginalFilename());
//			bService.insertBoard(b);
//			mv.setViewName("redirect:blist.do");
//		} catch (Exception e) {
//			mv.addObject("msg", e.getMessage());
//			mv.setViewName("errorPage");
//		}
//		return mv;
//	}
//
//	@RequestMapping(value = "bUpdate.do", method = RequestMethod.POST)
//	public ModelAndView boardUpdate(Board b, @RequestParam(name = "page", defaultValue = "1") int page,
//			@RequestParam("upfile") MultipartFile report, HttpServletRequest request, ModelAndView mv) {
//		try {
//			if (report != null && !report.equals("")) {
//				removeFile(b.getBoard_file(), request);
//				saveFile(report, request);
//			}
//			b.setBoard_file(report.getOriginalFilename());
//			mv.addObject("board_num", bService.updateBoard(b).getBoard_num());
//			mv.addObject("currentPage", page);
//			mv.setViewName("redirect:bDetail.do");
//		} catch (Exception e) {
//			mv.addObject("msg", e.getMessage());
//			mv.setViewName("errorPage");
//		}
//		return mv;
//	}
//	@RequestMapping(value = "bDelete.do", method = RequestMethod.GET)
//	public ModelAndView boardDelete(@RequestParam(name = "board_num") String board_num,
//			@RequestParam(name = "page", defaultValue = "1") int page, HttpServletRequest request, ModelAndView mv) {
//		try {
//			Board b = bService.selectBoard(1, board_num);
//			removeFile(b.getBoard_file(), request);
//
//			bService.deleteBoard(board_num);
//			mv.addObject("currentPage", page);
//			mv.setViewName("redirect:blist.do");
//		} catch (Exception e) {
//			mv.addObject("msg", e.getMessage());
//			mv.setViewName("errorPage");
//		}
//		return mv;
//	}
	
	private void saveFile(MultipartFile report, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\uploadFiles";
		File folder = new File(savePath);
		if (!folder.exists()) {
			folder.mkdir(); // 폴더가 없다면 생성한다.
		}
		String filePath = null;
		try {
			// 파일 저장
			System.out.println(report.getOriginalFilename() + "을 저장합니다.");
			System.out.println("저장 경로 : " + savePath);
			filePath = folder + "\\" + report.getOriginalFilename();
			report.transferTo(new File(filePath)); // 파일을 저장한다
			System.out.println("파일 명 : " + report.getOriginalFilename());
			System.out.println("파일 경로 : " + filePath);
			System.out.println("파일 전송이 완료되었습니다.");
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
	}

	private void removeFile(String board_file, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\uploadFiles";

		String filePath = savePath + "\\" + board_file;
		try {
			// 파일 저장
			System.out.println(board_file + "을 삭제합니다.");
			System.out.println("기존 저장 경로 : " + savePath);

			File delFile = new File(filePath);
			delFile.delete();

			System.out.println("파일 삭제가 완료되었습니다.");
		} catch (Exception e) {
			System.out.println("파일 삭제 에러 : " + e.getMessage());
		}
	}
}
