package login;

import DBconnection.DBconn;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao
{
    public String authenticateUser(LoginBean loginBean) {
        String result = null;
        String userName = loginBean.getUserName();
        String password = loginBean.getPassword();

        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        //String empIdDB = "";
        String userNameDB = "";
        String passwordDB = "";

        try
        {
            con = DBconn.getConnection();
            statement = con.createStatement();
            rs = statement.executeQuery("SELECT empId,password FROM user");

            while(rs.next())
            {
                userNameDB = rs.getString("empId");
                passwordDB = rs.getString("password");
                //empIdDB = rs.getString("empId");

                if (userName.equals(userNameDB) && password.equals(passwordDB))
                {
                    result = "Successful";
                    break;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (result == null) {

            result = "UnSuccessful";
        }
        return result;
    }

}
