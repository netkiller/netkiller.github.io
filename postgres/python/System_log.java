package netkiller.ebusiness; 

import java.sql.*; 
import java.util.*; 
import netkiller.database.*; 
import netkiller.security.*; 
public class System_log{

    private String id = null;
    private String uid = null;
    private String ip = null;
    private String status = null;
    private String description = null;
    private String login_date = null;

    public System_log(){
    }

    public void setId(String value){
        this.id = value; 
    }
    public String getId(){
        return this.id; 
    }
    public void setUid(String value){
        this.uid = value; 
    }
    public String getUid(){
        return this.uid; 
    }
    public void setIp(String value){
        this.ip = value; 
    }
    public String getIp(){
        return this.ip; 
    }
    public void setStatus(String value){
        this.status = value; 
    }
    public String getStatus(){
        return this.status; 
    }
    public void setDescription(String value){
        this.description = value; 
    }
    public String getDescription(){
        return this.description; 
    }
    public void setLogin_date(String value){
        this.login_date = value; 
    }
    public String getLogin_date(){
        return this.login_date; 
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
    public boolean createSystem_log() { 
        String sql = "sql insert into system_log(login_date,description,status,ip,uid,id,) values(?,?,?,?,?,?,)"; 
        boolean isSuccess	= false; 
        try{ 
            isSuccess = true; 
        } 
         catch(Exception e){ 
            e.printStackTrace();
        } 
        return isSuccess; 
    } 
    public boolean removeSystem_log() { 
        String sql = "delete from system_log where id = ? "; 
        // TODO: Add your code here	
    } 
    public boolean updateSystem_log() { 
        // TODO: Add your code here 
    } 
    public static void main(String[] args) { 
        System_log test = new System_log(); 
    }
}
