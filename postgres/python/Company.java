package netkiller.ebusiness; 

import java.sql.*; 
import java.util.*; 
import netkiller.database.*; 
import netkiller.security.*; 
public class Company{

    private String uid = null;
    private String cname = null;
    private String ename = null;
    private String position = null;
    private String industry = null;
    private String buy = null;
    private String sale = null;
    private String kind = null;
    private String homepage = null;
    private String telephone = null;
    private String fax = null;
    private String province = null;
    private String city = null;
    private String address = null;
    private String postalcode = null;
    private String state = null;

    public Company(){
    }

    public void setUid(String value){
        this.uid = value; 
    }
    public String getUid(){
        return this.uid; 
    }
    public void setCname(String value){
        this.cname = value; 
    }
    public String getCname(){
        return this.cname; 
    }
    public void setEname(String value){
        this.ename = value; 
    }
    public String getEname(){
        return this.ename; 
    }
    public void setPosition(String value){
        this.position = value; 
    }
    public String getPosition(){
        return this.position; 
    }
    public void setIndustry(String value){
        this.industry = value; 
    }
    public String getIndustry(){
        return this.industry; 
    }
    public void setBuy(String value){
        this.buy = value; 
    }
    public String getBuy(){
        return this.buy; 
    }
    public void setSale(String value){
        this.sale = value; 
    }
    public String getSale(){
        return this.sale; 
    }
    public void setKind(String value){
        this.kind = value; 
    }
    public String getKind(){
        return this.kind; 
    }
    public void setHomepage(String value){
        this.homepage = value; 
    }
    public String getHomepage(){
        return this.homepage; 
    }
    public void setTelephone(String value){
        this.telephone = value; 
    }
    public String getTelephone(){
        return this.telephone; 
    }
    public void setFax(String value){
        this.fax = value; 
    }
    public String getFax(){
        return this.fax; 
    }
    public void setProvince(String value){
        this.province = value; 
    }
    public String getProvince(){
        return this.province; 
    }
    public void setCity(String value){
        this.city = value; 
    }
    public String getCity(){
        return this.city; 
    }
    public void setAddress(String value){
        this.address = value; 
    }
    public String getAddress(){
        return this.address; 
    }
    public void setPostalcode(String value){
        this.postalcode = value; 
    }
    public String getPostalcode(){
        return this.postalcode; 
    }
    public void setState(String value){
        this.state = value; 
    }
    public String getState(){
        return this.state; 
    }
    public void setPrimaryKey(int id){ 
        this.id	= id; 
    	} 
    public void findByPrimaryKey(){ 
        String sql = null; 
        try{ 
        } 
        catch(Exception e){ 
            e.printStackTrace(); 
        } 
        finally{ 
           try{ 
           }catch(Exception e){ 
               e.printStackTrace();
           ) 
           
    	} 
    public void findAll(){} 
    public void findByMethod(){} 
    public boolean createCompany() { 
        String sql = "sql insert into company(state,postalcode,address,city,province,fax,telephone,homepage,kind,sale,buy,industry,position,ename,cname,uid,) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,)"; 
        boolean isSuccess	= false; 
        try{ 
            isSuccess = true; 
        } 
         catch(Exception e){ 
            e.printStackTrace();
        } 
        return isSuccess; 
    } 
    public boolean removeCompany() { 
        String sql = "delete from company where id = ? "; 
        // TODO: Add your code here	
    } 
    public boolean updateCompany() { 
        // TODO: Add your code here 
    } 
    public static void main(String[] args) { 
        Company test = new Company(); 
    }
}
