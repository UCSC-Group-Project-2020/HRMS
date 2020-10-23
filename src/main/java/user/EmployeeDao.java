package user;

import DBconnection.DBconn;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao
{
    public UserBean searchEmployee(UserBean userBean)
    {
        String empId = userBean.getEmpId();
        UserBean employee = new UserBean();

        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        String fName,lName,NIC,dob,address,email,password,contact;
        int totLeaves,remLeaves,takenLeaves,empAddDB,empDelDB,postAddDB,postDelDB,postViewDB,chatSysDB,applyLeaveDB,decisionLeaveDB,salaryManageDB,customizeDataDB,editPersonalDetailsDB,giveComSugDB,viewComSugDB,viewMyAttendDB,viewAllAttendDB,viewMyLeavesDB,viewAllLeavesDB,viewMySalaryDB,viewAllSalaryDB,genReportDB;
        float basicSal,otRate;

        try
        {
            con = DBconn.getConnection();
            statement = con.createStatement();
            rs = statement.executeQuery("SELECT user.*,employeesalarydetails.*,employeeleavedetails.*,userprivilege.* FROM ((user INNER JOIN employeesalarydetails ON user.empId = employeesalarydetails.empId) INNER JOIN employeeleavedetails ON user.empId = employeeleavedetails.empId)INNER JOIN userprivilege ON user.empId = userprivilege.empId WHERE user.empId = '"+empId+"'");

            if(rs.next())
            {
                fName = rs.getString("firstName");
                lName = rs.getString("lastName");
                NIC = rs.getString("NIC");
                dob = rs.getString("DOB");
                address = rs.getString("address");
                email = rs.getString("email");
                password = rs.getString("password");
                contact = rs.getString("contactNo");
                totLeaves = rs.getInt("totalLeaves");
                remLeaves = rs.getInt("remainingLeaves");
                takenLeaves = rs.getInt("takenLeaves");
                basicSal = rs.getFloat("basicSalary");
                otRate = rs.getFloat("otRate");
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

                employee.setEmpId(empId);
                employee.setFName(fName);
                employee.setLName(lName);
                employee.setNIC(NIC);
                employee.setDOB(dob);
                employee.setAddress(address);
                employee.setContact(contact);
                employee.setEmail(email);
                employee.setPassword(password);

                employee.setTotalLeaves(totLeaves);
                employee.setRemLeaves(remLeaves);
                employee.setTakenLeaves(takenLeaves);

                employee.setBasicSal(basicSal);
                employee.setOtRate(otRate);

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
            con.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return employee;
    }

    public List<UserBean> searchAllEmployees()
    {
        List<UserBean> empList = new ArrayList<UserBean>();

        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        String empId,fName,lName,NIC,dob,address,email,contact;

        try
        {
            con = DBconn.getConnection();
            statement = con.createStatement();
            rs = statement.executeQuery("SELECT * FROM user");
            while(rs.next())
            {
                UserBean employee = new UserBean();
                empId = rs.getString("empId");
                fName = rs.getString("firstName");
                lName = rs.getString("lastName");
                NIC = rs.getString("NIC");
                dob = rs.getString("DOB");
                address = rs.getString("address");
                email = rs.getString("email");
                contact = rs.getString("contactNo");

                employee.setEmpId(empId);
                employee.setFName(fName);
                employee.setLName(lName);
                employee.setNIC(NIC);
                employee.setDOB(dob);
                employee.setAddress(address);
                employee.setContact(contact);
                employee.setEmail(email);

                empList.add(employee);
            }
            con.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return empList;
    }

    public String addEmployee(UserBean newEmp)
    {
        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        String fName,dob,lName,NIC,address,email,password,contact, res;
        //Date dob;
        int totLeaves,remLeaves,takenLeaves,empAddDB,empDelDB,postAddDB,postDelDB,postViewDB,chatSysDB,applyLeaveDB,decisionLeaveDB,salaryManageDB,customizeDataDB,editPersonalDetailsDB,giveComSugDB,viewComSugDB,viewMyAttendDB,viewAllAttendDB,viewMyLeavesDB,viewAllLeavesDB,viewMySalaryDB,viewAllSalaryDB,genReportDB;
        float basicSal,otRate;

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
        takenLeaves = totLeaves-remLeaves;

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

            PreparedStatement st2 = con.prepareStatement("INSERT INTO employeeleavedetails VALUES(?,?,?,?)");

            st2.setInt(1, empId);
            st2.setInt(2, totLeaves);
            st2.setInt(3, remLeaves);
            st2.setInt(4, takenLeaves);

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

    public String updateEmployee(UserBean Emp)
    {
        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        String fName,dob,lName,NIC,address,email,password,contact, res;
        int totLeaves,remLeaves,empAddDB,empDelDB,postAddDB,postDelDB,postViewDB,chatSysDB,applyLeaveDB,decisionLeaveDB,salaryManageDB,customizeDataDB,editPersonalDetailsDB,giveComSugDB,viewComSugDB,viewMyAttendDB,viewAllAttendDB,viewMyLeavesDB,viewAllLeavesDB,viewMySalaryDB,viewAllSalaryDB,genReportDB;
        float basicSal,otRate;

        int empId = Integer.parseInt(Emp.getEmpId());
        fName = Emp.getFName();
        lName = Emp.getLName();
        NIC = Emp.getNIC();
        dob = Emp.getDOB();
        address = Emp.getAddress();
        contact = Emp.getContact();
        email = Emp.getEmail();
        password = Emp.getPassword();

        totLeaves = Emp.getTotalLeaves();
        remLeaves = totLeaves-Emp.getTakenLeaves();

        basicSal = Emp.getBasicSal();
        otRate = Emp.getOtRate();

        empAddDB = Emp.getEmpAdd();
        empDelDB = Emp.getEmpDel();
        postAddDB = Emp.getPostAdd();
        postDelDB = Emp.getPostDel();
        postViewDB = Emp.getPostView();
        chatSysDB = Emp.getChatSys();
        applyLeaveDB = Emp.getApplyLeave();
        decisionLeaveDB = Emp.getDecisionLeave();
        salaryManageDB = Emp.getSalaryManage();
        customizeDataDB = Emp.getCustomizeData();
        editPersonalDetailsDB = Emp.getEditPersonalDetails();
        giveComSugDB = Emp.getGiveComSug();
        viewComSugDB = Emp.getViewComSug();
        viewMyAttendDB = Emp.getViewMyAttend();
        viewAllAttendDB = Emp.getViewAllAttend();
        viewMyLeavesDB = Emp.getViewMyLeaves();
        viewAllLeavesDB = Emp.getViewAllLeaves();
        viewMySalaryDB = Emp.getViewMySalary();
        viewAllSalaryDB = Emp.getViewAllSalary();
        genReportDB = Emp.getGenReport();
        try
        {
            con = DBconn.getConnection();
            PreparedStatement st1 = con.prepareStatement("UPDATE user SET firstName=?,lastName=?,NIC=?,DOB=?,address=?,contactNo=?,email=?,password=? WHERE empId=?");

            st1.setString(1,fName );
            st1.setString(2,lName);
            st1.setString(3,NIC);
            st1.setString(4,dob);
            st1.setString(5,address);
            st1.setString(6,contact);
            st1.setString(7, email);
            st1.setString(8,password);
            st1.setInt(9, empId);

            st1.executeUpdate();

            PreparedStatement st2 = con.prepareStatement("UPDATE employeeleavedetails SET totalLeaves=?,remainingLeaves=? WHERE empId=?");

            st2.setInt(1, totLeaves);
            st2.setInt(2, remLeaves);
            st2.setInt(3, empId);

            st2.executeUpdate();

            PreparedStatement st3 = con.prepareStatement("UPDATE employeesalarydetails SET basicSalary=?,otRate=? WHERE empId=?");

            st3.setFloat(1, basicSal);
            st3.setFloat(2, otRate);
            st3.setInt(3, empId);

            st3.executeUpdate();

            PreparedStatement st4 = con.prepareStatement("UPDATE userprivilege SET addEmployee=?, deleteEmployee=?, addPost=?, deletePost=?, viewPost=?, chatSystem=?, applyLeave=?, leavesApprovalRejection=?, salaryManagement=?, customizeData=?, editPersonalDetails=?, giveComplainSuggestion=?, viewComplainSuggestion=?, viewMyAttendance=?, viewAllAttendance=?, viewMyLeaves=?, viewAllLeaves=?, viewMySalary=?, viewAllSalary=?, generateReport=? WHERE empId=?");

            st4.setInt(1, empAddDB);
            st4.setInt(2, empDelDB);
            st4.setInt(3, postAddDB);
            st4.setInt(4, postDelDB);
            st4.setInt(5, postViewDB);
            st4.setInt(6, chatSysDB);
            st4.setInt(7, applyLeaveDB);
            st4.setInt(8, decisionLeaveDB);
            st4.setInt(9, salaryManageDB);
            st4.setInt(10, customizeDataDB);
            st4.setInt(11, editPersonalDetailsDB);
            st4.setInt(12, giveComSugDB);
            st4.setInt(13, viewComSugDB);
            st4.setInt(14, viewMyAttendDB);
            st4.setInt(15, viewAllAttendDB);
            st4.setInt(16, viewMyLeavesDB);
            st4.setInt(17, viewAllLeavesDB);
            st4.setInt(18, viewMySalaryDB);
            st4.setInt(19, viewAllSalaryDB);
            st4.setInt(20, genReportDB);
            st4.setInt(21, empId);

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
