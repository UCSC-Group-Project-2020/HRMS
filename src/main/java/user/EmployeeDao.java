package user;

import DBconnection.DBconn;

import java.sql.*;

public class EmployeeDao
{
    /*public UserBean searchEmployee(UserBean userBean)
    {
        String empId = userBean.getEmpId();
        UserBean employee = new UserBean();

        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        boolean empAddDB,empDelDB,postAddDB,postDelDB,postViewDB,chatSysDB,applyLeaveDB,decisionLeaveDB,attendanceManageDB,salaryManageDB,customizeDataDB,editPersonalDetailsDB,giveComSugDB,viewComSugDB,viewMyAttendDB,viewAllAttendDB,viewMyLeavesDB,viewAllLeavesDB,viewMySalaryDB,viewAllSalaryDB,genReportDB;

        try
        {
            con = DBconn.getConnection();
            statement = con.createStatement();
            rs = statement.executeQuery("SELECT * FROM userprivilege WHERE empId = '"+empId+"'");

            while (rs.next())
            {
                empAddDB = rs.getBoolean("addEmployee");
                empDelDB = rs.getBoolean("deleteEmployee");
                postAddDB = rs.getBoolean("addPost");
                postDelDB = rs.getBoolean("deletePost");
                postViewDB = rs.getBoolean("viewPost");
                chatSysDB = rs.getBoolean("chatSystem");
                applyLeaveDB = rs.getBoolean("applyLeave");
                decisionLeaveDB = rs.getBoolean("leavesApprovalRejection");
                attendanceManageDB = rs.getBoolean("attendanceManagement");
                salaryManageDB = rs.getBoolean("salaryManagement");
                customizeDataDB = rs.getBoolean("customizeData");
                editPersonalDetailsDB = rs.getBoolean("editPersonalDetails");
                giveComSugDB = rs.getBoolean("giveComplainSuggestion");
                viewComSugDB = rs.getBoolean("viewComplainSuggestion");
                viewMyAttendDB = rs.getBoolean("viewMyAttendance");
                viewAllAttendDB = rs.getBoolean("viewAllAttendance");
                viewMyLeavesDB = rs.getBoolean("viewMyLeaves");
                viewAllLeavesDB = rs.getBoolean("viewAllLeaves");
                viewMySalaryDB = rs.getBoolean("viewMySalary");
                viewAllSalaryDB = rs.getBoolean("viewAllSalary");
                genReportDB = rs.getBoolean("generateReport");

                userPrivilege.setEmpId(empId);
                userPrivilege.setEmpAdd(empAddDB);
                userPrivilege.setEmpDel(empDelDB);
                userPrivilege.setPostAdd(postAddDB);
                userPrivilege.setPostDel(postDelDB);
                userPrivilege.setPostView(postViewDB);
                userPrivilege.setChatSys(chatSysDB);
                userPrivilege.setApplyLeave(applyLeaveDB);
                userPrivilege.setDecisionLeave(decisionLeaveDB);
                userPrivilege.setAttendanceManage(attendanceManageDB);
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
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return userPrivilege;
    }*/
    public String addEmployee(UserBean newEmp)
    {
        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        String fName,dob,lName,NIC,address,email,password,contact, res;
        //Date dob;
        int totLeaves,remLeaves,empAddDB,empDelDB,postAddDB,postDelDB,postViewDB,chatSysDB,applyLeaveDB,decisionLeaveDB,salaryManageDB,customizeDataDB,editPersonalDetailsDB,giveComSugDB,viewComSugDB,viewMyAttendDB,viewAllAttendDB,viewMyLeavesDB,viewAllLeavesDB,viewMySalaryDB,viewAllSalaryDB,genReportDB;
        float basicSal,otRate;
        //boolean empAddDB,empDelDB,postAddDB,postDelDB,postViewDB,chatSysDB,applyLeaveDB,decisionLeaveDB,attendanceManageDB,salaryManageDB,customizeDataDB,editPersonalDetailsDB,giveComSugDB,viewComSugDB,viewMyAttendDB,viewAllAttendDB,viewMyLeavesDB,viewAllLeavesDB,viewMySalaryDB,viewAllSalaryDB,genReportDB;

        int empId = Integer.parseInt(newEmp.getEmpId());
        fName = newEmp.getFName();
        lName = newEmp.getLName();
        NIC = newEmp.getNIC();
        dob = newEmp.getDOB();
        address = newEmp.getAddress();
        contact = newEmp.getContact();
        email = newEmp.getEmail();
        password = newEmp.getPassword();

        totLeaves = newEmp.getTotalLeaves();
        remLeaves = newEmp.getRemLeaves();

        basicSal = newEmp.getBasicSal();
        otRate = newEmp.getOtRate();

        empAddDB = newEmp.getEmpAdd();
        empDelDB = newEmp.getEmpDel();
        postAddDB = newEmp.getPostAdd();
        postDelDB = newEmp.getPostDel();
        postViewDB = newEmp.getPostView();
        chatSysDB = newEmp.getChatSys();
        applyLeaveDB = newEmp.getApplyLeave();
        decisionLeaveDB = newEmp.getDecisionLeave();
        salaryManageDB = newEmp.getSalaryManage();
        customizeDataDB = newEmp.getCustomizeData();
        editPersonalDetailsDB = newEmp.getEditPersonalDetails();
        giveComSugDB = newEmp.getGiveComSug();
        viewComSugDB = newEmp.getViewComSug();
        viewMyAttendDB = newEmp.getViewMyAttend();
        viewAllAttendDB = newEmp.getViewAllAttend();
        viewMyLeavesDB = newEmp.getViewMyLeaves();
        viewAllLeavesDB = newEmp.getViewAllLeaves();
        viewMySalaryDB = newEmp.getViewMySalary();
        viewAllSalaryDB = newEmp.getViewAllSalary();
        genReportDB = newEmp.getGenReport();
        try
        {
            con = DBconn.getConnection();
            PreparedStatement st1 = con.prepareStatement("INSERT INTO user VALUES(?,?,?,?,?,?,?,?,?,?)");

            st1.setInt(1, empId);
            st1.setString(2,fName );
            st1.setString(3,lName);
            st1.setString(4,NIC);
            st1.setString(5,dob);
            st1.setString(6,address);
            st1.setString(7,contact);
            st1.setString(8, email);
            st1.setString(9,password);
            st1.setInt(10,100);

            st1.executeUpdate();

            PreparedStatement st2 = con.prepareStatement("INSERT INTO employeeleavedetails VALUES(?,?,?)");

            st2.setInt(1, empId);
            st2.setInt(2, totLeaves);
            st2.setInt(3, remLeaves);

            st2.executeUpdate();

            PreparedStatement st3 = con.prepareStatement("INSERT INTO employeesalarydetails VALUES(?,?,?)");

            st3.setInt(1, empId);
            st3.setFloat(2, basicSal);
            st3.setFloat(3, otRate);

            st3.executeUpdate();

            PreparedStatement st4 = con.prepareStatement("INSERT INTO userprivilege VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

            st4.setInt(1, empId);
            st4.setInt(2, empAddDB);
            st4.setInt(3, empDelDB);
            st4.setInt(4, postAddDB);
            st4.setInt(5, postDelDB);
            st4.setInt(6, postViewDB);
            st4.setInt(7, chatSysDB);
            st4.setInt(8, applyLeaveDB);
            st4.setInt(9, decisionLeaveDB);
            st4.setInt(10, salaryManageDB);
            st4.setInt(11, customizeDataDB);
            st4.setInt(12, editPersonalDetailsDB);
            st4.setInt(13, giveComSugDB);
            st4.setInt(14, viewComSugDB);
            st4.setInt(15, viewMyAttendDB);
            st4.setInt(16, viewAllAttendDB);
            st4.setInt(17, viewMyLeavesDB);
            st4.setInt(18, viewAllLeavesDB);
            st4.setInt(19, viewMySalaryDB);
            st4.setInt(20, viewAllSalaryDB);
            st4.setInt(21, genReportDB);

            st4.executeUpdate();

            st1.close();
            st2.close();
            st3.close();
            st4.close();
            con.close();

            res = "Success";
        }
        catch (SQLException e)
        {
            e.printStackTrace();
            res = "Error";
        }
        return res;
    }
}
