import leave.LeaveBean;
import leave.LeaveDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class LeaveReports extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        String toDate= request.getParameter("toDate");
        String fromDate= request.getParameter("fromDate");

        LeaveDao empDao = new LeaveDao();
        List<LeaveBean> leaveList = empDao.allLeaves(toDate,fromDate);
        request.setAttribute("leaves",leaveList);

        request.getRequestDispatcher("/leaveReport.jsp").forward(request, response);
    }
}
