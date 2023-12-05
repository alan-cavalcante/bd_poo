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

        String sql = "SELECT Horarios.dia_semana, Horarios.horario_inicio, Horarios.horario_fim, Professores.nome, Disciplinas.nome"
                + "FROM Horarios"
                + "JOIN Professores ON Horarios.professor_id = Professores.professor_id"
                + "JOIN Disciplinas ON Horarios.disciplina_id = Disciplinas.disciplina_id;";

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
