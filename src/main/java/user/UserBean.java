package user;

public class UserBean
{
    private String empId,fName,lName,NIC,dob,address,email,password,contact;
    private int totLeaves,remLeaves,fingerprint,empAdd,empDel,postAdd,postDel,postView,chatSys,applyLeave,decisionLeave,salaryManage,customizeData,editPersonalDetails,giveComSug,viewComSug,viewMyAttend,viewAllAttend,viewMyLeaves,viewAllLeaves,viewMySalary,viewAllSalary,genReport;;
    private float basicSal,otRate;
    //private boolean empAdd,empDel,postAdd,postDel,postView,chatSys,applyLeave,decisionLeave,attendanceManage,salaryManage,customizeData,editPersonalDetails,giveComSug,viewComSug,viewMyAttend,viewAllAttend,viewMyLeaves,viewAllLeaves,viewMySalary,viewAllSalary,genReport;

    public String getEmpId()
    {
        return empId;
    }
    public void setEmpId(String empId)
    {
        this.empId = empId;
    }

    public String getFName()
    {
        return fName;
    }
    public void setFName(String fName)
    {
        this.fName = fName;
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
    public String getDOB()
    {
        return dob;
    }
    public void setDOB(String dob)
    {
        this.dob = dob;
    }
    public String getAddress()
    {
        return address;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }
    public String getEmail()
    {
        return email;
    }
    public void setEmail(String email)
    {
        this.email = email;
    }
    public String getPassword()
    {
        return password;
    }
    public void setPassword(String password)
    {
        this.password = password;
    }
    public String getContact()
    {
        return contact;
    }
    public void setContact(String contact)
    {
        this.contact = contact;
    }
    public int getTotalLeaves()
    {
        return totLeaves;
    }
    public void setTotalLeaves(int totLeaves)
    {
        this.totLeaves = totLeaves;
    }
    public int getRemLeaves()
    {
        return remLeaves;
    }
    public void setRemLeaves(int remLeaves)
    {
        this.remLeaves = remLeaves;
    }
    public int getFingerprint()
    {
        return fingerprint;
    }
    public void setFingerprint(int fingerprint)
    {
        this.fingerprint = fingerprint;
    }
    public float getBasicSal()
    {
        return basicSal;
    }
    public void setBasicSal(float basicSal)
    {
        this.basicSal = basicSal;
    }
    public float getOtRate()
    {
        return otRate;
    }
    public void setOtRate(float otRate)
    {
        this.otRate = otRate;
    }
    public int getEmpAdd()
    {
        return empAdd;
    }
    public void setEmpAdd(int empAdd)
    {
        this.empAdd =  empAdd;
    }
    public int getEmpDel()
    {
        return empDel;
    }
    public void setEmpDel(int empDel)
    {
        this.empDel =  empDel;
    }
    public int getPostAdd()
    {
        return postAdd;
    }
    public void setPostAdd(int postAdd)
    {
        this.postAdd =  postAdd;
    }
    public int getPostDel()
    {
        return postDel;
    }
    public void setPostDel(int postDel)
    {
        this.postDel =  postDel;
    }
    public int getPostView()
    {
        return postView;
    }
    public void setPostView(int postView)
    {
        this.postView =  postView;
    }
    public int getChatSys()
    {
        return chatSys;
    }
    public void setChatSys(int chatSys)
    {
        this.chatSys =  chatSys;
    }
    public int getApplyLeave()
    {
        return applyLeave;
    }
    public void setApplyLeave(int applyLeave)
    {
        this.applyLeave =  applyLeave;
    }
    public int getDecisionLeave()
    {
        return decisionLeave;
    }
    public void setDecisionLeave(int decisionLeave)
    {
        this.decisionLeave =  decisionLeave;
    }
    public int getSalaryManage()
    {
        return salaryManage;
    }
    public void setSalaryManage(int salaryManage)
    {
        this.salaryManage =  salaryManage;
    }
    public int getCustomizeData()
    {
        return customizeData;
    }
    public void setCustomizeData(int customizeData)
    {
        this.customizeData =  customizeData;
    }
    public int getEditPersonalDetails()
    {
        return editPersonalDetails;
    }
    public void setEditPersonalDetails(int editPersonalDetails)
    {
        this.editPersonalDetails =  editPersonalDetails;
    }
    public int getGiveComSug()
    {
        return giveComSug;
    }
    public void setGiveComSug(int giveComSug)
    {
        this.giveComSug =  giveComSug;
    }
    public int getViewComSug()
    {
        return viewComSug;
    }
    public void setViewComSug(int viewComSug)
    {
        this.viewComSug =  viewComSug;
    }
    public int getViewMyAttend()
    {
        return viewMyAttend;
    }
    public void setViewMyAttend(int viewMyAttend)
    {
        this.viewMyAttend =  viewMyAttend;
    }
    public int getViewAllAttend()
    {
        return viewAllAttend;
    }
    public void setViewAllAttend(int viewAllAttend)
    {
        this.viewAllAttend =  viewAllAttend;
    }
    public int getViewMyLeaves()
    {
        return viewMyLeaves;
    }
    public void setViewMyLeaves(int viewMyLeaves)
    {
        this.viewMyLeaves =  viewMyLeaves;
    }
    public int getViewAllLeaves()
    {
        return viewAllLeaves;
    }
    public void setViewAllLeaves(int viewAllLeaves)
    {
        this.viewAllLeaves =  viewAllLeaves;
    }
    public int getViewMySalary()
    {
        return viewMySalary;
    }
    public void setViewMySalary(int viewMySalary)
    {
        this.viewMySalary =  viewMySalary;
    }
    public int getViewAllSalary()
    {
        return viewAllSalary;
    }
    public void setViewAllSalary(int viewAllSalary)
    {
        this.viewAllSalary =  viewAllSalary;
    }
    public int getGenReport()
    {
        return genReport;
    }
    public void setGenReport(int genReport)
    {
        this.genReport =  genReport;
    }

    /*public boolean getEmpAdd()
    {
        return empAdd;
    }
    public void setEmpAdd(boolean empAdd)
    {
        this.empAdd =  empAdd;
    }
    public boolean getEmpDel()
    {
        return empDel;
    }
    public void setEmpDel(boolean empDel)
    {
        this.empDel =  empDel;
    }
    public boolean getPostAdd()
    {
        return postAdd;
    }
    public void setPostAdd(boolean postAdd)
    {
        this.postAdd =  postAdd;
    }
    public boolean getPostDel()
    {
        return postDel;
    }
    public void setPostDel(boolean postDel)
    {
        this.postDel =  postDel;
    }
    public boolean getPostView()
    {
        return postView;
    }
    public void setPostView(boolean postView)
    {
        this.postView =  postView;
    }
    public boolean getChatSys()
    {
        return chatSys;
    }
    public void setChatSys(boolean chatSys)
    {
        this.chatSys =  chatSys;
    }
    public boolean getApplyLeave()
    {
        return applyLeave;
    }
    public void setApplyLeave(boolean applyLeave)
    {
        this.applyLeave =  applyLeave;
    }
    public boolean getDecisionLeave()
    {
        return decisionLeave;
    }
    public void setDecisionLeave(boolean decisionLeave)
    {
        this.decisionLeave =  decisionLeave;
    }
    public boolean getAttendanceManage()
    {
        return attendanceManage;
    }
    public void setAttendanceManage(boolean attendanceManage)
    {
        this.attendanceManage =  attendanceManage;
    }
    public boolean getSalaryManage()
    {
        return salaryManage;
    }
    public void setSalaryManage(boolean salaryManage)
    {
        this.salaryManage =  salaryManage;
    }
    public boolean getCustomizeData()
    {
        return customizeData;
    }
    public void setCustomizeData(boolean customizeData)
    {
        this.customizeData =  customizeData;
    }
    public boolean getEditPersonalDetails()
    {
        return editPersonalDetails;
    }
    public void setEditPersonalDetails(boolean editPersonalDetails)
    {
        this.editPersonalDetails =  editPersonalDetails;
    }
    public boolean getGiveComSug()
    {
        return giveComSug;
    }
    public void setGiveComSug(boolean giveComSug)
    {
        this.giveComSug =  giveComSug;
    }
    public boolean getViewComSug()
    {
        return viewComSug;
    }
    public void setViewComSug(boolean viewComSug)
    {
        this.viewComSug =  viewComSug;
    }
    public boolean getViewMyAttend()
    {
        return viewMyAttend;
    }
    public void setViewMyAttend(boolean viewMyAttend)
    {
        this.viewMyAttend =  viewMyAttend;
    }
    public boolean getViewAllAttend()
    {
        return viewAllAttend;
    }
    public void setViewAllAttend(boolean viewAllAttend)
    {
        this.viewAllAttend =  viewAllAttend;
    }
    public boolean getViewMyLeaves()
    {
        return viewMyLeaves;
    }
    public void setViewMyLeaves(boolean viewMyLeaves)
    {
        this.viewMyLeaves =  viewMyLeaves;
    }
    public boolean getViewAllLeaves()
    {
        return viewAllLeaves;
    }
    public void setViewAllLeaves(boolean viewAllLeaves)
    {
        this.viewAllLeaves =  viewAllLeaves;
    }
    public boolean getViewViewMySalary()
    {
        return viewMySalary;
    }
    public void setViewMySalary(boolean viewMySalary)
    {
        this.viewMySalary =  viewMySalary;
    }
    public boolean getViewAllSalary()
    {
        return viewAllSalary;
    }
    public void setViewAllSalary(boolean viewAllSalary)
    {
        this.viewAllSalary =  viewAllSalary;
    }
    public boolean getGenReport()
    {
        return genReport;
    }
    public void setGenReport(boolean genReport)
    {
        this.genReport =  genReport;
    }*/
}
