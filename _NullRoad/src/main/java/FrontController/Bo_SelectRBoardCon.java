package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.CommunityVO;
import Model.DAO;
import Model.ReviewVO;

public class Bo_SelectRBoardCon implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			// 1. �Ķ���� ����
			System.out.println("����������");
			// 2. DAO ��ü ����
			BoardDAO dao = new BoardDAO();

			System.out.print("DAO");
			int rev_seq = Integer.parseInt(request.getParameter("rev_seq"));
			// 3. DAO�� �޼��� ����ؼ� BoardVO �޾ƿ���
			System.out.println(rev_seq);
			ReviewVO bvo = dao.SelectROne(rev_seq);
			System.out.println("���⿩��>>"+bvo);

			request.setAttribute("bvo", bvo);

			// 5. Forward ������� viewBoard.jsp�� �̵�
			RequestDispatcher rd = request.getRequestDispatcher("Bo_viewReviewboard.jsp");
			rd.forward(request, response);

		} catch (Exception e) {

		}

	}
}
