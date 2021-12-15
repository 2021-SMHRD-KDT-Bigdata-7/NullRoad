package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.CommunityVO;
import Model.DAO;

public class DeleteBoardCon implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			// 1. �Ķ���� ����
			System.out.println("����������");
			// 2. DAO ��ü ����
			BoardDAO dao = new BoardDAO();

			System.out.print("DAO");
			int comm_seq = Integer.parseInt(request.getParameter("comm_seq"));
			// 3. DAO�� �޼��� ����ؼ� BoardVO �޾ƿ���
			int bvo = dao.DeleteCommunityCon(comm_seq);

			if (bvo>0) {
				System.out.println("���� ����!");
			} else {
				System.out.println("�� �ȵ���? ������ �Ϻ��ѵ�?");
			}

			// 5. Forward ������� viewBoard.jsp�� �̵�
			RequestDispatcher rd = request.getRequestDispatcher("Freeboard.jsp");
			rd.forward(request, response);

		} catch (Exception e) {

		}

	}
}
