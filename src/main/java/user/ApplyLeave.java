package user;

import leave.LeaveBean;
import leave.LeaveDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ApplyLeave extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        String empId,leaveId,authorizedPersonId,toDate,fromDate,appDate,reason;

        int Annualleaves,Remainingleaves,takenLeaves;


        empId=request.getParameter("empId");
        leaveId=request.getParameter("leaveId");
        authorizedPersonId=request.getParameter("authorizedPersonId");
        toDate=request.getParameter("toDate");
        fromDate=request.getParameter("fromDate");
        appDate=request.getParameter("appliedDate");
        reason=request.getParameter("reason");

        Annualleaves=Integer.valueOf(request.getParameter("Annualleaves"));
        Remainingleaves=Integer.valueOf(request.getParameter("Remainingleaves"));
        takenLeaves=Annualleaves-Remainingleaves;


        LeaveBean newleave = new LeaveBean();

        newleave.setEmpId(empId);
        newleave.setLeaveId(leaveId);
        newleave.settoDate(toDate);
        newleave.setfromDate(fromDate);
        newleave.setappDate(appDate);
        newleave.setAuthorizedPersonId(authorizedPersonId);
        newleave.setReason(reason);
        newleave.setAnnualleaves(Annualleaves);
        newleave.setRemainingleaves(Remainingleaves);
        newleave.setTakenLeaves(takenLeaves);

        LeaveDao appLeave = new LeaveDao();
        String res = appLeave.addplyLeave(newleave);
        request.setAttribute("result",res);
        if(res.equals("Successful"))
        {
            System.out.println("Successfully Registered.");
        }
        else
        {
            System.out.println("Error  In Appling");
        }
        request.getRequestDispatcher("/applyForLeave.jsp").forward(request, response);
    }
}
