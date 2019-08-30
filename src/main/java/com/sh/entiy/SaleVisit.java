package com.sh.entiy;

import java.util.Date;

public class SaleVisit {
    private String visitId;

    private Long visitCustId;

    private Long visitUserId;

    //@DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date visitTime;

    private String visitInterviewee;

    private String visitAddr;

    private String visitDetail;

    //@DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date visitNexttime;

    private Customer customer;

    private Employee employee;

    private SysUser sysUser;


    @Override
    public String toString() {
        return "SaleVisit{" +
                "visitId='" + visitId + '\'' +
                ", visitCustId=" + visitCustId +
                ", visitUserId=" + visitUserId +
                ", visitTime=" + visitTime +
                ", visitInterviewee='" + visitInterviewee + '\'' +
                ", visitAddr='" + visitAddr + '\'' +
                ", visitDetail='" + visitDetail + '\'' +
                ", visitNexttime=" + visitNexttime +
                ", customer=" + customer +
                ", employee=" + employee +
                ", sysUser=" + sysUser +
                '}';
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public SysUser getSysUser() {
        return sysUser;
    }

    public void setSysUser(SysUser sysUser) {
        this.sysUser = sysUser;
    }

    public String getVisitId() {
        return visitId;
    }

    public void setVisitId(String visitId) {
        this.visitId = visitId;
    }

    public Long getVisitCustId() {
        return visitCustId;
    }

    public void setVisitCustId(Long visitCustId) {
        this.visitCustId = visitCustId;
    }

    public Long getVisitUserId() {
        return visitUserId;
    }

    public void setVisitUserId(Long visitUserId) {
        this.visitUserId = visitUserId;
    }

    public Date getVisitTime() {
        return visitTime;
    }

    public void setVisitTime(Date visitTime) {
        this.visitTime = visitTime;
    }

    public String getVisitInterviewee() {
        return visitInterviewee;
    }

    public void setVisitInterviewee(String visitInterviewee) {
        this.visitInterviewee = visitInterviewee;
    }

    public String getVisitAddr() {
        return visitAddr;
    }

    public void setVisitAddr(String visitAddr) {
        this.visitAddr = visitAddr;
    }

    public String getVisitDetail() {
        return visitDetail;
    }

    public void setVisitDetail(String visitDetail) {
        this.visitDetail = visitDetail;
    }

    public Date getVisitNexttime() {
        return visitNexttime;
    }

    public void setVisitNexttime(Date visitNexttime) {
        this.visitNexttime = visitNexttime;
    }
}