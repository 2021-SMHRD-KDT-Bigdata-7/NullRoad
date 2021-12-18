package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BuildingVO;
import Model.DAO;
import Model.MemberVO;
import Model.RefundVO;

public class RfdExqUptAdmCon implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			System.out.println("refundupdate");

			HttpSession session = request.getSession();
			
			MemberVO mvo = (MemberVO) session.getAttribute("mvo");
			int refd_exqt = Integer.parseInt(request.getParameter("refd_exqt"));
			int refd_seq = Integer.parseInt(request.getParameter("refd_seq"));

			DAO dao = new DAO();
			System.out.println(refd_seq);
			int cnt = dao.RefundEexquteUpdate(refd_exqt,refd_seq);
			
			if (cnt > 0) {
				System.out.println("���ݵ� ����");

				request.setAttribute("refduptvo", new RefundVO(mvo.getM_id(), refd_exqt, refd_seq));
				// Forward ���
				RequestDispatcher rd = request.getRequestDispatcher("#������������");
				// ������ �̵�
				rd.forward(request, response);
			} else {
				System.out.println("���ݵ� ����");
				response.sendRedirect("#������������");
			}
		} catch (Exception e) {
		}
				
	}

}
