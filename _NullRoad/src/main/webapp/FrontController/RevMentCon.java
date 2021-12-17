package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import Model.RevCommentVO;
import Model.ReviewVO;

public class RevMentCon implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("euc-kr");
			
			int rev_ment_seq= Integer.parseInt(request.getParameter("rev_ment_seq"));
			int rev_seq= Integer.parseInt(request.getParameter("rev_seq"));
			String rev_ment_content= request.getParameter("rev_ment_content");
			String rev_ment_reg_date= request.getParameter("rev_ment_reg_date");
			String m_id = request.getParameter("m_id");
			
			
			DAO dao = new DAO();
			
			int cnt = dao.RevMentCon(rev_ment_seq,rev_seq,rev_ment_content,rev_ment_reg_date,m_id);
		
			if (cnt > 0) {
				System.out.println("����ۼ� ����");
				request.setAttribute("revmentvo", new RevCommentVO(rev_ment_seq, rev_seq, rev_ment_content, rev_ment_reg_date, m_id));
				// Forward ���
				RequestDispatcher rd = request.getRequestDispatcher("#");
				// ������ �̵�
				rd.forward(request, response);
			} else {
				System.out.println("����ۼ� ����");
				response.sendRedirect("main.jsp");
			}
		
		
		} catch (Exception e) {
			
		}
	}

	
	
	
}
