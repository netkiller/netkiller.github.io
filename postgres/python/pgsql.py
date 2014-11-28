#!/usr/bin/python

#############################################################
# Created    2003-12-6 
# Modified   2003-12-8
# Project    PostgreSQL Converse
# Model      Create Java Entity Bean (not EJB CMP)
# Company    Organizations
# Author     陈景峰
# Nickname   netkiller
# Email      netkiller@9812.net
# Version    1.1
# Database PostgreSQL 7.3.4
#############################################################

import pg
import string
#db = pg.connect(dbname='netkiller', host='127.0.0.1', user='netkiller',passwd='chen')
db = pg.DB(dbname='netkiller', host='127.0.0.1', user='netkiller',passwd='chen')
# tab = db.get_tables()
# print tab
#print "====================================================="
table = raw_input("Please enter a table: ")
#table = "users"
#classname = "workfile"
classname =  string.capwords(table)

query = "select * from "+table
table_attnames = db.query(query).listfields()
db.close()

#table_attnames = db.get_attnames(table)
buffer = "\n"
buffer += "public class "+classname+"{\n"
buffer += "\n"
for att in table_attnames:
    buffer += "    private String "+ att +" = null;\n"
buffer += "\n"

buffer += "    DBConnect odb = null; \n\n"
buffer += "    private ResultSet rs     = null; \n\n"
buffer += "    private Vector vError = new Vector(); \n\n"
buffer += "    public "+ classname+ "(){\n    }\n"
buffer += "\n"


for att in table_attnames:
    buffer += "    public void set"+ string.capwords(att) +"(String value){\n"
    buffer += "        this."+ att +" = value; \n" 
    buffer += "    }\n"
    buffer += "    public String get"+ string.capwords(att) +"(){\n"
    buffer += "        return this."+ att +"; \n"
    buffer += "    }\n"

buffer += "    public void setPrimaryKey(int id){ \n"
buffer += "        this.id	= id; \n"
buffer += "    	} \n"

finallys = "        finally{ \n"
finallys +="            try{ \n"
finallys +="                if(rs != null)rs.close(); \n"
finallys +="                odb.close(); \n"
finallys +="            }catch(Exception e){ \n"
finallys +="                vError.add(e.toString()); \n"
finallys +="            } \n"
finallys +="        } \n"

buffer += "    public void findByPrimaryKey(){ \n"
buffer += "        String sql = null; \n"
buffer += "        try{ \n"
buffer += "        } \n"
buffer += "        catch(Exception e){ \n"
buffer += "            vError.add(e.toString()); \n"
buffer += "        } \n"
buffer += finallys
buffer += "    	} \n"

buffer += "    public void findAll(){} \n"
buffer += "    public void findByMethod(){} \n"

sql_insert = "insert into " + table + "("
symbol = "?"
prepare = ""
i = 1
for field in table_attnames:
   sql_insert += (field + ",")
   symbol += ",?"
   prepare += "            odb.setString("+ str(i) +",this."+ field +"); \n"
   i += 1
sql_insert += ") values(" + prepare + ")"

buffer += "    public boolean create"+ string.capwords(classname) +"() { \n"
buffer += "        String sql = \""+ sql_insert +"\"; \n"
buffer += "        boolean isSuccess	= false; \n"
buffer += "        try{ \n"
buffer += "            odb = new DBConnect();\n"
buffer += "            odb.prepareStatement(sql); \n"
buffer += prepare
buffer += "            if(odb.executeUpdate()>0) \n"
buffer += "                isSuccess = true; \n"
buffer += "        } \n "
buffer += "        catch(Exception e){ \n"
buffer += "            vError.add(e.toString()); \n"
buffer += "        } \n"
buffer += finallys
buffer += "        return isSuccess; \n"
buffer += "    } \n"

buffer += "    public boolean remove"+ string.capwords(classname) +"() { \n"
buffer += "        String sql = \"delete from "+table+" where id = ? \"; \n";
buffer += "        try{ \n"
buffer += "            odb = new DBConnect(); \n"
buffer += "            odb.prepareStatement(sql); \n"
buffer += "            odb.setInt(1,this.id); \n"
buffer += "            if(odb.executeUpdate()>0) \n"
buffer += "                isSuccess = true; \n"
buffer += "        } \n "
buffer += "        catch(Exception e){ \n"
buffer += "            vError.add(e.toString()); \n"
buffer += "        } \n"
buffer += finallys
buffer += "        return isSuccess; \n"
buffer += "    } \n"

sql_update = "update "+ table +" set "
for field in table_attnames:
   sql_update += (field + "=?,")
sql_update += " where id = ?"

buffer += "    public boolean update"+ string.capwords(classname) +"() { \n"
buffer += "        String sql = \""+ sql_update +"\"; \n"
buffer += "        boolean isSuccess	= false;  \n"
buffer += "        try{ \n"
buffer += "            isSuccess = true; \n"
buffer += "        } \n "
buffer += "        catch(Exception e){ \n"
buffer += "            vError.add(e.toString()); \n"
buffer += "        } \n"
buffer += finallys
buffer += "        return isSuccess; \n"
buffer += "    } \n"

flush = ""
for field in table_attnames:
   flush += ("        this."+field + " = null; \n")

buffer += "    public void flush(){ \n"
buffer += flush
buffer += "    } \n"

buffer += "    public static void main(String[] args) { \n"
buffer += "        " + classname + " test = new " +classname+ "(); \n"
buffer += "    }\n"
buffer +="}\n"


package = "package ebusiness; \n\n"

imports = "import java.sql.*; \n"
imports += "import java.util.*; \n"
imports += "import netkiller.database.*; \n"
imports += "import netkiller.security.*; \n"


f=open(classname+'.java', 'w')
f.write(package);
f.write(imports);
f.write(buffer)
f.close()

#for r in db.query("select * from oa.meeting").dictresult():
#    print '%(id)s %(subject)s' % r
def MakeHtml(html):
    tag = "<!-- db==>html form author:netkiller --> \n"
    tag +="<form name=\"form\" action=\"\" > \n"
    tag += html
    tag += "</form>"
    return tag
def MakeJsp(jsp):
    tag = "<% \n"
    tag += jsp
    tag += "%> \n"
    return tag
html = "<table border=0> \n"
jsp  = "jspParameter para = new jspParameter(request); \n"
jsp += "    String op = request.getParameter(\"op\") \n"
jsp += "    String status = ""; \n"
for att in table_attnames:
    jsp += "    String "+ att +" = para.getString(\""+ att +"\",\"\"); \n"
    html += "    <tr><td>"+ att+":</td><td><input name=\""+ att +"\" type=\"text\" value=\"<%= "+att+" %>\"></td></tr> \n"
jsp += "    if(op != null)){ \n"
jsp += "        if(op.equals(\"create\")){ \n"
jsp += "            status = "<script> alert('添加成功！') </script>" \n"
jsp += "        } \n"
jsp += "        if(op.equals(\"remove\")){} \n"
jsp += "        if(op.equals(\"remove\")){} \n"
jsp += "        if(op.equals(\"update\")){} \n"
jsp += "    } \n"
html += "</table> \n"
html += "<%= status %>"

details = "<% \n"
details += "jspParameter para = new jspParameter(request); \n"
details += "    int id = para.getInt(\"id\"); \n"
details += "    setPrimaryKey(id) \n"
details += "    findByPrimaryKey() \n"
details += "<table border=0> \n"
for att in table_attnames:
    details += "  <tr><td>"+att+":</td><td><%= "+att+" %></td></tr> \n"
details +="</table> \n"

f=open('html/'+classname+'.html','w')
f.write(MakeJsp(jsp))
f.write(details)
f.write(MakeHtml(html))
f.close
