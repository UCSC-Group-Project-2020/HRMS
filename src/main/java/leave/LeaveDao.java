package leave;
import DBconnection.DBconn;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.text.ParseException;
public class LeaveDao {
    public List<LeaveBean> allLeaves(String toDateS,String fromDateS){
        List<LeaveBean> leaveList = new ArrayList<LeaveBean>();

        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        String empId,leaveId,toDate,fromDate,appDate,status,authorizedPersonId,reson;


        if(toDateS==null || fromDateS==null){
            toDateS="9999-12-31";
            fromDateS="0000-01-01";
        }
        try
        {
            con = DBconn.getConnection();
            statement = con.createStatement();

            rs = statement.executeQuery("SELECT * FROM `leavedetails` WHERE leaveFrom >= '"+fromDateS+"' and leaveTo <='"+toDateS+"' ORDER BY `leavedetails`.`appliedDate`  ASC");
             while (rs.next())
            {

                LeaveBean leave = new LeaveBean();
                empId=rs.getString("empId");
                leaveId= rs.getString("leaveId");
                appDate = rs.getString("appliedDate");
                fromDate=rs.getString("leaveFrom");
                toDate=rs.getString("leaveTo");
                status=rs.getString("status");

                if(status.equals("0")){
                    status="Rejected";
                }else if(status.equals("1")){
                    status="Pending";
                }else if(status.equals("2")){
                    status="Approved";
                }
                authorizedPersonId=rs.getString("authorizedPerson");
                reson=rs.getString("reason");

                leave.setEmpId(empId);
                leave.setLeaveId(leaveId);
                leave.setappDate(appDate);
                leave.setfromDate(fromDate);
                leave.settoDate(toDate);
                leave.setReason(reson);
                leave.setstatus(status);
                leave.setAuthorizedPersonId(authorizedPersonId);

                leaveList.add(leave);


            }
            con.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return leaveList;
    }
    public List<LeaveBean> myLeaves(String empId,String toDateS,String fromDateS){
        List<LeaveBean> leaveList = new ArrayList<LeaveBean>();

        Connection con = null;
        Statement statement = null;
        ResultSet rs1,rs2 = null;


        String leaveId,toDate,fromDate,appDate,status,authorizedPersonId,reson;

        if(toDateS==null || fromDateS==null){
            toDateS="9999-12-31";
        fromDateS="0000-01-01";
        }
        try
        {
            con = DBconn.getConnection();
            statement = con.createStatement();
            rs1 = statement.executeQuery("SELECT * FROM `leavedetails` WHERE leaveFrom >= '"+fromDateS+"' and leaveTo <= '"+toDateS+"' and empId="+empId+" ORDER BY `leavedetails`.`appliedDate` ASC");
            while (rs1.next())
            {
                LeaveBean leave = new LeaveBean();
                leaveId= rs1.getString("leaveId");
                appDate = rs1.getString("appliedDate");
                fromDate=rs1.getString("leaveFrom");
                toDate=rs1.getString("leaveTo");
                status=rs1.getString("status");

                if(status.equals("0")){
                    status="Rejected";
                }else if(status.equals("1")){
                    status="Pending";
                }else if(status.equals("2")){
                    status="Approved";
                }
                authorizedPersonId=rs1.getString("authorizedPerson");
                reson=rs1.getString("reason");


                leave.setLeaveId(leaveId);
                leave.setappDate(appDate);
                leave.setfromDate(fromDate);
                leave.settoDate(toDate);
                leave.setReason(reson);
                leave.setstatus(status);
                leave.setAuthorizedPersonId(authorizedPersonId);

                leaveList.add(leave);
                PreparedStatement st3= con.prepareStatement("UPDATE notification SET leaveResponseFlag=?  " +
                        "WHERE receiverId=?");

                st3.setInt(1, 0);
                st3.setString(2, empId);

                st3.executeUpdate();
            }
            con.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return leaveList;
    }
    public List<LeaveBean> searchEmployeeToApproveLeave(){
        List<LeaveBean> leaveList = new ArrayList<LeaveBean>();

        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        String fName,lName,NIC,empId;
        try
        {
            con = DBconn.getConnection();
            statement = con.createStatement();

            rs = statement.executeQuery("SELECT user.empId, user.firstName, user.lastName, " +
                    "user.NIC ,userprivilege.leavesApprovalRejection " +
                    "FROM user INNER JOIN userprivilege ON " +
                    "user.empId = userprivilege.empId " +
                    "WHERE userprivilege.leavesApprovalRejection = 1");

            while (rs.next())
            {
                LeaveBean leave = new LeaveBean();
                empId = rs.getString("empId");
                fName = rs.getString("firstName");
                lName = rs.getString("lastName");
                NIC = rs.getString("NIC");


                leave.setEmpId(empId);
                leave.setFName(fName);
                leave.setLName(lName);
                leave.setNIC(NIC);
                leaveList.add(leave);

            }
            con.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return leaveList;
    }
    public List<LeaveBean> employeeLeaveRequests(String empId) {
        List<LeaveBean> leaveRequestList = new ArrayList<LeaveBean>();
        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        String fName,lName,reson,leaveId,fromDate,toDate,authorizedPersonId;
int remainingLeave,annualLeaves,takenLeaves;
        try
        {
            con = DBconn.getConnection();
            statement = con.createStatement();

            rs = statement.executeQuery("SELECT user.empId, user.firstName,user.lastName ,leavedetails.* ,employeeleavedetails.*  FROM user INNER JOIN employeeleavedetails ON user.empId = employeeleavedetails.empId  INNER JOIN leavedetails ON user.empId = leavedetails.empId WHERE leavedetails.status = 1 and leavedetails.authorizedPerson ="+empId);



            while (rs.next())
            {
                LeaveBean leave = new LeaveBean();
                leaveId = rs.getString("leaveId");
                fName = rs.getString("firstName");
                fromDate=rs.getString("leaveFrom");
                toDate=rs.getString("leaveTo");
                lName = rs.getString("lastName");
                reson = rs.getString("reason");
                remainingLeave=rs.getInt("remainingLeaves");
                annualLeaves= rs.getInt("totalLeaves");
                takenLeaves=rs.getInt("takenLeaves");
                authorizedPersonId=rs.getString("authorizedPerson");

                leave.setAuthorizedPersonId(authorizedPersonId);
                leave.setFName(fName);
                leave.setLName(lName);
                leave.setfromDate(fromDate);
                leave.settoDate(toDate);
                leave.setReason(reson);
                leave.setLeaveId(leaveId);
                leave.setRemainingleaves(remainingLeave);
                leave.setTakenLeaves(takenLeaves);
                leave.setAnnualleaves(annualLeaves);
                leaveRequestList.add(leave);

            }
            con.close();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return leaveRequestList;
    }


    public String approveOrRejectLeave(LeaveBean newLeave) {
        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;
        String status, authorizedPersonId, leaveId, empId = null, res, fromDate = null, toDate = null, appDate = null;
        int totalLeaves = 0, remainingLeaves = 0, takenLeaves = 0;

        leaveId = newLeave.getLeaveId();
        status = newLeave.getstatus();
        authorizedPersonId = newLeave.getAuthorizedPersonId();



        try {
            con = DBconn.getConnection();
            statement = con.createStatement();

            rs = statement.executeQuery("SELECT leavedetails.*, employeeleavedetails.* FROM leavedetails INNER join employeeleavedetails ON leavedetails.empId=employeeleavedetails.empId where leavedetails.leaveId = " + leaveId);

            if (rs.next()) {

                empId = rs.getString("empId");
                fromDate = rs.getString("leaveFrom");
                toDate = rs.getString("leaveTo");
                appDate = rs.getString("appliedDate");
                totalLeaves = rs.getInt("totalLeaves");
                remainingLeaves = rs.getInt("remainingLeaves");
                takenLeaves = rs.getInt("takenLeaves");

            }
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (0 >= remainingLeaves) {
            status = "0";
        }

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

            try {

                Date d1 = sdf.parse(fromDate);
                Date d2 = sdf.parse(toDate);
                Date d3 = sdf.parse(appDate);


                long diffOfAppandFrom = d3.getTime() - d1.getTime();

                Calendar c1 = Calendar.getInstance();
                c1.setTime(d1);

                int w1 = c1.get(Calendar.DAY_OF_WEEK);
                c1.add(Calendar.DAY_OF_WEEK, -w1);

                Calendar c2 = Calendar.getInstance();
                c2.setTime(d2);


                int w2 = c2.get(Calendar.DAY_OF_WEEK);
                c2.add(Calendar.DAY_OF_WEEK, -w2);

                long days = (c2.getTimeInMillis() - c1.getTimeInMillis()) / (1000 * 60 * 60 * 24);
                long daysWithoutWeekendDays = days - (days * 2 / 7);


                if (w1 == Calendar.SUNDAY && w2 != Calendar.SATURDAY) {
                    w1 = Calendar.MONDAY;
                } else if (w1 == Calendar.SATURDAY && w2 != Calendar.SUNDAY) {
                    w1 = Calendar.FRIDAY;
                }

                if (w2 == Calendar.SUNDAY) {
                    w2 = Calendar.MONDAY;
                } else if (w2 == Calendar.SATURDAY) {
                    w2 = Calendar.FRIDAY;
                }
                int numberOfLeaves = (int) (daysWithoutWeekendDays - w1 + w2);

                if(numberOfLeaves>remainingLeaves){
                    System.out.println(numberOfLeaves+">"+remainingLeaves);
                    status="0";
                }

                long diffOfAppandFromDay = (diffOfAppandFrom / (1000 * 60 * 60 * 24)) % 365;
                if(status.equals("0")){
                    //status is rejected
                    numberOfLeaves = 0;
                    remainingLeaves = remainingLeaves - numberOfLeaves;
                    takenLeaves = numberOfLeaves + takenLeaves;

                }
                else if (diffOfAppandFromDay > 0) {
                    //Applied Date > Fr'om Date
                    System.out.println("Applied Date > Fr'om Date");
                    numberOfLeaves = 0;
                    remainingLeaves = remainingLeaves - numberOfLeaves;
                    takenLeaves = numberOfLeaves + takenLeaves;
                    status = "0";
                } else if (numberOfLeaves < 0) {
                    //From Date > To Date
                    System.out.println("From Date > To Date");
                    numberOfLeaves = 0;
                    remainingLeaves = remainingLeaves - numberOfLeaves;
                    takenLeaves = numberOfLeaves + takenLeaves;
                    status = "0";
                } else {
                    remainingLeaves = remainingLeaves - numberOfLeaves;
                    takenLeaves = numberOfLeaves + takenLeaves;
                }

            System.out.println(" numberOfLeaves ==" + numberOfLeaves);

        }catch(ParseException e){
            e.printStackTrace();
        }

        try {
            con = DBconn.getConnection();
            PreparedStatement st1 = con.prepareStatement("update leavedetails set status=?  where leaveId=" + leaveId);
            st1.setInt(1, Integer.parseInt(status));
            st1.executeUpdate();

            PreparedStatement st2 = con.prepareStatement("UPDATE employeeleavedetails SET remainingLeaves=? , takenLeaves=? WHERE empId=?");
            st2.setInt(1,remainingLeaves);
            st2.setInt(2,takenLeaves);
            st2.setString(3, empId);
            st2.executeUpdate();

            PreparedStatement st3 = con.prepareStatement("UPDATE notification SET leaveResponseFlag=? WHERE receiverId=?");
            st3.setInt(1, 1);
            st3.setString(2, empId);
            st3.executeUpdate();


        }catch (SQLException throwables) {
                throwables.printStackTrace();
                res ="UnSuccessful";
            }

        try {
            con = DBconn.getConnection();
            statement = con.createStatement();
            rs = statement.executeQuery("SELECT user.empId, user.firstName,user.lastName ,leavedetails.* ,leavedetails.reason FROM user INNER JOIN leavedetails ON user.empId = leavedetails.empId WHERE leavedetails.status = 1 and leavedetails.authorizedPerson ="+authorizedPersonId);

            boolean i= rs.next();

            if(i){}
            else {
                PreparedStatement st3 = con.prepareStatement("UPDATE notification SET leaveFlag=? " +
                        " WHERE receiverId=?");

                st3.setInt(1, 0);
                st3.setString(2, authorizedPersonId);

                st3.executeUpdate();
            }

            res ="Successful";

        } catch (SQLException throwables) {
            throwables.printStackTrace();

            res ="UnSuccessful";
        }
        return res;
    }
    public String addplyLeave(LeaveBean newLeave) {
        Connection con = null;
        Statement statement = null;
        ResultSet rs = null;

        String toDate,res, authorizedPersonId, fromDate, appDate,reason,empId,leaveId;


          empId = newLeave.getEmpId();
         leaveId = newLeave.getLeaveId();

        toDate = newLeave.gettoDate();
        fromDate = newLeave.getfromDate();
        appDate = newLeave.getappDate();
        authorizedPersonId = newLeave.getAuthorizedPersonId();
        reason = newLeave.getReason();


        try {
            con = DBconn.getConnection();
            PreparedStatement st1 = con.prepareStatement("INSERT INTO leavedetails VALUES(?,?,?,?,?,?,?,?)");

            st1.setString(1, leaveId);
            st1.setString(2, empId);
            st1.setString(3, appDate);
            st1.setString(4,fromDate);
            st1.setString(5, toDate);
            st1.setString(6, reason);
            st1.setInt(7, 1);
            //0-rejected
            //1-pending
            //2-approve

            st1.setString(8, authorizedPersonId);

            st1.executeUpdate();
            PreparedStatement st3= con.prepareStatement("UPDATE notification SET leaveFlag=?  " +
                    "WHERE receiverId=?");

            st3.setInt(1, 1);
            st3.setString(2, authorizedPersonId);

            st3.executeUpdate();

            res ="Successful";

        } catch (SQLException throwables) {
            throwables.printStackTrace();


            res ="Unsuccessful";
        }
        return res;
    }
}