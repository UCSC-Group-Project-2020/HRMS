package user;

import DBconnection.DBconn;

import java.sql.*;

public class UserDao
{
    public UserBean getUserPrivilege(UserBean userBean)
    {
        String empId = userBean.getEmpId();
        UserBean employee = new UserBean();

        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        int empAddDB,empDelDB,postAddDB,postDelDB,postViewDB,chatSysDB,applyLeaveDB,decisionLeaveDB,salaryManageDB,customizeDataDB,editPersonalDetailsDB,giveComSugDB,viewComSugDB,viewMyAttendDB,viewAllAttendDB,viewMyLeavesDB,viewAllLeavesDB,viewMySalaryDB,viewAllSalaryDB,genReportDB;
        String firstName;
        try
        {
            con = DBconn.getConnection();
            statement = con.createStatement();
            rs = statement.executeQuery("SELECT user.firstName,userprivilege.* FROM user INNER JOIN userprivilege ON user.empId = userprivilege.empId WHERE user.empId = '"+empId+"'");

            if(rs.next())
            {
                firstName = rs.getString("firstName");
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

                employee.setName(firstName);
                employee.setEmpId(empId);
                employee.setEmpAdd(empAddDB);
                employee.setEmpDel(empDelDB);
                employee.setPostAdd(postAddDB);
                employee.setPostDel(postDelDB);
                employee.setPostView(postViewDB);
                employee.setChatSys(chatSysDB);
                employee.setApplyLeave(applyLeaveDB);
                employee.setDecisionLeave(decisionLeaveDB);
                employee.setSalaryManage(salaryManageDB);
                employee.setCustomizeData(customizeDataDB);
                employee.setEditPersonalDetails(editPersonalDetailsDB);
                employee.setGiveComSug(giveComSugDB);
                employee.setViewComSug(viewComSugDB);
                employee.setViewMyAttend(viewMyAttendDB);
                employee.setViewAllAttend(viewAllAttendDB);
                employee.setViewMyLeaves(viewMyLeavesDB);
                employee.setViewAllLeaves(viewAllLeavesDB);
                employee.setViewMySalary(viewMySalaryDB);
                employee.setViewAllSalary(viewAllSalaryDB);
                employee.setGenReport(genReportDB);
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return employee;
    }
}
