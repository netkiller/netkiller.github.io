package netkiller.ebusiness; 

import java.sql.*; 
import java.util.*; 
import netkiller.database.*; 
import netkiller.security.*; 
public class Users{

    private String id = null;
    private String userid = null;
    private String passwd = null;
    private String status = null;
    private String email = null;
    private String question = null;
    private String answer = null;
    private String authcode = null;
    private String begin_date = null;
    private String end_date = null;

    public Users(){
    }

    public void setId(String value){
        this.id = value; 
    }
    public String getId(){
        return this.id; 
    }
    public void setUserid(String value){
        this.userid = value; 
    }
    public String getUserid(){
        return this.userid; 
    }
    public void setPasswd(String value){
        this.passwd = value; 
    }
    public String getPasswd(){
        return this.passwd; 
    }
    public void setStatus(String value){
        this.status = value; 
    }
    public String getStatus(){
        return this.status; 
    }
    public void setEmail(String value){
        this.email = value; 
    }
    public String getEmail(){
        return this.email; 
    }
    public void setQuestion(String value){
        this.question = value; 
    }
    public String getQuestion(){
        return this.question; 
    }
    public void setAnswer(String value){
        this.answer = value; 
    }
    public String getAnswer(){
        return this.answer; 
    }
    public void setAuthcode(String value){
        this.authcode = value; 
    }
    public String getAuthcode(){
        return this.authcode; 
    }
    public void setBegin_date(String value){
        this.begin_date = value; 
    }
    public String getBegin_date(){
        return this.begin_date; 
    }
    public void setEnd_date(String value){
        this.end_date = value; 
    }
    public String getEnd_date(){
        return this.end_date; 
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
    public boolean createUsers() { 
        String sql = "sql insert into users(end_date,begin_date,authcode,answer,question,email,status,passwd,userid,id,) values(?,?,?,?,?,?,?,?,?,?,)"; 
        boolean isSuccess	= false; 
        try{ 
            isSuccess = true; 
        } 
         catch(Exception e){ 
            e.printStackTrace();
        } 
        return isSuccess; 
    } 
    public boolean removeUsers() { 
        String sql = "delete from users where id = ? "; 
        // TODO: Add your code here	
    } 
    public boolean updateUsers() { 
        // TODO: Add your code here 
    } 
    public static void main(String[] args) { 
        Users test = new Users(); 
    }
}
