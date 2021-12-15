package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.CommunityRepVO;
import Model.CommunityVO;
import Model.DAO;

public class CommRepCon implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("EUC-KR");
			System.out.println("����?");
			
			
			//2. �ִ����� ũ��(���� : byte) : 5MB			
			//3. ���ڵ� Ÿ��
			//4. request�� ��� �ؼ� �޾ƿ� �����͸� �������� MultipartRequest ��ü
			// �Ķ���� ����
			// MultipartRequest ��ü�κ��� �Ķ���� ����
			int comm_seq = Integer.parseInt(request.getParameter("num"));
			String comm_rep_content = request.getParameter("message");
			
			System.out.println(comm_seq);
			
			System.out.println(comm_rep_content);
			BoardDAO dao = new BoardDAO();
			
			int cnt = dao.CommRepCon(comm_seq, comm_rep_content); 
			System.out.println(cnt);
			if(cnt>0) {
				System.out.println("��� �ۼ� ����");
		
	         request.setAttribute("bvo", new CommunityVO(comm_seq));
						
	         // Forward ���
	         RequestDispatcher rd = request.getRequestDispatcher("SelectBoard.do?comm_seq="+comm_seq);
	         // ������ �̵�
	         rd.forward(request, response);
			}else{
		         System.out.println("��� �ۼ� ����");
			}
			
			
		} catch (Exception e) {
			
		}
		
	}
		
	}


