package bancodedados;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexao {
    
    public static Connection getConnection(){
            Connection conn = null;
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                String URL="jdbc:mysql://localhost:3306/atividade01";
                conn = DriverManager.getConnection(URL,"root", "admin");
                System.out.println("Conexão efetuada.");
               
            }catch(SQLException e){
               System.out.println(e.getMessage());
            }catch(ClassNotFoundException e){
               System.out.println(e.getException());
            }catch(Exception e){
                System.out.println(e.getMessage());            
            }return conn;
    }
    public static void main(String args[]){
        System.out.println(getConnection());
    }
}
