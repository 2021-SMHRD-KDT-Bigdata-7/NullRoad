package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import Model.MemberVO;

public class JoinCon implements Command {

	@Override

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("euc-kr");
			
		//���ε� ���� �������� ����
			String m_id = request.getParameter("m_id");
			String m_pw = request.getParameter("m_pw");
			String m_name = request.getParameter("m_name");
			String m_jumin = request.getParameter("m_jumin");
			String m_phone = request.getParameter("m_phone");
			String m_car_num = request.getParameter("m_car_num");
			String m_account = request.getParameter("m_account");

			
			DAO dao = new DAO();
			
			int cnt = dao.Join(m_id, m_pw, m_name, m_jumin, m_phone,
					m_car_num, m_account);
			
			if(cnt>0) {
				System.out.println("ȸ������ ����");
				
				//�޾ƿ��� (�Է��ϴ�) ���� �´»� �ο� ���vo �����ε��ؼ� ���� 
	         request.setAttribute("vo", dao.Login(m_id,m_pw));
	         // Forward ���
	         RequestDispatcher rd = request.getRequestDispatcher("main2.jsp");
	        
	         // ������ �̵�
	         rd.forward(request, response);
			}else{
		         System.out.println("ȸ������ ����");
		         response.sendRedirect("main2.jsp");
			}
		      
		} catch (Exception e) {
		}
		

	
	}

}
