<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����������</title>
</head>
<body>
<%
try {
String driver="oracle.jdbc.driver.OracleDriver";  //��ҹ��� ���!
Class.forName(driver);  //Ŭ�������� ����־��ָ� �ڵ����� ��ü�� ������ִ� �Լ�.
String url="jdbc:oracle:thin:@172.30.1.20:1521:xe";  //sql�� ��Ʈ��ȣ�� SID����
String userName="hr";  
String passWord="hr"; 
Connection conn = DriverManager.getConnection(url , userName , passWord);
PreparedStatement psmt = null;
Statement st = conn.createStatement();
//���̵�� �����ݾ� �޾ƿ���
String m_id = request.getParameter("name");
int money = Integer.parseInt(request.getParameter("money"));
int cash = 0;
int com = 0;
int cnt = 0;

//DB�� ������ �ֱ�
String sql1="select m_point from t_member where m_id = ?"; //��ɹ� �߰��� �� ���� �������� �޸�������Ѵ�!
psmt = conn.prepareStatement(sql1);
psmt.setString(1, m_id);
ResultSet rs = psmt.executeQuery();
while(rs.next()){
    cash = rs.getInt(1);
	System.out.println("�����ݾ� : "+cash);
}

String sql2 = "UPDATE t_member set m_point = ? where m_id = ? ";
psmt = conn.prepareStatement(sql2);
com = cash + money ;
psmt.setInt(1, com);
psmt.setString(2, m_id);
cnt = psmt.executeUpdate();
if (cnt > 0) {
	System.out.println("��ȭ�ݾ� : " + com);
}else{
	System.out.println("��������");
}
conn.close();
st.close();

} catch (Exception e) {
          System.out.println(e);
}
%>

</body>
</html>





