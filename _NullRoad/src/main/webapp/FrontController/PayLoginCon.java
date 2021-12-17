package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO;
import Model.MemberVO;
import Model.ParkingVO;
import Model.ReservationVO;

public class PayLoginCon implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//1. �Ķ���� ����
		String m_id=request.getParameter("m_id");
		String m_pw=request.getParameter("m_pw");
		
		HttpSession session = request.getSession();
		String lot = null;
		if (session.getAttribute("lot")!=null){
			lot = (String)session.getAttribute("lot");
			session.setAttribute("lot", lot);
		}
	
		//DAO ��ü ����
		DAO dao= new DAO();
		MemberVO mvo = dao.Login(m_id, m_pw);

		try {
		if(mvo !=null) {
			System.out.println("�α��� ����");
			session.setAttribute("mvo", mvo);
			
			ParkingVO pvo = dao.ParkSelect(lot);
			if(pvo !=null) {
				System.out.println("���������� �ҷ�����");
				session.setAttribute("pvo", pvo);
			}
			
			
			ReservationVO resvo = dao.IdResSelect(m_id);
			if(resvo !=null) {
				// ����
				System.out.println("����ϴ� �������� �ֽ��ϴ�.");
				session.setAttribute("resvo", resvo);
				response.sendRedirect("Pay4Receipt.jsp");
			}else {
				// ����
				System.out.println("������� �������� �����ϴ�.");
				response.sendRedirect("Pay2LotUseCon.jsp");
			}

			
		}else {
			// ����
			System.out.println("�α��� ����!");
			//��ü������ �������� �̵��� ��, try/catch ������Ѵ�. 
			response.sendRedirect("Pay1LoginCheck.jsp");


		}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	

}
