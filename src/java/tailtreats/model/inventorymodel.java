/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tailtreats.model;

/**
 *
 * @author Eliseio
 */
public class inventorymodel {
    private int productid;
    private String productname;
    private String productdesc;
    private int quantity;
    private int price;
    
    public inventorymodel (){
        
    }
    public inventorymodel (
           int productid) {
        this.productid = productid;
    }
    public inventorymodel (
           int productid, String productname, String productdesc, int quantity, int price) {
        this(productname, productdesc, quantity, price);
        this.productid = productid;
        
    }
    public inventorymodel (
           String productname, String productdesc, int quantity, int price) {
        this.productname = productname;
        this.productdesc = productdesc;
        this.quantity = quantity;
        this.price = price;
    }
    public int getproductid() {
        return productid;
    }

    public void setproductid(int productid) {
        this.productid = productid;
    }
    
    public String getproductname() {
        return productname;
    }

    public void setproductname(String productname) {
        this.productname = productname;
    }
    
    public int getquantity() {
        return quantity;
    }

    public void setquantity(int quantity) {
        this.quantity = quantity;
    }
    
    public int getprice() {
        return price;
    }

    public void setprice(int price) {
        this.price = price;
    }
    public String getproductdesc() {
        return productdesc;
    }

    public void setproductdesc(String productdesc) {
        this.productdesc = productdesc;
    }
}
