package dados;

import bancodedados.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Alan
 */
public class Consulta {

    public void consultarDados() {
        PreparedStatement pstm = null;
        Connection conn = null;

        String sql = "SELECT Horarios.dia_semana, Horarios.horario_inicio, Horarios.horario_fim, Professores.nomeprof, Disciplinas.nomedisc"
                + "FROM Horarios"
                + "JOIN Professores ON Horarios.profId = Professores.prof_id"
                + "JOIN Disciplinas ON Horarios.discId = Disciplinas.disc_id;";

        try {
            conn = (Connection) Conexao.getConnection();
            pstm = conn.prepareStatement(sql);
            pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }
}
