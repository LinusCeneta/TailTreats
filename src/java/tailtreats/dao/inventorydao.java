/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tailtreats.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import tailtreats.model.inventorymodel;


/**
 *
 * @author Eliseio
 */
public class inventorydao {
    public ArrayList<inventorymodel> getinventoryList() {
        ArrayList<inventorymodel> inventoryList = new ArrayList<>();
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM inventory";
        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                int productid =rs.getInt("productid");
                String productname = rs.getString("productname");
                String productdesc = rs.getString("productdesc");
                int quantity = rs.getInt("quantity");
                int price = rs.getInt("price");
                
                inventorymodel item =new inventorymodel(productid, productname,productdesc, quantity, price);
                inventoryList.add(item);
                
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("getinventoryList Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("getinventoryList Error: " + e); 
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("getinventoryList Error: " + e); 
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    System.out.println("getinventoryList Error: " + e); 
                }
            }
            
        }
        return inventoryList;
    }
    
    public boolean addItem(inventorymodel item) {
        
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        
        try {
            String query = "INSERT INTO inventory (productname, productdesc, quantity, price) VALUES (?,?,?,?)";
                
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, item.getproductname());
            ps.setString(2, item.getproductdesc());
            ps.setInt(3, item.getquantity());
            ps.setInt(4, item.getprice());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
                JOptionPane.showMessageDialog(null, "Item added!");
            }
            
            conn.close();
            
        } catch (SQLException e) {
            System.out.println("addItem Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("addItem Error: " + e); 
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("addItem Error: " + e); 
                }
            }
            
        }
        return success;
    }
    
    public boolean editItem(inventorymodel update) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "UPDATE inventory SET productname =? , quantity =?, price = ? WHERE productid = ?";
        
        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, update.getproductname());
            ps.setInt(2, update.getquantity());
            ps.setInt(3, update.getprice());
            ps.setInt(4, update.getproductid());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
                JOptionPane.showMessageDialog(null, "Edit item info success.");
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("editItem Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("editItem Error: " + e); 
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("editItem Error: " + e); 
                }
            }
            
        }
        return success;
    }
    public inventorymodel getinventoryDetails(int productid) {
        inventorymodel inventoryDetails = null;
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM inventory WHERE productid = ?";                
        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productid);
            rs = ps.executeQuery();
            if (rs.next()) {
                String productname = rs.getString("productname");
                String productdesc = rs.getString("productdesc");
                int quantity = rs.getInt("quantity");
                int price = rs.getInt ("price");
                
                inventoryDetails = new inventorymodel(productid, productname, productdesc, quantity, price);
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("getinventoryDetails Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("getinventoryDetails Error: " + e); 
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("getinventoryDetails Error: " + e); 
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    System.out.println("getinventoryDetails Error: " + e); 
                }
            }
            
        }
        return inventoryDetails;
    }
    
    //Delete Item
     public boolean deleteItem(inventorymodel delete) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "DELETE FROM inventory WHERE productid =? ";
        
        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, delete.getproductid());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
                JOptionPane.showMessageDialog(null, "Item deleted!");
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("deleteItem Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("deleteItem Error: " + e); 
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("deleteItem Error: " + e); 
                }
            }
            
        }
        return success;
    }
     
    //User Inventory
    public inventorymodel getproductDetails(int productid) {
        inventorymodel productDetails = null;
        
        Connection conn  = null;
        PreparedStatement ps = null;
        
        String query = "INSERT INTO userinventory SELECT*FROM inventory WHERE productid = ?";                 
        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productid);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {         
                JOptionPane.showMessageDialog(null, "Item added to cart!");
            }
            
            conn.close();
        } catch (SQLException e) {
            System.out.println("getproductDetails Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("getproductDetails Error: " + e); 
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("getproductDetails Error: " + e); 
                }
            }  
        }
        return productDetails;
    }
    
    public ArrayList<inventorymodel> getproductList() {
        ArrayList<inventorymodel> productList = new ArrayList<>();
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM userinventory";
        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                int productid = rs.getInt("productid");
                String productname = rs.getString("productname");
                String productdesc = rs.getString("productdesc");
                int quantity = 1;
                int price = rs.getInt("price");
                
                inventorymodel item =new inventorymodel(productid, productname,productdesc,quantity, price);
                productList.add(item);
                
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("getproductList Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("getproductList Error: " + e); 
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("getproductList Error: " + e); 
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    System.out.println("getproductList Error: " + e); 
                }
            }
            
        }
        return productList;
    }
    
    public boolean removeProduct(inventorymodel delete) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "DELETE FROM userinventory WHERE productid =? ";
        
        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, delete.getproductid());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
               
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("removeProduct Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("removeProducr Error: " + e);
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("removeProduct Error: " + e);
                }
            }
            
        }
        return success;
    }
    // Search Function
    
    public ArrayList<inventorymodel> searchDetails(String productname) {
        ArrayList<inventorymodel> searchDetails = new ArrayList<>();
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM inventory where productname like ?";                   
        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + productname + "%");
            rs = ps.executeQuery();
            
            while (rs.next()) {
                int productid = rs.getInt("productid");
                productname = rs.getString("productname");
                String productdesc = rs.getString("productdesc");
                int quantity = rs.getInt("quantity");
                int price = rs.getInt ("price");
                
                inventorymodel result = new inventorymodel(productid, productname, productdesc, quantity, price);
                searchDetails.add(result);
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("searchDetails Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("searchDetails Error: " + e); 
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("searchDetails Error: " + e); 
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    System.out.println("searchDetails Error: " + e); 
                }
            }
            
        }
        return searchDetails;        
    }
    // Search Function
    public boolean searchProduct(String productname) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM inventory where productname like ?"; 
        
        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + productname + "%");
            rs = ps.executeQuery();
            if (rs.next()) {
                success = true;              
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("removeProduct Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("removeProducr Error: " + e);
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("removeProduct Error: " + e);
                }
            }
            
        }
        return success;
    }
    
    //Checkout
    public boolean checkout(int productid, int quantity) {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "UPDATE inventory SET quantity = quantity - ? WHERE productid = ?";
        
        try {
            conn = connectionpool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setInt(2, productid);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
                JOptionPane.showMessageDialog(null, "Checkout Success.");
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("editItem Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("editItem Error: " + e); 
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("editItem Error: " + e); 
                }
            }
            
        }
        return success;
    }
}
