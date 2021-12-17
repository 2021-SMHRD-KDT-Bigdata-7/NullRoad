package FrontController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class frontControllerCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ���� ��û�� �����ϰ�, ������ ��ü�� ���� �޼��带 ���
		// ���� ��ü URI �ʿ�
		// http://localhost:8081/CommandPattern/Login.do
		String requestURI = request.getRequestURI();

		// ContextPath ��������
		// http://localhost:8081/CommandPattern
		String contextPath = request.getContextPath();

		// String�� substring() : ���ڿ��� �����̽�
		// substring ( int Ÿ�� index )
		// /Login.do
		String command = requestURI.substring(contextPath.length());

		System.out.println(command);

		// if���� �̿��ؼ� ����
		// ������ ���ؼ� ��ü ����
		Command exe = null;

		if (command.equals("/Login.do")) {
			// interface <--- LoginCon ( ��ĳ���� )
			exe = new LoginCon();
		} else if (command.equals("/Join.do")) {
			// ȸ������
			exe = new JoinCon();
		} else if (command.equals("/RegBld.do")) {
			exe = new BldRegCon();
		} else if (command.equals("/PrkReg.do")) {
			exe = new PrkRegCon();
		} else if (command.equals("/Res.do")) {
			exe = new ResCon();
		} else if (command.equals("/Review.do")) {
			exe = new ReviewCon();
		} else if (command.equals("/RevMent.do")) {
			exe = new RevMentCon();
		} else if (command.equals("/Community.do")) {
			exe = new CommunityCon();
		} else if (command.equals("/CommRep.do")) {
			exe = new Bo_CommRepCon();
		} else if (command.equals("/CustomerCenter.do")) {
			exe = new CustomerCenterCon();
		} else if (command.equals("/CsReply.do")) {
			exe = new CsReplyCon();
		} else if (command.equals("/Refund.do")) {
			exe = new RefundCon();
		} else if (command.equals("/BldRegUpd.do")) {
			exe = new BldRegUpdCon();
		}else if (command.equals("/PayLogin.do")) {
			exe = new PayLoginCon();
		}else if (command.equals("/PayUseService.do")) {
			exe = new PayUseService();
		}else if (command.equals("/PaymentService.do")) {
			exe = new PaymentService();
		} else if (command.equals("/SelectBoard.do")) {
			exe = new Bo_SelectBoardCon();
		} else if (command.equals("/CommRepCon.do")) {
			exe = new Bo_CommRepCon();
		} else if (command.equals("/Delete.do")) {
			exe = new DeleteBoardCon();
		} else if (command.equals("/Logout.do")) {
			exe = new LogoutCon();
		} else if (command.equals("/PayReserveService.do")) {
		    exe = new PayReserveService();
		} else if (command.equals("/SelectRBoard.do")) {
		    exe = new Bo_SelectRBoardCon();
		}
		
		exe.execute(request, response);
	}

}
