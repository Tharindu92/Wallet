/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rnavagamuwa
 */
@WebServlet(urlPatterns = {"/transactions"})
public class transactions extends HttpServlet {
 
     private Connection con = null;
    private Statement st = null;
    private ResultSet rsltCredit= null;
    private ResultSet rsltDebit= null;
    private boolean connected = false;
    private String rsltC = null;
   public void connect() throws SQLException{
         try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://mysql-dev-01.cloud.wso2.com:3306/Wallet_theuntoucha8081","chamil_6j2ye-o9","chamil");
            connected = true;
            st = con.createStatement();
            //st.executeUpdate("CREATE DATABASE IF NOT EXISTS Wallet_theuntoucha8081");
            //st.executeUpdate("CREATE TABLE IF NOT EXISTS Wallet_theuntoucha8081.Transactions(TID INT AUTO_INCREMENT,TTitle VARCHAR(20),TValue INT,TLender VARCHAR(10),TLendee VARCHAR(10),TDate date,TDueDate date,TDetails VARCHAR(100), PRIMARY KEY(TID))");
            
            
        }
        
        catch(ClassNotFoundException ex){
            connected = false;
            //JOptionPane.showMessageDialog(new JFrame(),ex2,"Error",JOptionPane.ERROR_MESSAGE);
        }    
         
    }

  
  public void getDebitList(String user) throws SQLException{
     String query = "SELECT * FROM Wallet_theuntoucha8081.Transactions WHERE TLender='"+user+"'";
        
        rsltDebit = st.executeQuery(query);

  }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet transactions</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet transactions at " + request.getContextPath() + "</h1>");
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

   public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
         
       String title = request.getParameter("Title");
       String username = request.getParameter("user_Name");
       String description = request.getParameter("Description");
       String type = request.getParameter("type");
       int amount = Integer.parseInt(request.getParameter("Amount"));
       String date = request.getParameter("Year")+"-"+request.getParameter("Month")+"-"+request.getParameter("Day");
       
       SimpleDateFormat formatted = new SimpleDateFormat("yyyy-MM-dd");
       Date currdate = new Date();
       
         try {
             connect();
             request.getAttribute("user");
             //String query = "INSERT INTO Wallet_theuntoucha8081.Transactions(TTitle,TValue,TDate,TDueDate,TDetails) VALUES('"+title+"',"+amount+"'"+formatted.format(currdate)+"','"+date+"','"+description+"')";
             //String query = "INSERT INTO Wallet_theuntoucha8081.Transactions(TTitle,TValue,TLender,TLendee,TDate,TDueDate,TDetails) VALUES('"+title+"',"+value+",'"+lender+"','"+lendee+"','"+date+"','"+duedate+"','"+details+"')";
             //st.executeUpdate(query);
             if(type.equals("Lender")){
                String query = "INSERT INTO Wallet_theuntoucha8081.Transactions(TValue,TLender,TLendee,TDate,TDueDate,TDetails) VALUES("+amount+",'"+username+"','Chamil','"+formatted.format(currdate)+"','"+date+"','"+description+"')";
                st.executeUpdate(query);
       
                
             }
             else{
                 String query = "INSERT INTO Wallet_theuntoucha8081.Transactions(TValue,TDate,TDueDate,TDetails) VALUES("+amount+",'Chamil','"+username+"','"+formatted.format(currdate)+"','"+date+"','"+description+"')";
                 st.executeUpdate(query);
             }
         } catch (SQLException ex) {
             Logger.getLogger(transactions.class.getName()).log(Level.SEVERE, null, ex);
         }
         response.sendRedirect("transaction.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
}// </editor-fold>pho
}
