package FrontController;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BoardDAO;
import Model.CommunityRepVO;
import Model.CommunityVO;
import Model.DAO;

public class Bo_CommRepRCon implements Command{

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
			int rev_seq = Integer.parseInt(request.getParameter("num"));
			String rev_ment_content = request.getParameter("message");
			String m_id = request.getParameter("m_id");
			
			System.out.println(rev_seq);
			
			System.out.println(rev_ment_content);
			BoardDAO dao = new BoardDAO();
			
			int cnt = dao.CommRepCon(rev_seq, rev_ment_content, m_id); 
			System.out.println(cnt);
			if(cnt>0) {
				System.out.println("��� �ۼ� ����");
		
	         request.setAttribute("bvo", new CommunityVO(rev_seq));
						
	         // Forward ���
	         RequestDispatcher rd = request.getRequestDispatcher("SelectRBoard.do?rev_seq="+rev_seq);
	         // ������ �̵�
	         rd.forward(request, response);
			}else{
		         System.out.println("��� �ۼ� ����");
			}
			
			
		} catch (Exception e) {
			
		}
		
	}
		
	}


