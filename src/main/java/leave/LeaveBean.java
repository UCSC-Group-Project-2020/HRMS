package leave;

public class LeaveBean {
    private  String empId,leaveId, toDate, senderId,fromDate,appDate,reason,status,empIdNotification;

    private  int Annualleaves,Remainingleaves,takenLeaves;
    private String firstName,lName,NIC;

    public String getFName()
    {
        return firstName;
    }
    public void setEmpIdNotification(String empIdNotification)
    {

        this.empIdNotification = empIdNotification;
    }

    public String getEmpIdNotification()
    {
        return empIdNotification;
    }
    public void setFName(String firstName)
    {

        this.firstName = firstName;
    }

    public String getLName()
    {
        return lName;
    }
    public void setLName(String lName)
    {
        this.lName = lName;
    }
    public String getNIC()
    {
        return NIC;
    }
    public void setNIC(String NIC)
    {
        this.NIC = NIC;
    }
    public String getEmpId()
    {
        return empId;
    }
    public void setEmpId(String empId)
    {
        this.empId = empId;
    }

    public void setLeaveId(String leaveId)
    {
         this.leaveId=leaveId;
    }
    public String getLeaveId()
    {
        return leaveId;
    }
    public String getAuthorizedPersonId()
    {
        return senderId;
    }
    public void setAuthorizedPersonId(String senderId) {
        this.senderId = senderId;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
    public String getReason(){
        return reason;
    }

    public String gettoDate(){
        return toDate;
    }
    public void settoDate(String toDate) {
        this.toDate = toDate;
    }
    public String getfromDate() {
        return fromDate;
    }
    public void setfromDate(String fromDate) {
        this.fromDate = fromDate;
    }
    public String getappDate() {
        return appDate;
    }
    public void setappDate(String appDate)
    {
        this.appDate = appDate;
    }

    public int getAnnualleaves()
    {
        return Annualleaves;
    }
    public void setAnnualleaves(int Annualleaves)
    {
        this.Annualleaves = Annualleaves;
    }

    public int getRemainingleaves()
    {
        return Remainingleaves;
    }
    public void setRemainingleaves(int Remainingleaves)
    {
        this.Remainingleaves = Remainingleaves;
    }

    public int getTakenLeaves()
    {
        return takenLeaves;
    }
    public void setTakenLeaves(int takenLeaves)
    {
        this.takenLeaves = takenLeaves;
    }

    public String getstatus() {
        return status;
    }
    public void setstatus(String status) {
        this.status = status;
    }
}
