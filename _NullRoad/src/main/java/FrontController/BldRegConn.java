package FrontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.BuildingVO;
import Model.DAO;
import Model.MemberVO;

/**
 * Servlet implementation class BldRegConn
 */
@WebServlet("/BldRegConn")
public class BldRegConn extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			request.setCharacterEncoding("euc-kr");

			//1. ������ ����Ǵ� ������Ʈ ���� ��ġ
			//request.getServletContext();
			//work spaece > ����ġ��Ĺ ���ε�(������ ��ġ���� �ٲ�)
			//������ ���
			String savePath = request.getServletContext().getRealPath("img");
			
			//2. �ִ����� ũ��(���� : byte) : 5MB
			int maxSize = 5*1024*1024;
			
			//3. ���ڵ� Ÿ��
			String encoding = "euc-kr";
			
			System.out.println("RegBld.do �����???");	
			//4. request�� ��� �ؼ� �޾ƿ� �����͸� �������� MultipartRequest ��ü
			MultipartRequest multi = new MultipartRequest(request, 
															savePath, 
															maxSize, 
															encoding,
															new DefaultFileRenamePolicy()	
															);
									
						
			System.out.println("����1");
			HttpSession session = request.getSession();
			MemberVO mvo = (MemberVO)session.getAttribute("mvo");
			int bld_prk_lots= Integer.parseInt(multi.getParameter("bld_prk_lots"));
			String bld_owner = multi.getParameter("bld_owner");
			String bld_owner_phone = multi.getParameter("bld_owner_phone");
			String detail_addr = multi.getParameter("sample6_detailAddress");
			String bld_name = multi.getParameter("bld_name");
			String bld_picture1 = multi.getParameter("chooseFile");
			String bld_picture2 = multi.getParameter("bld_picture2");
			
			
			String se = multi.getParameter("se");
			String[] siem = se.split(" ");
			String sigungu = siem[0]+siem[1];
			String emdong = siem[2];
			System.out.println(sigungu);
			System.out.println(emdong);
			DAO dao = new DAO();
			int cnt = dao.BldRegCon(mvo.getM_id(), bld_prk_lots, bld_owner, bld_owner_phone, 
					sigungu, emdong, detail_addr, bld_name, bld_picture1,bld_picture2);
			System.out.println("����");
			if (cnt > 0) {
				System.out.println("�ǹ���� ����");
				
				request.setAttribute("bldvo", new BuildingVO(mvo.getM_id(), bld_prk_lots, bld_owner, bld_owner_phone, 
						sigungu, emdong, detail_addr, bld_name, bld_picture1,bld_picture2));
				// Forward ���
				RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
				// ������ �̵�
				rd.forward(request, response);
			} else {
				System.out.println("�ǹ���� ����");
				response.sendRedirect("main.jsp");
			}
				
		} catch (Exception e) {
			System.out.println(e);
		}
		

	}	
}
