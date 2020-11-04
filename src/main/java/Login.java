import login.LoginBean;
import login.LoginDao;
import user.UserBean;
import user.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;

import static javax.swing.JOptionPane.showMessageDialog;

public class Login extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String userName = request.getParameter("un");
        String password = request.getParameter("pass");

        LoginBean loginBean = new LoginBean();

        loginBean.setUserName(userName);
        loginBean.setPassword(password);

        LoginDao loginDao = new LoginDao();

        String userValidate = loginDao.authenticateUser(loginBean);

        if (userValidate.equals("Successful"))
        {
            UserBean privileges = new UserBean();
            privileges.setEmpId(userName);
            UserDao userPrivilegeDao = new UserDao();
            UserBean Uprivileges = userPrivilegeDao.getUserPrivilege(privileges);

            request.setAttribute("empId", Uprivileges.getEmpId());
            request.setAttribute("firstName", Uprivileges.getName());

            request.setAttribute("empAdd",Uprivileges.getEmpAdd());
            request.setAttribute("empDel", Uprivileges.getEmpDel());
            request.setAttribute("postAdd",Uprivileges.getPostAdd());
            request.setAttribute("postDel",Uprivileges.getPostDel());
            request.setAttribute("postView",Uprivileges.getPostView());
            request.setAttribute("chatSys",Uprivileges.getChatSys());
            request.setAttribute("applyLeave",Uprivileges.getApplyLeave());
            request.setAttribute("decisionLeave",Uprivileges.getDecisionLeave());
            request.setAttribute("salaryManage",Uprivileges.getSalaryManage());
            request.setAttribute("customizeData",Uprivileges.getCustomizeData());
            request.setAttribute("editPersonalDetails",Uprivileges.getEditPersonalDetails());
            request.setAttribute("giveComSug",Uprivileges.getGiveComSug());
            request.setAttribute("viewComSug",Uprivileges.getViewComSug());
            request.setAttribute("viewMyAttend",Uprivileges.getViewMyAttend());
            request.setAttribute("viewAllAttend",Uprivileges.getViewAllAttend());
            request.setAttribute("viewMyLeaves",Uprivileges.getViewMyLeaves());
            request.setAttribute("viewAllLeaves",Uprivileges.getViewAllLeaves());
            request.setAttribute("viewMySalary",Uprivileges.getViewMySalary());
            request.setAttribute("viewAllSalary",Uprivileges.getViewAllSalary());
            request.setAttribute("genReport",Uprivileges.getGenReport());

            request.getRequestDispatcher("/sessions.jsp").forward(request, response);

        }
        else
        {System.out.println("ASASS");
            request.setAttribute("login", userValidate);
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }

}
