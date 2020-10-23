import user.EmployeeDao;
import user.UserBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateEmployee extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String empId,fName,lName,NIC,dob,address,email,password,contact;
        int totLeaves,takenLeaves,empAddDB,empDelDB,postAddDB,postDelDB,postViewDB,chatSysDB,applyLeaveDB,decisionLeaveDB,salaryManageDB,customizeDataDB,editPersonalDetailsDB,giveComSugDB,viewComSugDB,viewMyAttendDB,viewAllAttendDB,viewMyLeavesDB,viewAllLeavesDB,viewMySalaryDB,viewAllSalaryDB,genReportDB;;
        float basicSal,otRate;

        empId = request.getParameter("empId");
        fName = request.getParameter("first_name");
        lName = request.getParameter("last_name");
        NIC = request.getParameter("nic");
        dob = request.getParameter("dob");
        address = request.getParameter("address");
        contact = request.getParameter("phone");
        email = request.getParameter("email");
        password = request.getParameter("password");

        totLeaves = Integer.valueOf(request.getParameter("leaves"));
        takenLeaves = Integer.valueOf(request.getParameter("tleaves"));

        basicSal = Float.valueOf(request.getParameter("bSalary"));
        otRate = Float.valueOf(request.getParameter("otRate"));

        empAddDB = Integer.valueOf(request.getParameter("employeeAdd"));
        empDelDB = Integer.valueOf(request.getParameter("employeeRemove"));
        postAddDB = Integer.valueOf(request.getParameter("postAdd"));
        postDelDB = Integer.valueOf(request.getParameter("postDelete"));
        postViewDB = Integer.valueOf(request.getParameter("postView"));
        chatSysDB = Integer.valueOf(request.getParameter("chatSystemUse"));
        applyLeaveDB = Integer.valueOf(request.getParameter("leaveApply"));
        decisionLeaveDB = Integer.valueOf(request.getParameter("ApproveOrRejectLeave"));
        salaryManageDB = Integer.valueOf(request.getParameter("salaryManagement"));
        customizeDataDB = Integer.valueOf(request.getParameter("dataCustomize"));
        editPersonalDetailsDB = Integer.valueOf(request.getParameter("personalDetailsEdit"));
        giveComSugDB = Integer.valueOf(request.getParameter("complain_suggestionGive"));
        viewComSugDB = Integer.valueOf(request.getParameter("complain_suggestionView"));
        viewMyAttendDB = Integer.valueOf(request.getParameter("myAttendanceHistoryView"));
        viewAllAttendDB = Integer.valueOf(request.getParameter("othersAttendanceHistoryView"));
        viewMyLeavesDB = Integer.valueOf(request.getParameter("myLeaveHistoryView"));
        viewAllLeavesDB = Integer.valueOf(request.getParameter("otherLeaveHistoryView"));
        viewMySalaryDB = Integer.valueOf(request.getParameter("mySalary"));
        viewAllSalaryDB = Integer.valueOf(request.getParameter("otherSalary"));
        genReportDB = Integer.valueOf(request.getParameter("generationReport"));

        UserBean newEmp = new UserBean();
        newEmp.setEmpId(empId);
        newEmp.setFName(fName);
        newEmp.setLName(lName);
        newEmp.setNIC(NIC);
        newEmp.setDOB(dob);
        newEmp.setAddress(address);
        newEmp.setContact(contact);
        newEmp.setEmail(email);
        newEmp.setPassword(password);

        newEmp.setTotalLeaves(totLeaves);
        newEmp.setTakenLeaves(takenLeaves);

        newEmp.setBasicSal(basicSal);
        newEmp.setOtRate(otRate);

        newEmp.setEmpAdd(empAddDB);
        newEmp.setEmpDel(empDelDB);
        newEmp.setPostAdd(postAddDB);
        newEmp.setPostDel(postDelDB);
        newEmp.setPostView(postViewDB);
        newEmp.setChatSys(chatSysDB);
        newEmp.setApplyLeave(applyLeaveDB);
        newEmp.setDecisionLeave(decisionLeaveDB);
        newEmp.setSalaryManage(salaryManageDB);
        newEmp.setCustomizeData(customizeDataDB);
        newEmp.setEditPersonalDetails(editPersonalDetailsDB);
        newEmp.setGiveComSug(giveComSugDB);
        newEmp.setViewComSug(viewComSugDB);
        newEmp.setViewMyAttend(viewMyAttendDB);
        newEmp.setViewAllAttend(viewAllAttendDB);
        newEmp.setViewMyLeaves(viewMyLeavesDB);
        newEmp.setViewAllLeaves(viewAllLeavesDB);
        newEmp.setViewMySalary(viewMySalaryDB);
        newEmp.setViewAllSalary(viewAllSalaryDB);
        newEmp.setGenReport(genReportDB);

        EmployeeDao regEmp = new EmployeeDao();
        String res = regEmp.updateEmployee(newEmp);
        if(res.equals("Success"))
        {
            System.out.println("Successfully Updated.");
        }
        else
        {
            System.out.println("Error");
        }
        request.getRequestDispatcher("/searchEmployee.jsp").forward(request, response);
    }
}
