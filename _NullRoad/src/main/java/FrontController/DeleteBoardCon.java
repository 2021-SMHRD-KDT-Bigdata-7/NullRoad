package FrontController;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.BoardDAO;
import Model.CommunityVO;
import Model.DAO;
import Model.MemberVO;

public class DeleteBoardCon implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		CommunityVO cvo = null;

		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("mvo");
		try {

			// 1. �Ķ���� ����
			System.out.println("����������");
			// 2. DAO ��ü ����
			BoardDAO dao = new BoardDAO();

			System.out.print("DAO");
			int comm_seq = Integer.parseInt(request.getParameter("comm_seq"));
			CommunityVO tvo = dao.SelectOne(comm_seq);
			System.out.println(comm_seq);
			System.out.println(mvo.getM_id());
			System.out.println(tvo.getM_id());
			if (mvo.getM_id().equals(tvo.getM_id()) ) {
			// 3. DAO�� �޼��� ����ؼ� BoardVO �޾ƿ���
			int bvo = dao.DeleteCommunityCon(comm_seq);
	

			if (bvo>0) {
				System.out.println("���� ����!");
			} else {
				System.out.println("�� �ȵ���? ������ �Ϻ��ѵ�?");
			}

			// 5. Forward ������� viewBoard.jsp�� �̵�
			RequestDispatcher rd = request.getRequestDispatcher("Bo_Freeboard.jsp");
			rd.forward(request, response);
			}
			else {
				response.setContentType("text/html; charset=UTF-8"); 
				PrintWriter writer = response.getWriter(); 
				writer.println("<script>alert('���̵� �ٸ��ϴ�!!!!!'); location.href='"+"Bo_Freeboard.jsp"+"';</script>"); 
				writer.close();

				response.sendRedirect("Bo_.jsp");
			}
		} catch (Exception e) {

		}

	}
}
