package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.BuildingVO;
import Model.DAO;
import Model.MemberVO;

public class BldRegUpdCon implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("euc-kr");

			// 1. ������ ����Ǵ� ������Ʈ ���� ��ġ
			// request.getServletContext();
			// work spaece > ����ġ��Ĺ ���ε�(������ ��ġ���� �ٲ�)
			// ������ ���
			String savePath = request.getServletContext().getRealPath("img");

			// 2. �ִ����� ũ��(���� : byte) : 5MB
			int maxSize = 5 * 1024 * 1024;

			// 3. ���ڵ� Ÿ��
			String encoding = "euc-kr";

			// 4. request�� ��� �ؼ� �޾ƿ� �����͸� �������� MultipartRequest ��ü
			MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding,
					new DefaultFileRenamePolicy());

			HttpSession session = request.getSession();

			MemberVO mvo = (MemberVO) session.getAttribute("mvo");
			BuildingVO bldvo = (BuildingVO) session.getAttribute("bldvo");
			int bld_prk_lots = Integer.parseInt(multi.getParameter("bld_prk_lots"));
			String bld_owner = multi.getParameter("bld_owner");
			String bld_owner_phone = multi.getParameter("bld_owner_phone");
			String sigungu = multi.getParameter("sigungu");
			String emdong = multi.getParameter("emdong");
			String detail_addr = multi.getParameter("detail_addr");
			String bld_name = multi.getParameter("bld_name");
			String bld_picture1 = multi.getParameter("bld_picture1");
			String bld_picture2 = multi.getParameter("bld_picture2");

			DAO dao = new DAO();
			int cnt = dao.BldRegUpdCon(mvo.getM_id(), bldvo.getBld_seq(), bld_prk_lots, bld_owner, bld_owner_phone, sigungu, emdong,
					detail_addr, bld_name, bld_picture1, bld_picture2);

			if (cnt > 0) {
				System.out.println("�ǹ���� ����");

				request.setAttribute("bldvo", new BuildingVO(mvo.getM_id(), bldvo.getBld_seq(), bld_owner, bld_owner_phone,
						sigungu, emdong, detail_addr, bld_name, bld_picture1, bld_picture2));
				// Forward ���
				RequestDispatcher rd = request.getRequestDispatcher("");
				// ������ �̵�
				rd.forward(request, response);
			} else {
				System.out.println("�ǹ���� ����");
				response.sendRedirect("main.jsp");
			}

		} catch (Exception e) {
		}
	}

}
