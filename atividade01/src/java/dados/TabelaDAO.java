/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dados;

/**
 *
 * @author Alan
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import bancodedados.Conexao;
import dados.DadosConsultados;

public class TabelaDAO {
//    private static final String SELECT_QUERY = "SELECT Horarios.dia_semana, Horarios.horario_inicio, Horarios.horario_fim, Professores.nome, Disciplinas.nome FROM Horarios JOIN Professores ON Horarios.professor_id = Professores.professor_id JOIN Disciplinas ON Horarios.disciplina_id = Disciplinas.disciplina_id";
    private static final String SELECT_QUERY = "SELECT h.dia_semana, h.horario_inicio, h.horario_fim, p.nomeprof AS nome_professor, d.nomedisc AS nome_disciplina FROM horarios h JOIN professores p ON h.profId = p.prof_id JOIN disciplinas d ON h.discId = d.disc_id";

    public List<DadosConsultados> obterDados() {
        List<DadosConsultados> dados = new ArrayList<>();

        try (Connection conexao = Conexao.getConnection();
             PreparedStatement preparedStatement = conexao.prepareStatement(SELECT_QUERY);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            System.out.println("conexão feita na TabelaDAO");
            while (resultSet.next()) {
                DadosConsultados objeto = new DadosConsultados();
                objeto.setdiaSemana(resultSet.getString("dia_semana"));
                objeto.sethorarioInicio(resultSet.getString("horario_inicio"));
                objeto.sethorarioFim(resultSet.getString("horario_fim"));
                objeto.setprofessorId(resultSet.getInt("profId"));
                objeto.setdisciplinaId(resultSet.getInt("discId"));
                objeto.setNomeDoProfessor(resultSet.getString("nomeprof"));
                objeto.setNomeDaDisciplina(resultSet.getString("nomedisc"));
                dados.add(objeto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dados;
    }
}
