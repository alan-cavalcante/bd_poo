package dados;

import bancodedados.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Inserir {

    /**
     *
     * @param arm
     */
    public void inserirDados(Armazena arm) {

        PreparedStatement pstm = null;
        Connection conn = null;

        String sql = "INSERT INTO horarios (dia_semana, horario_inicio, horario_fim, professor_id, disciplina_id)" + " VALUES(?,?,?,?,?)";

        try {
            conn = (Connection) Conexao.getConnection();
            pstm = conn.prepareStatement(sql);

            pstm.setString(1, arm.getDiaSemana());
            pstm.setString(2, arm.getHorarioInicio());
            pstm.setString(3, arm.getHorarioFim());
            pstm.setInt(4, arm.getProfessorId());
            pstm.setInt(5, arm.getDisciplinaId());

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
