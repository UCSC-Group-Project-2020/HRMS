package user;

import DBconnection.DBconn;

import java.sql.*;

public class UserDao
{
    public UserBean getUserPrivilege(UserBean userBean)
    {
        String empId = userBean.getEmpId();
        UserBean userPrivilege = new UserBean();

        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        int empAddDB,empDelDB,postAddDB,postDelDB,postViewDB,chatSysDB,applyLeaveDB,decisionLeaveDB,salaryManageDB,customizeDataDB,editPersonalDetailsDB,giveComSugDB,viewComSugDB,viewMyAttendDB,viewAllAttendDB,viewMyLeavesDB,viewAllLeavesDB,viewMySalaryDB,viewAllSalaryDB,genReportDB;
        String firstName;
        try
        {
            con = DBconn.getConnection();
            statement = con.createStatement();
            rs = statement.executeQuery("SELECT * FROM userprivilege WHERE empId = '"+empId+"'");

            while (rs.next())
            {
                empAddDB = rs.getInt("addEmployee");
                empDelDB = rs.getInt("deleteEmployee");
                postAddDB = rs.getInt("addPost");
                postDelDB = rs.getInt("deletePost");
                postViewDB = rs.getInt("viewPost");
                chatSysDB = rs.getInt("chatSystem");
                applyLeaveDB = rs.getInt("applyLeave");
                decisionLeaveDB = rs.getInt("leavesApprovalRejection");
                salaryManageDB = rs.getInt("salaryManagement");
                customizeDataDB = rs.getInt("customizeData");
                editPersonalDetailsDB = rs.getInt("editPersonalDetails");
                giveComSugDB = rs.getInt("giveComplainSuggestion");
                viewComSugDB = rs.getInt("viewComplainSuggestion");
                viewMyAttendDB = rs.getInt("viewMyAttendance");
                viewAllAttendDB = rs.getInt("viewAllAttendance");
                viewMyLeavesDB = rs.getInt("viewMyLeaves");
                viewAllLeavesDB = rs.getInt("viewAllLeaves");
                viewMySalaryDB = rs.getInt("viewMySalary");
                viewAllSalaryDB = rs.getInt("viewAllSalary");
                genReportDB = rs.getInt("generateReport");

                userPrivilege.setEmpId(empId);
                userPrivilege.setEmpAdd(empAddDB);
                userPrivilege.setEmpDel(empDelDB);
                userPrivilege.setPostAdd(postAddDB);
                userPrivilege.setPostDel(postDelDB);
                userPrivilege.setPostView(postViewDB);
                userPrivilege.setChatSys(chatSysDB);
                userPrivilege.setApplyLeave(applyLeaveDB);
                userPrivilege.setDecisionLeave(decisionLeaveDB);
                userPrivilege.setSalaryManage(salaryManageDB);
                userPrivilege.setCustomizeData(customizeDataDB);
                userPrivilege.setEditPersonalDetails(editPersonalDetailsDB);
                userPrivilege.setGiveComSug(giveComSugDB);
                userPrivilege.setViewComSug(viewComSugDB);
                userPrivilege.setViewMyAttend(viewMyAttendDB);
                userPrivilege.setViewAllAttend(viewAllAttendDB);
                userPrivilege.setViewMyLeaves(viewMyLeavesDB);
                userPrivilege.setViewAllLeaves(viewAllLeavesDB);
                userPrivilege.setViewMySalary(viewMySalaryDB);
                userPrivilege.setViewAllSalary(viewAllSalaryDB);
                userPrivilege.setGenReport(genReportDB);

                ResultSet rs2 = null;
                String s="user";
                rs2 = statement.executeQuery("SELECT firstName FROM "+s+" WHERE empId = '" + empId + "'");
                while (rs2.next()) {

                    firstName=rs2.getString("firstName");
                    userPrivilege.setName(firstName);

                }
            }
        }
        catch (SQLException e)
        {
            //e.printStackTrace();
        }
        return userPrivilege;
    }
}
