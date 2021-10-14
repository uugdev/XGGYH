package service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import dao.face.JjimDao;
import dao.impl.JjimDaoImpl;
import dto.XJjim;
import dto.XShow;
import service.face.JjimService;

import util.Paging;

public class JjimServiceImpl implements JjimService  {
	
	private JjimDao jjimDao = new JjimDaoImpl();

	@Override
	public Paging getPagingByMemId(HttpServletRequest req, String memid) {
		
		String param = req.getParameter("curPage");
		int curPage = 0;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		} else {
			System.out.println("[WARNING] curPage값이 null이거나 비어있습니다");
		}
		
		int totalCount = jjimDao.selectCntByMemId(JDBCTemplate.getConnection(), memid);
		
		Paging paging = new Paging(totalCount, curPage);
		
		return paging;	
	}

	@Override
	public List<XShow> getJjimListMemid(Paging paging, String memid) {

		return jjimDao.selectAllByMemid(JDBCTemplate.getConnection(), paging, memid);
		
	}
	
	@Override
	public int setJjim(XJjim jjim) {
		
		int isAble = jjimDao.insertJjim(JDBCTemplate.getConnection(), jjim);
		
		if(isAble > 0)
			JDBCTemplate.commit(JDBCTemplate.getConnection());
		else
			JDBCTemplate.rollback(JDBCTemplate.getConnection());
		
		return isAble;
	}

	@Override
	public XJjim getJjimInfo(HttpServletRequest req) {
		XJjim jjimInfo = new XJjim();
		
		String param = req.getParameter("showNo");
		
		if(param != null && !"".equals(param)) {
			jjimInfo.setShowNo(Integer.parseInt(param));
		} else {
			System.out.println("[WARNING] showNo값이 null이거나 비어있습니다");
		}
		
		param = req.getParameter("memId");
		
		if(param != null && !"".equals(param)) {
			jjimInfo.setMemId(param);
		} else {
			System.out.println("[WARNING] memId값이 null이거나 비어있습니다");
		}
		
		return jjimInfo;
	}

}