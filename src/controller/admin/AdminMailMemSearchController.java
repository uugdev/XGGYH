package controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.XMem;
import service.face.AdminMemberService;
import service.impl.AdminMemberServiceImpl;
import util.Paging;

@WebServlet("/admin/mail/mem/search")
public class AdminMailMemSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private AdminMemberService adminMemberService = new AdminMemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Paging paging = adminMemberService.getParameterPaging(req);
		System.out.println("AdminMemberListController [GET] - " + paging);

		//전달 파라미터 searchtype, keyword를 통해서 searchMember객체를 반환
		List<XMem> searchMemList = adminMemberService.searchMemList(req, paging);
				
		req.setAttribute("searchMemList", searchMemList);
		
		req.setAttribute("paging", paging);
		
		req.setCharacterEncoding("UTF-8");
		
		req.setAttribute("linkUrl", "/admin/mail/mem/search?searchtype=" + req.getParameter("searchtype") + "&keyword=" + req.getParameter("keyword"));
				
		req.getRequestDispatcher("/WEB-INF/views/admin/mail/mem/search.jsp").forward(req, resp);
		
		
		
	}

}