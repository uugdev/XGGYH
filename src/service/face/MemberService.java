package service.face;

import javax.servlet.http.HttpServletRequest;

import dto.XMem;

//로그인, ID/PW찾기, 회원가입
public interface MemberService {

	/**
	 * req를 XMem객체로 반환
	 * @param req - 전달 받은 요청 파라미터
	 * @return req에 있는 정보를 담은 XMem객체
	 */
	public XMem getLoginMem(HttpServletRequest req);

	/**
	 * mem을 DB 정보와 조회하여 로그인을 시도하여 boolean 데이터 타입으로 반환
	 * @param mem - DB와 대조할 XMem객체
	 * @return 로그인 시도 성공 시 true, 실패 시 false
	 */
	public boolean loginMem(XMem mem);

	/**
	 * mem의 memid와 일치하는 XMem객체를 조회하여 반환
	 * @param mem
	 * @return DB에 저장되어 있던 정보를 담은 XMem객체
	 */
	public XMem getMem(XMem mem);

	
}