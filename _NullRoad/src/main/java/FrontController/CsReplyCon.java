package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CSReplyVO;
import Model.DAO;

public class CsReplyCon implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

			try {
		request.setCharacterEncoding("euc-kr");
		
		int cs_rep= Integer.parseInt(request.getParameter("cs_rep"));
		int cs_art_seq= Integer.parseInt(request.getParameter("cs_art_seq"));
		String cs_rep_comment= request.getParameter("cs_rep_comment");
		String cs_rep_reg_date= request.getParameter("cs_rep_reg_date");
		String m_id= request.getParameter("m_id");
		
		
		DAO dao = new DAO();
		
		int cnt = dao.CsReplyCon(cs_rep,cs_art_seq,cs_rep_comment,cs_rep_reg_date,m_id);
	
		if (cnt > 0) {
			System.out.println("��� �ۼ� ����");
			request.setAttribute("csrepvo", new CSReplyVO(cs_rep, cs_art_seq, cs_rep_comment, cs_rep_reg_date, m_id));
			// Forward ���
			RequestDispatcher rd = request.getRequestDispatcher("#");
			// ������ �̵�
			rd.forward(request, response);
		} else {
			System.out.println("��� �ۼ� ����");
			response.sendRedirect("main.jsp");
		}
	
	
	} catch (Exception e) {
		
	}
	}

}
