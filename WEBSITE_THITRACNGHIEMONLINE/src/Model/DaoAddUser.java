package Model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.ConnectionSQL;

public class DaoAddUser {
	CallableStatement stmt = null;
	
	public DaoAddUser() {
		//
	}
	
	public int CheckAccount(Account account) throws SQLException {
		Connection conn = ConnectionSQL.getDBConnectionSQLServer();
		String cmd="select dbo.FC_tongAccount(?,?,?) as kt";
		
		PreparedStatement stmt = conn.prepareStatement(cmd);
		stmt.setInt(1, account.getUsername());
		stmt.setString(2, account.getPassword());
		stmt.setString(3, account.getType());
		ResultSet rs=stmt.executeQuery();
		try {
			int kiemtra = 0;
			while(rs.next())
			{
				kiemtra=rs.getInt("kt");
			}
			return kiemtra;
		} catch (Exception e) {
			return 0;
		}finally {
			conn.close();
		}
	}
}
