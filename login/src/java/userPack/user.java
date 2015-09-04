package userPack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;




public class user {
    private String username;
    private String password;
    private String fullName;
    private String email;
    private String companyAddress;
    private String companyName;
    
    private Connection con = null;
    private Statement st = null;
    private ResultSet rslt = null;
    private boolean connected = false;
    private String uName;
    private String pass;
    
    public user() throws SQLException{
              try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://mysql-dev-01.cloud.wso2.com:3306/Wallet_theuntoucha8081", "chamil_6j2ye-o9", "chamil");
            connected = true;
            st = con.createStatement();
            
            
        }
        
        catch(ClassNotFoundException ex){
            connected = false;
            //JOptionPane.showMessageDialog(new JFrame(),ex2,"Error",JOptionPane.ERROR_MESSAGE);
        }  
    }
    
     public String getcompanyName(){
        return companyName;
    }
    public String getcompanyAddress(){
        return companyAddress;
    }
     public String getFullName(){
        return fullName;
    }
    public String getemail(){
        return email;
    }
    public String getUsername(){
        return username;
    }
    
    public String getPass(){
        return password;
    }
    
    public void setUsername(String user){
        username = user;
    }
    
    public void setPass(String pass){
        password = pass;
    }
     public void setFullname(String username) throws SQLException{
        ResultSet resultset = st.executeQuery("SELECT * FROM Wallet_theuntoucha8081.Users WHERE UserName='" + username +"'") ; 
        resultset.next();
        fullName = resultset.getString(2);
    }
     
     public void setEmail(String username) throws SQLException{
        ResultSet resultset = st.executeQuery("SELECT * FROM Wallet_theuntoucha8081.Users WHERE UserName='" + username +"'") ; 
        resultset.next();
        email = resultset.getString(6);
    }
    
    public void setAddress(String username)throws SQLException{
                ResultSet resultset = st.executeQuery("SELECT * FROM Wallet_theuntoucha8081.Users WHERE UserName='" + username +"'") ; 
        resultset.next();
       
        companyAddress = resultset.getString(4);
    } 
    
    public void setcomname(String username) throws SQLException{
        ResultSet resultset = st.executeQuery("SELECT * FROM Wallet_theuntoucha8081.Users WHERE UserName='" + username +"'") ; 
        resultset.next();
        companyName = resultset.getString(3);
    }
    
}
