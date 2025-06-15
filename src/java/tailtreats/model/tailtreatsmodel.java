/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tailtreats.model;

import java.sql.Timestamp;


/**
 *
 * @author Eliseio
 */
public class tailtreatsmodel {

    private int id;
    private String role;
    private String username;
    private String password;
    private String firstname;
    private String middlename;
    private String lastname;
    private String address;
    private String birthday;
    private String mobilenumber;
    private int failedAttempts;
    private boolean accountLocked;
    private Timestamp lockTime;
    private int lockDuration;
    private long minutesPassed;
    private long secondsPassed;
   public tailtreatsmodel () {
       
   }
   public tailtreatsmodel (long minutesPassed, long secondsPassed) {
       this.minutesPassed = minutesPassed;
       this.secondsPassed = secondsPassed;
   }
   public tailtreatsmodel (int id) {
       this.id = id;
   }
   public tailtreatsmodel (String username, String password){
       this.username = username;
       this.password = password;
   }
   public tailtreatsmodel (int id, String username, String password){
       this.id = id;
       this.username = username;
       this.password = password;
   }
   public tailtreatsmodel (String username, String password, String role){
       this.role = role;
       this.username = username;
       this.password = password;
   }
   public tailtreatsmodel (int id, String username, String password, String firstname, String lastname, String role){
       this.id = id;
       this.username = username;
       this.password = password;
       this.role = role;
       this.firstname = firstname;
       this.lastname = lastname;
   }
   public tailtreatsmodel (
            int id, String username, String password, String firstname, String middlename, String lastname, String address, String birthday, String mobilenumber, String role) {
       this(username,password,firstname,middlename,lastname,address,birthday,mobilenumber, role);
       this.id = id;       
    }
   public tailtreatsmodel (
            String username, String password, String firstname, String middlename, String lastname, String address, String birthday, String mobilenumber, String role) {
        this.username = username;
        this.password = password;
        this.firstname = firstname;
        this.middlename = middlename;
        this.lastname = lastname;
        this.address = address;
        this.birthday = birthday;
        this.mobilenumber = mobilenumber;
        this.role = role;
    }
   public int getid() {
        return id;
    }
   
    public void setid(int id) {
        this.id = id;
    }
    public String getrole() {
        return role;
    }
   
    public void setrole(String role) {
        this.role = role;
    }
    public String getusername() {
        return username;
    }

    public void setusername(String username) {
        this.username = username;
    }
    
    public String getpassword() {
        return password;
    }

    public void setpassword(String password) {
        this.password = password;
    }
    
    public String getfirstname() {
        return firstname;
    }

    public void setfirstname(String firstname) {
        this.firstname = firstname;
    }
    
    public String getmiddlename() {
        return middlename;
    }

    public void setmiddlename(String middlename) {
        this.middlename = middlename;
    }
    
    public String getlastname() {
        return lastname;
    }

    public void setlastname(String lastname) {
        this.lastname = lastname;
    }
    
    public String getaddress() {
        return address;
    }

    public void setaddress(String address) {
        this.address = address;
    }
    
    public String getbirthday() {
        return birthday;
    }

    public void setbirthday(String birthday) {
        this.birthday = birthday;
    }
    
    public String getmobilenumber() {
        return mobilenumber;
    }

    public void setmobilenumber(String mobilenumber) {
        this.mobilenumber = mobilenumber;
    }
    public int getFailedAttempts() {
        return failedAttempts;
    }

    public void setFailedAttempts(int failedAttempts) {
        this.failedAttempts = failedAttempts;
    }

    public boolean isAccountLocked() {
        return accountLocked;
    }

    public void setAccountLocked(boolean accountLocked) {
        this.accountLocked = accountLocked;
    }

    public Timestamp getLockTime() {
        return lockTime;
    }

    public void setLockTime(Timestamp lockTime) {
        this.lockTime = lockTime;
    }

    public int getLockDuration() {
        return lockDuration;
    }

    public void setLockDuration(int lockDuration) {
        this.lockDuration = lockDuration;
    }
    public long getminutesPassed() {
        return minutesPassed;
    }

    public void setminutesPassed(long minutesPassed) {
        this.minutesPassed = minutesPassed;
    } 
    public long getsecondsPassed() {
        return secondsPassed;
    }

    public void setsecondsPassed(long secondsPassed) {
        this.secondsPassed = secondsPassed;
    } 
}