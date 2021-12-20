package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.CommunityVO;
import Model.CustomerCenterVO;
import Model.DAO;

public class oneSelectBordCon implements Command
{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			// 1. �Ķ���� ����
			System.out.println("����������");
			// 2. DAO ��ü ����
			DAO dao = new DAO();

			System.out.print("DAO");
			int cs_art_seq = Integer.parseInt(request.getParameter("cs_art_seq"));
			// 3. DAO�� �޼��� ����ؼ� BoardVO �޾ƿ���
			System.out.println(cs_art_seq);
			CustomerCenterVO csvo = dao.CsSelectOne(cs_art_seq);
			System.out.println("���⿩��>>"+csvo);

			request.setAttribute("csvo", csvo);

			// 5. Forward ������� viewBoard.jsp�� �̵�
			RequestDispatcher rd = request.getRequestDispatcher("oneboardview.jsp");
			rd.forward(request, response);

		} catch (Exception e) {

		}
	}

}
