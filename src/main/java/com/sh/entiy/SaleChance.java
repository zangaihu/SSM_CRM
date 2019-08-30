package com.sh.entiy;

import java.util.Date;

public class SaleChance {
    private Long chanId;

    private String chanName;

    private Long chanCustId;

    private Long chanUserId;

    private Integer chanMoney;

    private String chanType;

    private String chanSource;

    private String chanState;

    private Date chanLinktime;

    private String chanDesc;

    private  Customer customer;
    private Employee employee;

    private  SysUser sysUser;


    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    @Override
    public String toString() {
        return "SaleChance{" +
                "chanId=" + chanId +
                ", chanName='" + chanName + '\'' +
                ", chanCustId=" + chanCustId +
                ", chanUserId=" + chanUserId +
                ", chanMoney=" + chanMoney +
                ", chanType='" + chanType + '\'' +
                ", chanSource='" + chanSource + '\'' +
                ", chanState='" + chanState + '\'' +
                ", chanLinktime=" + chanLinktime +
                ", chanDesc='" + chanDesc + '\'' +
                ", customer=" + customer +
                ", sysUser=" + sysUser +
                '}';
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

    public Long getChanId() {
        return chanId;
    }

    public void setChanId(Long chanId) {
        this.chanId = chanId;
    }

    public String getChanName() {
        return chanName;
    }

    public void setChanName(String chanName) {
        this.chanName = chanName;
    }

    public Long getChanCustId() {
        return chanCustId;
    }

    public void setChanCustId(Long chanCustId) {
        this.chanCustId = chanCustId;
    }

    public Long getChanUserId() {
        return chanUserId;
    }

    public void setChanUserId(Long chanUserId) {
        this.chanUserId = chanUserId;
    }

    public Integer getChanMoney() {
        return chanMoney;
    }

    public void setChanMoney(Integer chanMoney) {
        this.chanMoney = chanMoney;
    }

    public String getChanType() {
        return chanType;
    }

    public void setChanType(String chanType) {
        this.chanType = chanType;
    }

    public String getChanSource() {
        return chanSource;
    }

    public void setChanSource(String chanSource) {
        this.chanSource = chanSource;
    }

    public String getChanState() {
        return chanState;
    }

    public void setChanState(String chanState) {
        this.chanState = chanState;
    }

    public Date getChanLinktime() {
        return chanLinktime;
    }

    public void setChanLinktime(Date chanLinktime) {
        this.chanLinktime = chanLinktime;
    }

    public String getChanDesc() {
        return chanDesc;
    }

    public void setChanDesc(String chanDesc) {
        this.chanDesc = chanDesc;
    }
}