package netkiller.ebusiness; 

import java.sql.*; 
import java.util.*; 
import netkiller.database.*; 
import netkiller.security.*; 
public class Groups{

    private String id = null;
    private String groupname = null;
    private String description = null;

    public Groups(){
    }

    public void setId(String value){
        this.id = value; 
    }
    public String getId(){
        return this.id; 
    }
    public void setGroupname(String value){
        this.groupname = value; 
    }
    public String getGroupname(){
        return this.groupname; 
    }
    public void setDescription(String value){
        this.description = value; 
    }
    public String getDescription(){
        return this.description; 
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
    public boolean createGroups() { 
        String sql = "sql insert into groups(description,groupname,id,) values(?,?,?,)"; 
        boolean isSuccess	= false; 
        try{ 
            isSuccess = true; 
        } 
         catch(Exception e){ 
            e.printStackTrace();
        } 
        return isSuccess; 
    } 
    public boolean removeGroups() { 
        String sql = "delete from groups where id = ? "; 
        // TODO: Add your code here	
    } 
    public boolean updateGroups() { 
        // TODO: Add your code here 
    } 
    public static void main(String[] args) { 
        Groups test = new Groups(); 
    }
}
