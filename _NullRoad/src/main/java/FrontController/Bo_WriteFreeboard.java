package FrontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Model.BoardDAO;
import Model.CommunityVO;
import Model.DAO;


/**
 * Servlet implementation class WriteFreeboard
 */
@WebServlet("/WriteFreeboard")
public class Bo_WriteFreeboard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. ������ ����Ǵ� ������Ʈ ���� ��ġ
		//request.getServletContext();
		//work spaece > ����ġ��Ĺ ���ε�(������ ��ġ���� �ٲ�)
		//������ ���
		String savePath = request.getServletContext().getRealPath("img");
		
		//2. �ִ����� ũ��(���� : byte) : 5MB
		int maxSize = 5*1024*1024;
		
		//3. ���ڵ� Ÿ��
		String encoding = "euc-kr";
		
		//4. request�� ��� �ؼ� �޾ƿ� �����͸� �������� MultipartRequest ��ü
		MultipartRequest multi = new MultipartRequest(request,
													savePath,
													maxSize,
													encoding,
													new DefaultFileRenamePolicy());
								
		// �Ķ���� ����
		// MultipartRequest ��ü�κ��� �Ķ���� ����
		String comm_subj = multi.getParameter("title2");
		String comm_content = multi.getParameter("content2");
		String m_id = multi.getParameter("writer");
		System.out.println(comm_subj);
		// ���� �̸��� �����ö���
		// getFilesystemName("name��")
		

		
		//DAO �޼��� ����ؼ� web_board ���̺� ����
		BoardDAO dao=new BoardDAO();
		int cnt = dao.CommunityCon(comm_subj, comm_content, m_id);
		
		System.out.println(cnt);
		if(cnt>0) {
			System.out.println("�Խñ� �ۼ� ����!");
			
			//1. request�� ������ file�� ������ ������ �̵� --> VO�� ����ؼ� ����
			// ������ BoardVO �����ڴ� �Ű������� 6������ ��� �޾���
			// ���� ��ư����� 4�����ۿ� ����---> �����ڸ� �ϳ� �� ������ָ� �ȴ�.
			// �̸��� ������ �Ű������� �ٸ� --> �����ε�
			request.setAttribute("bvo",new CommunityVO(comm_subj, comm_content, m_id));
			
			// request������ �����͸� �����ؼ� �̵��Ϸ��� >> forward
			RequestDispatcher rd = request.getRequestDispatcher("Bo_viewFreeboard.jsp");
			rd.forward(request, response);
			
		}else {
			System.out.println("�Խñ� �ۼ� ����!");
		}

	}

}
