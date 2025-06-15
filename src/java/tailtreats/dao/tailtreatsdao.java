/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tailtreats.dao;

import java.sql.Timestamp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import tailtreats.model.tailtreatsmodel;

/**
 *
 * @author Eliseio
 */
public class tailtreatsdao {

    public ArrayList<tailtreatsmodel> getuserList() {
        ArrayList<tailtreatsmodel> userList = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM usertable";
        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("user_password");
                String firstname = rs.getString("firstname");
                String middlename = rs.getString("middlename");
                String lastname = rs.getString("lastname");
                String address = rs.getString("address");
                String birthday = rs.getString("birthday");
                String mobilenumber = rs.getString("mobilenumber");
                String role = rs.getString("accountType");
                tailtreatsmodel user = new tailtreatsmodel(id, username, password, firstname, middlename, lastname, address, birthday, mobilenumber, role);
                userList.add(user);
                

            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("getuserList Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return userList;
    }

    public boolean createUser(tailtreatsmodel user) {

        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            String query = "INSERT INTO usertable(username, user_password, firstname, middlename, lastname, address, birthday, mobilenumber, accountType) VALUES (?,?,?,?,?,?,?,?,?)";
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);

            ps.setString(1, user.getusername());
            ps.setString(2, user.getpassword());
            ps.setString(3, user.getfirstname());
            ps.setString(4, user.getmiddlename());
            ps.setString(5, user.getlastname());
            ps.setString(6, user.getaddress());
            ps.setString(7, user.getbirthday());
            ps.setString(8, user.getmobilenumber());
            ps.setString(9, user.getrole());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
                JOptionPane.showMessageDialog(null, "Account creation is successful.");
            }

            conn.close();

        } catch (SQLException e) {
            System.out.println("createUser Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("createUser Error: " + e);
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("createEmployee Error: " + e);
                }
            }

        }
        return success;
    }

    public boolean updateUser(tailtreatsmodel update) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "UPDATE usertable SET username = ?, user_password =?, firstname =?, middlename =?, lastname =?, address =?, birthday =?, mobilenumber =?";
        query += "WHERE id = ?";

        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, update.getusername());
            ps.setString(2, update.getpassword());
            ps.setString(3, update.getfirstname());
            ps.setString(4, update.getmiddlename());
            ps.setString(5, update.getlastname());
            ps.setString(6, update.getaddress());
            ps.setString(7, update.getbirthday());
            ps.setString(8, update.getmobilenumber());
            ps.setInt(9, update.getid());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
                JOptionPane.showMessageDialog(null, "Successfully updated account details.");
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("updateUser Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return success;
    }

    public tailtreatsmodel getuserDetails(int id) {
        tailtreatsmodel userDetails = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM usertable WHERE id =?";

        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                String username = rs.getString("username");
                String password = rs.getString("user_password");
                String firstname = rs.getString("firstname");
                String middlename = rs.getString("middlename");
                String lastname = rs.getString("lastname");
                String address = rs.getString("address");
                String birthday = rs.getString("birthday");
                String mobilenumber = rs.getString("mobilenumber");
                String role = rs.getString("accountType");
                userDetails = new tailtreatsmodel(id, username, password, firstname, middlename, lastname, address, birthday, mobilenumber, role);
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("createUser Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("createUser Error: " + e);
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("createEmployee Error: " + e);
                }
            }

        }
        return userDetails;
    }

    public boolean deleteUser(tailtreatsmodel delete) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "DELETE FROM usertable WHERE id = ? ";

        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, delete.getid());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
                JOptionPane.showMessageDialog(null, "Account deleted.");
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("editUser Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return success;
    }

    public tailtreatsmodel getloginDetails(String username, String password) {
        tailtreatsmodel loginDetails = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM usertable WHERE username = ? and user_password = ? ";

        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                username = rs.getString("username");
                password = rs.getString("user_password");
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");
                String role = rs.getString("accountType");
                loginDetails = new tailtreatsmodel(id, username, password, firstname, lastname, role);
                
            }
            conn.close();

        } catch (SQLException e) {
            System.out.println("getloginDetails Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return loginDetails;
    }

    public tailtreatsmodel accountverDetails(String username) {
        tailtreatsmodel loginDetails = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM usertable WHERE username = ?";

        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                username = rs.getString("username");
                String password = rs.getString("user_password");

                loginDetails = new tailtreatsmodel(id, username, password);
            }
            conn.close();

        } catch (SQLException e) {
            System.out.println("accountverDetails Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return loginDetails;
    }

    public boolean changePassword(int id, String username, String password) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "UPDATE usertable SET user_password =? WHERE id=? and username = ?";

        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setInt(2, id);
            ps.setString(3, username);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
                JOptionPane.showMessageDialog(null, "Password successfully changed!");
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("changePassword Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return success;
    }

    public boolean updateStatus(tailtreatsmodel update) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "UPDATE usertable SET loginStatus = 'Online' WHERE id = ? and username = ?";

        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, update.getid());
            ps.setString(2, update.getusername());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("updateUser Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return success;
    }

    public boolean removeStatus(int id, String username, String status) {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "UPDATE usertable SET loginStatus = ? WHERE id = ? and username = ?";

        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setInt(2, id);
            ps.setString(3, username);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("updateUser Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return success;
    }

    //LOCKED ACCOUNT
    public boolean isAccountLocked(String username) throws ClassNotFoundException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        boolean isLocked = false;
        String query = "SELECT accountlocked, locktime, lockduration FROM usertable WHERE username = ?";

        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                isLocked = rs.getBoolean("accountlocked");
                if (isLocked) {
                    Timestamp lockTime = rs.getTimestamp("locktime");
                    int lockDuration = rs.getInt("lockduration");
                    ZonedDateTime lockDateTime = lockTime.toInstant().atZone(ZoneId.of("Asia/Manila"));
                    ZonedDateTime currentDateTime = ZonedDateTime.now(ZoneId.of("Asia/Manila"));
                    long minutesPassed = ChronoUnit.MINUTES.between(lockDateTime, currentDateTime);
                    if (minutesPassed >= lockDuration) {
                        unlockAccount(username);
                        isLocked = false;
                    }
                }
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("isAccountLocked Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
        }
        return isLocked;
    }

    public tailtreatsmodel timer(String username) {
        tailtreatsmodel timer = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT locktime FROM usertable WHERE username = ?";

        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                Timestamp lockTime = rs.getTimestamp("locktime");
                ZonedDateTime lockDateTime = lockTime.toInstant().atZone(ZoneId.of("Asia/Manila"));
                ZonedDateTime currentDateTime = ZonedDateTime.now(ZoneId.of("Asia/Manila"));
                long minutesPassed = ChronoUnit.MINUTES.between(lockDateTime, currentDateTime);
                long secondsPassed = ChronoUnit.SECONDS.between(lockDateTime, currentDateTime);
                
                timer = new tailtreatsmodel(minutesPassed, secondsPassed);

            }
        } catch (SQLException e) {
            System.out.println("updateUser Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }

        }
        return timer;
    }

    public void incrementFailedAttempts(String username) {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = connectionpool.getConnection();
            String query = "UPDATE usertable SET failedattempts = failedattempts + 1 WHERE username = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println("increaseFailedAttempts Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
        }
    }

    public void lockAccount(String username) {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = connectionpool.getConnection();
            String query = "UPDATE usertable SET accountlocked = TRUE, locktime = CURRENT_TIMESTAMP WHERE username = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("isAccountLocked Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
        }
    }

    private void unlockAccount(String username) {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = connectionpool.getConnection();
            String sql = "UPDATE usertable SET accountlocked = FALSE, failedattempts = 0, locktime = NULL WHERE username = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            int rowsUpdated = ps.executeUpdate();
            System.out.println("Unlock account for " + username + ": " + (rowsUpdated > 0 ? "success" : "failure"));
        } catch (SQLException e) {
            System.out.println("unlockAccount Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
        }
    }

    public void resetFailedAttempts(String username) {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = connectionpool.getConnection();
            String sql = "UPDATE usertable SET failedattempts = 0 WHERE username = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("resetFailedAttempts Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
        }
    }

    public void setLockDuration(String username, int minutes) {
        Connection conn = null;
        PreparedStatement ps = null;
        minutes = 1;
        try {
            conn = connectionpool.getConnection();
            String sql = "UPDATE usertable SET lockduration = ? WHERE username = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, minutes);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("setLockDuration Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
        }
    }

    public int getFailedAttempts(String username) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int failedAttempts = 0;
        try {
            conn = connectionpool.getConnection();
            String sql = "SELECT failedattempts FROM usertable WHERE username = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                failedAttempts = rs.getInt("failedattempts");
            }
        } catch (SQLException e) {
            System.out.println("getFailedAttempts Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
        }
        return failedAttempts;
    }

    public int getLockDuration(String username) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int lockDuration = 1; // Default lock duration of 15 minutes 
        try {
            conn = connectionpool.getConnection();
            String sql = "SELECT lockduration FROM usertable WHERE username = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            if (rs.next()) {
                lockDuration = rs.getInt("lockduration");
            }
        } catch (SQLException e) {
            System.out.println("getLockDuration Error: " + e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
        }
        return lockDuration;
    }
}
