


import userPack.user;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/loginServ"})
public class loginServ extends HttpServlet {

     private Connection con = null;
    private Statement st = null;
    private ResultSet rslt = null;
    private boolean connected = false;
    private String uName;
    private String pass;
    
    
    public void connect() throws SQLException{
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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginServ</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginServ at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }
    
    public void logIn(){
        
    }

   private void forwardToPage(final HttpServletRequest request, 
                           final HttpServletResponse response,
                           String url) 
throws IOException, ServletException
{
  RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
  dispatcher.forward(request,response);
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
         try {
             HttpSession session = request.getSession();
             user newUser = new user();
             PrintWriter out = response.getWriter();
             uName = request.getParameter("uname");
             pass = request.getParameter("password");
             newUser.setUsername(uName);
             newUser.setPass(pass);
             newUser.setFullname(uName);
             newUser.setcomname(uName);
             newUser.setEmail(uName);
             newUser.setAddress(uName);
             
             session.setAttribute("user", newUser );
             connect();
             String query = "SELECT * FROM Wallet_theuntoucha8081.Users WHERE UserName='"+uName+"'";
             ResultSet rslt;
             rslt = st.executeQuery(query);
             String username = request.getParameter("username");
if (username != null && username.length() > 0) {

}
             if(request.getParameter("login")!= null){
                 if(rslt!= null && rslt.next() && rslt.getString("Password").equals(pass)){
                     response.sendRedirect("profile.jsp?uname");
                    
                 }
                 else{
                     response.sendRedirect("index.jsp");
                 }
             }

         } catch (SQLException ex) {

                    
             Logger.getLogger(loginServ.class.getName()).log(Level.SEVERE, null, ex);
         }


    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }
    

}
