package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCon implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			

		// �α׾ƿ� ���
		// vo �� null���� �ƴ���
		// vo --> Session ���� ����
		// ������ �����ٰ�
		
		// 1. ���� ��ü ����
		HttpSession session = request.getSession();
		
		// 2. ���� ����
		// removeAttribute() --> 1�� ����
		// invalidate() --> ���ǿ� ����� ��� �� ����
		session.invalidate();
		
		//3. ������ �̵�
		response.sendRedirect("main2.jsp");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	
}
