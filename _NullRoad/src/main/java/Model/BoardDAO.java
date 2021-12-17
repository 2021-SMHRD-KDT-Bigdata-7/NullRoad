package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {

	// ��������
	int cnt = 0;
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	CommunityRepVO crvo = null;
	CommunityVO cvo = null;

	MemberVO mvo = null;

	RevCommentVO revcvo = null;

	// ===============================================================================
	public void Conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@172.30.1.20:1521:xe";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);
		} catch (Exception e) {

		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e2) {
		}
	}

	public int Join(String m_id, String m_pw, String m_name, String m_jumin, String m_phone, String m_car_num,
			int m_point, String m_type, String m_account, String m_joindate, String admin_yn) {
		try {
			Conn();

			String sql = "insert into t_member values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )";
			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���
			psmt.setString(1, m_id);
			psmt.setString(2, m_pw);
			psmt.setString(3, m_name);
			psmt.setString(4, m_jumin);
			psmt.setString(5, m_phone);
			psmt.setString(6, m_car_num);
			psmt.setInt(7, m_point);
			psmt.setString(8, m_type);
			psmt.setString(9, m_account);
			psmt.setString(10, m_joindate);
			psmt.setString(11, admin_yn);

			// 5.
			// select -> executeQuery() --> return ResultSet
			// insert, delete, update -> executeUpdate() --> return int(�� ���� �����ߴ���)
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
		} finally {
			close();
		}

		return cnt;

	}
	// ===============================================================================

	public MemberVO Login(String m_id, String m_pw) {
		try {
			Conn();
			String sql = "select * from t_member where m_id =? and m_pw = ?";
			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���
			psmt.setString(1, m_id);
			psmt.setString(2, m_pw);

			// 5.
			// select -> executeQuery() --> return ResultSet
			// insert, delete, update -> executeUpdate() --> return int(�� ���� �����ߴ���)
			rs = psmt.executeQuery();

			if (rs.next() == true) {
				String member_id = rs.getString(1);
				String member_pw = rs.getString(2);
				String m_name = rs.getString(3);
				String m_jumin = rs.getString(4);
				String m_phone = rs.getString(5);
				String m_car_num = rs.getString(6);
				int m_point = rs.getInt(7);
				int m_type = rs.getInt(8);
				String m_account = rs.getString(9);
				String m_joindate = rs.getString(10);
				int admin_yn = rs.getInt(11);

				mvo = new MemberVO(member_id, member_pw, m_name, m_jumin, m_phone, m_car_num, m_point, m_type,
						m_account, m_joindate, admin_yn);
			}
		} catch (Exception e) {

		} finally {
			close();
		}
		return mvo;

	}

	// ===============================================================================
	public int BldRegCon(int bld_seq, String m_id, double bld_lati, double bld_longi, int bld_prk_lots,
			String bld_owner, String bld_owner_phone, String sigungu, String emdong, String detail_addr,
			String bld_reg_date, int bld_approve, String bld_name, String bld_picture1, String bld_picture2) {

		try {
			Conn();
			String sql = "insert into  values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, bld_seq);
			psmt.setString(2, m_id);
			psmt.setDouble(3, bld_lati);
			psmt.setDouble(4, bld_longi);
			psmt.setInt(5, bld_prk_lots);
			psmt.setString(6, bld_owner);
			psmt.setString(7, bld_owner_phone);
			psmt.setString(8, sigungu);
			psmt.setString(9, emdong);
			psmt.setString(10, detail_addr);
			psmt.setString(11, bld_reg_date);
			psmt.setInt(12, bld_approve);
			psmt.setString(13, bld_name);
			psmt.setString(14, bld_picture1);
			psmt.setString(15, bld_picture2);

		} catch (Exception e) {

		} finally {
			close();
		}
		return cnt;
	}

//===============================================================================
	public int PrkRegCon(int prk_seq, String prk_time, String prk_day, int prk_fee, int prk_status, String prk_memo,
			int bld_seq) {
		try {
			Conn();
			String sql = "insert into t_parking values(?, ?, ?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, prk_seq);
			psmt.setString(2, prk_time);
			psmt.setString(3, prk_day);
			psmt.setInt(4, prk_fee);
			psmt.setInt(5, prk_status);
			psmt.setString(6, prk_memo);
			psmt.setInt(7, bld_seq);

		} catch (Exception e) {
		} finally {
			close();
		}
		return cnt;
	}

	// ===============================================================================

	public int ResCon(int res_seq, int prk_seq, String res_time, String chk_in_time, String chk_out_time,
			int res_status, String res_reg_date, int user_prk_fee, String m_id) {

		try {
			Conn();
			String sql = "insert into t_reservation values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, res_seq);
			psmt.setInt(2, prk_seq);
			psmt.setString(3, res_time);
			psmt.setString(4, chk_in_time);
			psmt.setString(5, chk_out_time);
			psmt.setInt(6, res_status);
			psmt.setString(7, res_reg_date);
			psmt.setInt(8, user_prk_fee);
			psmt.setString(9, m_id);

		} catch (Exception e) {
		} finally {
			close();
		}
		return cnt;

	}

	// ===============================================================================

	public int ReviewCon(int rev_seq, String rev_subject, String rev_content, int res_seq, String m_id,
			String rev_reg_date, int rev_cnt, int rev_status) {
		try {
			Conn();
			String sql = "INSERT INTO t_review(rev_subject, rev_content,res_seq,m_id rev_reg_date, rev_cnt, rev_status) VALUES (?, ?, sysdate, 0, ?, 0)";
			psmt = conn.prepareStatement(sql);


			psmt.setString(1, rev_subject);
			psmt.setString(2, rev_content);
			psmt.setString(3, m_id);

		} catch (Exception e) {

		} finally {
			close();
		}
		return cnt;
	}
	
	public ArrayList<ReviewVO> RevSel() {

		ArrayList<ReviewVO> Revlist = new ArrayList<ReviewVO>();

		try {
			Conn();
			String sql = "select * from t_review order by rev_seq desc";
			psmt = conn.prepareStatement(sql);
			// 5.
			// select -> executeQuery() --> return ResultSet
			// insert, delete, update -> executeUpdate() --> return int(�� ���� �����ߴ���)
			rs = psmt.executeQuery();
			while (rs.next() == true) {
				int rev_seq = rs.getInt(1);
				String rev_subject = rs.getString(2);
				String rev_content = rs.getString(3);
				int res_seq = rs.getInt(4);
				String m_id = rs.getString(5);
				String rev_reg_date = rs.getString(6);
				int rev_cnt = rs.getInt(7);
				int rev_status = rs.getInt(8);

				ReviewVO cvo = new ReviewVO(rev_seq, rev_subject, rev_content, res_seq, m_id, rev_reg_date, rev_cnt
						,rev_status);
				Revlist.add(cvo);
			}
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			// 6. ������ �ݾ��ֱ�
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}

		}

		return Revlist;
	}
	
	public ArrayList<ReviewVO> RevSelBest() {

		ArrayList<ReviewVO> Revlist = new ArrayList<ReviewVO>();

		try {
			Conn();
			String sql = "select * from t_review where rev_status =0 order by rev_cnt desc";
			psmt = conn.prepareStatement(sql);
			// 5.
			// select -> executeQuery() --> return ResultSet
			// insert, delete, update -> executeUpdate() --> return int(�� ���� �����ߴ���)
			rs = psmt.executeQuery();
			while (rs.next() == true) {
				int rev_seq = rs.getInt(1);
				String rev_subject = rs.getString(2);
				String rev_content = rs.getString(3);
				int res_seq = rs.getInt(4);
				String m_id = rs.getString(5);
				String rev_reg_date = rs.getString(6);
				int rev_cnt = rs.getInt(7);
				int rev_status = rs.getInt(8);

				ReviewVO cvo = new ReviewVO(rev_seq, rev_subject, rev_content, res_seq, m_id, rev_reg_date, rev_cnt
						,rev_status);
				System.out.print(cvo);
				Revlist.add(cvo);
			}
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			// 6. ������ �ݾ��ֱ�
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}

		}

		return Revlist;
	}
	
	public int RevMentCon(int rev_ment_seq, int rev_seq, String rev_ment_content, String rev_ment_reg_date,
			String m_id) {
		try {
			Conn();
			String sql = "insert into t_rev_comment values(?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, rev_seq);
			psmt.setInt(2, rev_seq);
			psmt.setString(3, rev_ment_content);
			psmt.setString(4, rev_ment_reg_date);
			psmt.setString(5, m_id);

		} catch (Exception e) {

		} finally {
			close();
		}
		return cnt;
	}

	public int CommunityCon(String comm_subject, String comm_content, String m_id) {
		System.out.println(comm_subject);
		System.out.println(comm_content);
		System.out.println(m_id);
		try {
			Conn();
			String sql = "INSERT INTO t_community (comm_subject, comm_content, comm_reg_date, comm_cnt, m_id, comm_status) VALUES (?, ?, sysdate, 0, ?, 0)";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, comm_subject);
			psmt.setString(2, comm_content);
			psmt.setString(3, m_id);

			cnt = psmt.executeUpdate();
		} catch (Exception e) {

		} finally {
			close();
		}
		return cnt;
	}

	public int CommRepCon(int comm_seq, String comm_rep_content, String m_id) {

		try {
			System.out.println("��?");
			Conn();
			String sql = "insert into t_community_reply (comm_seq, comm_rep_content, comm_rep_reg_date, m_id) VALUES (?, ?, sysdate, ?)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, comm_seq);
			psmt.setString(2, comm_rep_content);
			psmt.setString(3, m_id);
			cnt = psmt.executeUpdate();

		} catch (Exception e) {

		} finally {
			close();
		}
		return cnt;
	}

	public int CustomerCenterCon(int cs_art_seq, String cs_art_subject, String cs_art_content, String cs_art_reg_date,
			int cs_art_cnt, String m_id, int cs_art_status) {
		try {
			Conn();
			String sql = "insert into t_customer_center values(?, ?, ?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, cs_art_seq);
			psmt.setString(2, cs_art_subject);
			psmt.setString(3, cs_art_content);
			psmt.setString(4, cs_art_reg_date);
			psmt.setInt(5, cs_art_cnt);
			psmt.setString(6, m_id);
			psmt.setInt(7, cs_art_status);

		} catch (Exception e) {

		} finally {
			close();
		}
		return cnt;

	}

	public int CsReplyCon(int cs_rep, int cs_art_seq, String cs_rep_comment, String cs_rep_reg_date, String m_id) {
		try {
			Conn();
			String sql = "insert into t_customer_reply values(?, ?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, cs_rep);
			psmt.setInt(2, cs_art_seq);
			psmt.setString(3, cs_rep_comment);
			psmt.setString(4, cs_rep_reg_date);
			psmt.setString(5, m_id);

		} catch (Exception e) {

		} finally {
			close();
		}
		return cnt;

	}

	public int RefundCon(int refd_seq, String m_id, int refd_point, int refd_exqt) {
		try {
			Conn();
			String sql = "insert into  values(?, ?, ?, ?)";
			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, refd_seq);
			psmt.setString(2, m_id);
			psmt.setInt(3, refd_point);
			psmt.setInt(4, refd_exqt);

		} catch (Exception e) {

		} finally {
			close();
		}
		return cnt;
	}

	// ===============================================================================

	public ArrayList<CommunityVO> CommSel() {

		ArrayList<CommunityVO> Commlist = new ArrayList<CommunityVO>();

		try {
			Conn();
			String sql = "select * from t_community where comm_status =0 order by comm_seq desc";
			psmt = conn.prepareStatement(sql);
			// 5.
			// select -> executeQuery() --> return ResultSet
			// insert, delete, update -> executeUpdate() --> return int(�� ���� �����ߴ���)
			rs = psmt.executeQuery();
			while (rs.next() == true) {
				int comm_seq = rs.getInt(1);
				String comm_subject = rs.getString(2);
				String comm_content = rs.getString(3);
				String comm_reg_date = rs.getString(4);
				int comm_cnt = rs.getInt(5);
				String m_id = rs.getString(6);
				int comm_status = rs.getInt(7);

				CommunityVO cvo = new CommunityVO(comm_seq, comm_subject, comm_subject, comm_reg_date, comm_cnt, m_id,
						comm_status);
				Commlist.add(cvo);
			}
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			// 6. ������ �ݾ��ֱ�
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}

		}

		return Commlist;
	}

	public ArrayList<CommunityRepVO> CommRepSel(int comm_seq) {

		ArrayList<CommunityRepVO> CommReplist = new ArrayList<CommunityRepVO>();

		try {
			Conn();
			String sql = "select * from t_community_reply where comm_seq = ? order by comm_rep_seq";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, comm_seq);
			// 5.
			// select -> executeQuery() --> return ResultSet
			// insert, delete, update -> executeUpdate() --> return int(�� ���� �����ߴ���)
			rs = psmt.executeQuery();
			while (rs.next() == true) {
				int comm_rep_seq = rs.getInt(1);
				int tcomm_seq = rs.getInt(2);
				String comm_rep_content = rs.getString(3);
				String comm_rep_reg_date = rs.getString(4);
				String m_id = rs.getString(5);

				CommunityRepVO cvo = new CommunityRepVO(comm_rep_seq, tcomm_seq, comm_rep_content, comm_rep_reg_date,
						m_id);
				CommReplist.add(cvo);
			}
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			// 6. ������ �ݾ��ֱ�
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}

		}

		return CommReplist;
	}

	public CommunityVO SelectOne(int comm_seq) {
		CommunityVO bvo = null;
		// try��
		// JDBC �ڵ�� ������ �´���, �����߿� �߻��ϴ� ����(��Ÿ�� ����) ó�� �ʿ�
		try {
			// JDBC
			// 1. �����ε�
			System.out.println("connȮ��" + comm_seq);
			Conn();
			// 3. sql�� �غ�
			String sql = "select * from t_community where comm_seq =?";
			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���(����ǥ ����. -> ���ε庯�� ���ʿ�)
			psmt.setInt(1, comm_seq);

			// 5. ����
			// select -> executeQuery() --> return ResultSet
			// insert, delete, update -> executeUpdate() --> return int(�� ���� �����ߴ���)
			rs = psmt.executeQuery();
			System.out.print("DAO" + comm_seq);
			// �α��� ����, rs�� �� 1�ุ
			// ��� ȸ�������� ������ > ��� �ݺ��ؾ����� ��
			if (rs.next() == true) {

				// �۹�ȣ, �ۼ���, ����, �����̸�, ����, ��¥
				int bcomm_seq = rs.getInt(1);
				String comm_subj = rs.getString(2);
				String comm_content = rs.getString(3);
				String comm_reg_date = rs.getString(4);
				int comm_cnt = rs.getInt(5);
				String m_id = rs.getString(6);
				int comm_status = rs.getInt(7);
				// �Ѻ������� ���´�.
				bvo = new CommunityVO(bcomm_seq, comm_subj, comm_content, comm_reg_date, comm_cnt, m_id, comm_status);
				comm_cnt += 1;
				String sql2 = "update t_community set comm_cnt = comm_cnt +1  where comm_seq=?";
				psmt = conn.prepareStatement(sql2);
				psmt.setInt(1, comm_seq);
				int tt = psmt.executeUpdate();


			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {
			// 6. ������ �ݾ��ֱ�
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}

		}

		return bvo;
	}



	public int DeleteCommunityCon(int comm_seq) {
		try {
			Conn();
			String sql = "UPDATE t_community SET comm_status = 1 WHERE comm_seq=?";

			psmt = conn.prepareStatement(sql);

			psmt.setInt(1, comm_seq);

			cnt = psmt.executeUpdate();
		} catch (Exception e) {

		} finally {
			close();
		}
		return cnt;
	}

	public int UpdateCommunityCon(int comm_seq, String comm_content) {
		try {
			Conn();
			String sql = "UPDATE t_community SET comm_content = ? WHERE comm_seq=?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, comm_content);
			psmt.setInt(2, comm_seq);

			cnt = psmt.executeUpdate();
		} catch (Exception e) {

		} finally {
			close();
		}

		return cnt;
	}

	public ArrayList<CommunityVO> CommSelBest() {

		ArrayList<CommunityVO> Commlist = new ArrayList<CommunityVO>();

		try {
			Conn();
			String sql = "select * from t_community where comm_status = 0 order by comm_cnt desc";
			psmt = conn.prepareStatement(sql);
			// 5.
			// select -> executeQuery() --> return ResultSet
			// insert, delete, update -> executeUpdate() --> return int(�� ���� �����ߴ���)
			rs = psmt.executeQuery();
			while (rs.next() == true) {
				int comm_seq = rs.getInt(1);
				String comm_subject = rs.getString(2);
				String comm_content = rs.getString(3);
				String comm_reg_date = rs.getString(4);
				int comm_cnt = rs.getInt(5);
				String m_id = rs.getString(6);
				int comm_status = rs.getInt(7);

				CommunityVO cvo = new CommunityVO(comm_seq, comm_subject, comm_subject, comm_reg_date, comm_cnt, m_id,
						comm_status);
				Commlist.add(cvo);
			}
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			// 6. ������ �ݾ��ֱ�
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}

		}

		return Commlist;
	}
	public int FilesCon(String f_1) {
		try {
			Conn();
			String sql = "Select max(comm_seq) from t_community";
			psmt = conn.prepareStatement(sql);

			 rs = psmt.executeQuery();
			 int temp_seq=0;
			 
			if(rs.next()==true) {
				temp_seq = rs.getInt(1);
			}
			System.out.println(temp_seq);
			String sql2 = "INSERT INTO t_files (comm_seq, f_1) VALUES (?,?)";
			psmt = conn.prepareStatement(sql2);
			psmt.setInt(1, temp_seq);
			psmt.setString(2, f_1);
			
			cnt = psmt.executeUpdate();

		} catch (Exception e) {

		} finally {
			close();
		}
		return cnt;
	}
	
	public FilesVO FilesSel(int comm_seq) {
		FilesVO fvo = null;
		// try��
		// JDBC �ڵ�� ������ �´���, �����߿� �߻��ϴ� ����(��Ÿ�� ����) ó�� �ʿ�
		try {
			// JDBC
			// 1. �����ε�
			System.out.println("connȮ��" + comm_seq);
			Conn();
			// 3. sql�� �غ�
			String sql = "select * from t_files where comm_seq =?";
			psmt = conn.prepareStatement(sql);

			// 4. ���ε� ���� ä���(����ǥ ����. -> ���ε庯�� ���ʿ�)
			psmt.setInt(1, comm_seq);

			// 5. ����
			// select -> executeQuery() --> return ResultSet
			// insert, delete, update -> executeUpdate() --> return int(�� ���� �����ߴ���)
			rs = psmt.executeQuery();
			System.out.println(rs);
			System.out.print("DAO" + comm_seq);
			// �α��� ����, rs�� �� 1�ุ
			// ��� ȸ�������� ������ > ��� �ݺ��ؾ����� ��
			if (rs.next() == true) {

				// �۹�ȣ, �ۼ���, ����, �����̸�, ����, ��¥
				int f_seq = rs.getInt(1);
				int bcomm_seq = rs.getInt(2);
				int rev_ment_seq = rs.getInt(3);
				int cs_art_seq = rs.getInt(4);
				int rev_seq = rs.getInt(5);
				int comm_rep_seq = rs.getInt(6);
				int cs_rep = rs.getInt(7);	
				int bld_seq = rs.getInt(8);	
				String f_1= rs.getString(9);


				// �Ѻ������� ���´�.
				fvo = new FilesVO(f_seq, bcomm_seq, rev_ment_seq, cs_art_seq, rev_seq, comm_rep_seq, cs_rep,
						bld_seq, f_1);

			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {
			// 6. ������ �ݾ��ֱ�
			try {
				if (rs != null) {
					rs.close();
				}
				if (psmt != null) {
					psmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {

			}

		}

		return fvo;
	}	
}
