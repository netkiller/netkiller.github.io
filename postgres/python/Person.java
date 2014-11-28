package netkiller.ebusiness; 

import java.sql.*; 
import java.util.*; 
import netkiller.database.*; 
import netkiller.security.*; 
public class Person{

    private String uid = null;
    private String name = null;
    private String gender = null;
    private String nickname = null;
    private String mobile = null;
    private String tel = null;
    private String fax = null;
    private String email = null;
    private String province = null;
    private String city = null;
    private String address = null;
    private String postalcode = null;
    private String rate = null;
    private String bank = null;
    private String bankaccount = null;

    public Person(){
    }

    public void setUid(String value){
        this.uid = value; 
    }
    public String getUid(){
        return this.uid; 
    }
    public void setName(String value){
        this.name = value; 
    }
    public String getName(){
        return this.name; 
    }
    public void setGender(String value){
        this.gender = value; 
    }
    public String getGender(){
        return this.gender; 
    }
    public void setNickname(String value){
        this.nickname = value; 
    }
    public String getNickname(){
        return this.nickname; 
    }
    public void setMobile(String value){
        this.mobile = value; 
    }
    public String getMobile(){
        return this.mobile; 
    }
    public void setTel(String value){
        this.tel = value; 
    }
    public String getTel(){
        return this.tel; 
    }
    public void setFax(String value){
        this.fax = value; 
    }
    public String getFax(){
        return this.fax; 
    }
    public void setEmail(String value){
        this.email = value; 
    }
    public String getEmail(){
        return this.email; 
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
    public void setRate(String value){
        this.rate = value; 
    }
    public String getRate(){
        return this.rate; 
    }
    public void setBank(String value){
        this.bank = value; 
    }
    public String getBank(){
        return this.bank; 
    }
    public void setBankaccount(String value){
        this.bankaccount = value; 
    }
    public String getBankaccount(){
        return this.bankaccount; 
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
    public boolean createPerson() { 
        String sql = "sql insert into person(bankaccount,bank,rate,postalcode,address,city,province,email,fax,tel,mobile,nickname,gender,name,uid,) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,)"; 
        boolean isSuccess	= false; 
        try{ 
            isSuccess = true; 
        } 
         catch(Exception e){ 
            e.printStackTrace();
        } 
        return isSuccess; 
    } 
    public boolean removePerson() { 
        String sql = "delete from person where id = ? "; 
        // TODO: Add your code here	
    } 
    public boolean updatePerson() { 
        // TODO: Add your code here 
    } 
    public static void main(String[] args) { 
        Person test = new Person(); 
    }
}
