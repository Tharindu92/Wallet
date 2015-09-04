
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/createNew"})
public class createNew extends HttpServlet {

    private Connection con = null;
    private Statement st = null;
    private ResultSet rslt = null;
    private boolean connected = false;
    
    public void connect() throws SQLException{
         try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://mysql-dev-01.cloud.wso2.com:3306/Wallet_theuntoucha8081","chamil_6j2ye-o9","chamil");
            connected = true;
            st = con.createStatement();
            //st.executeUpdate("CREATE DATABASE IF NOT EXISTS Wallet");
            //st.executeUpdate("CREATE TABLE IF NOT EXISTS Wallet.Users(UserName VARCHAR(50),Password VARCHAR(50),PRIMARY KEY(UserName))");
            
            
        }
        
        catch(ClassNotFoundException ex){
            connected = false;
            //JOptionPane.showMessageDialog(new JFrame(),ex2,"Error",JOptionPane.ERROR_MESSAGE);
        }    
         
    }
    
    public boolean checkConnection(){
        return connected;
    }
    
        public void insertUser(String UName, String Pass, String companyName,String companyAdd,String job,String email,String fullName, String retypePass ,String retypeEmail) throws SQLException{

        String temp = "SELECT * FROM Wallet_theuntoucha8081.Users WHERE UserName='" +UName +"'" ;
        rslt = st.executeQuery(temp);
        
        if( !rslt.next() && Pass.equals(retypePass) && email.equals(retypeEmail)){
            String query = "INSERT INTO Wallet_theuntoucha8081.Users(UserName,FullName,CompanyName,CompanyAddress,JobTitle,Email,Password) VALUES('"+UName+"','"+fullName+"','"+companyName+"','"+companyAdd+"','"+job+"','"+email+"','"+Pass+"')";
            st.executeUpdate(query);
        }
     
        

    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet createNew</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet createNew at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String username = request.getParameter("name_textfield");
        String fullName = request.getParameter("second_name");
        String companyName = request.getParameter("companyname_textfield");
        String CompanyAdd = request.getParameter("companyaddress_textfield");
        String JobTitle = request.getParameter("Jobtitle_textfield");
        String email = request.getParameter("Email_txtfield");
        String emailRep = request.getParameter("retyprEmail_txtfield");
        String password = request.getParameter("password_txtfield");
        String passwordRep = request.getParameter("retypepassword_txtfield");
          try {
            //this.checkConnection();
           connect();
           insertUser(username, password, companyName, CompanyAdd, JobTitle, email, fullName, passwordRep, emailRep);
        } catch (SQLException ex) {
            Logger.getLogger(createNew.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect("index.jsp");
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
    
}
