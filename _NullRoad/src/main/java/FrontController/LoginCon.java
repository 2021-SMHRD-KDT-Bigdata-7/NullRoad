package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO;
import Model.MemberVO;

public class LoginCon implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//1. �Ķ���� ����
		String m_id=request.getParameter("m_id");
		String m_pw=request.getParameter("m_pw");
	
		//DAO ��ü ����
		DAO dao= new DAO();
		MemberVO mvo = dao.Login(m_id, m_pw);
	
	
		//�α��� ���� / ���� �Ǵ�
		//vo�� null�̸� : �α��� ����
		//vo�� null�� �ƴϸ� : �α��� ����
		
		if(mvo !=null) {
			// ����
			System.out.println("�α��� ����");
			// ���ǿ� ������ ������ ��Ƽ� ����
			// 1. ���� ��ü ����
			HttpSession session = request.getSession();
			
			//2. ���ǿ� Attribute �߰� session.setAttribute("", mvo);
			session.setAttribute("mvo", mvo);
			
		}else {
			// ����
			System.out.println("�α��� ����!");


		}
		
		//��ü������ �������� �̵��� ��, try/catch ������Ѵ�. 
		try {
			response.sendRedirect("main2.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}
