package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CommunityVO;
import Model.DAO;
import Model.ParkingVO;

public class CommunityCon implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("euc-kr");
			
			int comm_seq= Integer.parseInt(request.getParameter("comm_seq"));
			String comm_subject= request.getParameter("comm_subject");
			String comm_content= request.getParameter("comm_content");
			String comm_reg_date= request.getParameter("comm_reg_date");
			int comm_cnt= Integer.parseInt(request.getParameter("comm_cnt"));
			String m_id= request.getParameter("m_id");
			int comm_status= Integer.parseInt(request.getParameter("comm_status"));
			
			DAO dao = new DAO();
			
			int cnt = dao.CommunityCon(comm_seq,comm_subject,comm_content,comm_reg_date,comm_cnt,m_id,comm_status);
			
			if(cnt>0) {
				System.out.println("�Խñ� �ۼ� ����");
		
	         request.setAttribute("commvo", new CommunityVO(comm_seq, comm_subject, comm_content, comm_reg_date, comm_cnt,m_id,comm_status));
						
	         // Forward ���
	         RequestDispatcher rd = request.getRequestDispatcher("#");
	         // ������ �̵�
	         rd.forward(request, response);
			}else{
		         System.out.println("�Խñ� �ۼ� ����");
		         response.sendRedirect("main.jsp");
			}
			
			
			
		} catch (Exception e) {
		}
		
	}

}
