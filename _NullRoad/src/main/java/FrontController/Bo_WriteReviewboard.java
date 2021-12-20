package FrontController;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

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
import Model.ReviewVO;


/**
 * Servlet implementation class WriteFreeboard
 */
@WebServlet("/Bo_WriteReviewboard")
public class Bo_WriteReviewboard extends HttpServlet {
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
		String rev_subj = multi.getParameter("title2");
		String rev_content = multi.getParameter("content2");
		String m_id = multi.getParameter("writer");
		int giri = Integer.parseInt(multi.getParameter("giri"));
		ArrayList<String> filename = new ArrayList<>();
System.out.println("�⸮���⸮�⸮"+giri);


			  for ( int i = 0; i<giri; i++) {
			      
				  filename.add(URLEncoder.encode(multi.getFilesystemName("imgPath"+(i+1)), "euc-kr" ));
			  }
			  System.out.println("�⸮���⸮�⸮��?"+filename.size());
		   String fileSum="";
		   for (int i = 0; i<filename.size(); i++) {
			   fileSum+=filename.get(i)+"/";
		   }
		System.out.println("�̹���?"+filename);
		System.out.println("����?"+rev_subj);
		// ���� �̸��� �����ö���
		// getFilesystemName("name��")
		

		
		//DAO �޼��� ����ؼ� web_board ���̺� ����
		BoardDAO dao=new BoardDAO();

		int cnt = dao.ReviewCon(rev_subj, rev_content, m_id);
		
		int cnt2 = dao.FilesRCon(fileSum);

		
		
		System.out.println(cnt);
		System.out.println(cnt2);
		if(cnt>0) {
			System.out.println("�Խñ� �ۼ� ����!");
			
			//1. request�� ������ file�� ������ ������ �̵� --> VO�� ����ؼ� ����
			// ������ BoardVO �����ڴ� �Ű������� 6������ ��� �޾���
			// ���� ��ư����� 4�����ۿ� ����---> �����ڸ� �ϳ� �� ������ָ� �ȴ�.
			// �̸��� ������ �Ű������� �ٸ� --> �����ε�
			request.setAttribute("bvo",new ReviewVO(rev_subj, rev_content, m_id));
			
			// request������ �����͸� �����ؼ� �̵��Ϸ��� >> forward
			RequestDispatcher rd = request.getRequestDispatcher("Bo_viewReviewboard.jsp");
			rd.forward(request, response);
			
		}else {
			System.out.println("�Խñ� �ۼ� ����!");
		}

	}

}
