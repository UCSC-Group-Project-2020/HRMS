import leave.LeaveBean;
import leave.LeaveDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ApproveOrRejectLeave  extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String status,leaveId,empId,toDate,fromDate,authorizedPersonId;

        int Annualleaves,Remainingleaves,takenLeaves;

        status=request.getParameter("status");

        leaveId=request.getParameter("leaveId");
        authorizedPersonId=request.getParameter("empId");
        fromDate=request.getParameter("from");
        toDate=request.getParameter("to");

        LeaveBean newleave = new LeaveBean();

        newleave.setstatus(status);
        newleave.setLeaveId(leaveId);
        newleave.setAuthorizedPersonId(authorizedPersonId);
        newleave.setfromDate(fromDate);
        newleave.settoDate(toDate);

        LeaveDao approveOrRejectLeave = new LeaveDao();
        String res = approveOrRejectLeave.approveOrRejectLeave(newleave);
        request.setAttribute("result",res);
        request.getRequestDispatcher("/approveOrRejectLeave.jsp").forward(request, response);
    }

}
