package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import Model.RefundVO;

public class RefundCon implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
			try {
		request.setCharacterEncoding("euc-kr");
		
		int refd_seq= Integer.parseInt(request.getParameter("refd_seq"));
		String m_id= request.getParameter("m_id");
		int refd_point= Integer.parseInt(request.getParameter("refd_point"));
		int refd_exqt= Integer.parseInt(request.getParameter("refd_exqt"));
		
		
		DAO dao = new DAO();
		
		int cnt = dao.RefundCon(refd_seq,m_id,refd_point,refd_exqt);
	
		if (cnt > 0) {
			System.out.println(" ����");
			request.setAttribute(" vo", new RefundVO(refd_seq, m_id, refd_point, refd_exqt));
			// Forward ���
			RequestDispatcher rd = request.getRequestDispatcher("#");
			// ������ �̵�
			rd.forward(request, response);
		} else {
			System.out.println(" ����");
			response.sendRedirect("main.jsp");
		}
	
	
	} catch (Exception e) {
		
	}
	}

}
