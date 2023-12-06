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
import java.sql.ResultSetMetaData;

public class TabelaDAO {

    private static final String SELECT_QUERY = "SELECT h.dia_semana, h.horario_inicio, h.horario_fim, h.profId, h.discId, p.nomeprof AS nome_professor, d.nomedisc AS nome_disciplina FROM horarios h JOIN professores p ON h.profId = p.prof_id JOIN disciplinas d ON h.discId = d.disc_id";

    public List<DadosConsultados> obterDados() {
        List<DadosConsultados> dados = new ArrayList<>();

        try (Connection conexao = Conexao.getConnection(); PreparedStatement preparedStatement = conexao.prepareStatement(SELECT_QUERY); ResultSet resultSet = preparedStatement.executeQuery()) {
            System.out.println("conexão feita na TabelaDAO");

            ResultSetMetaData rsmd = resultSet.getMetaData();
            int columnCount = rsmd.getColumnCount();
            for (int i = 1; i <= columnCount; i++) {
                String columnName = rsmd.getColumnName(i);
                System.out.println("Column Name: " + columnName);
            };

            while (resultSet.next()) {
                DadosConsultados objeto = new DadosConsultados();
                objeto.setdiaSemana(resultSet.getString("dia_semana"));
                System.out.println("dia_semana ok");
                objeto.sethorarioInicio(resultSet.getString("horario_inicio"));
                System.out.println("horario_inicio ok");
                objeto.sethorarioFim(resultSet.getString("horario_fim"));
                System.out.println("horario_fim ok");
                objeto.setprofessorId(resultSet.getInt("profId"));
                System.out.println("profId ok");
                objeto.setdisciplinaId(resultSet.getInt("discId"));
                System.out.println("discId ok");
                objeto.setNomeDoProfessor(resultSet.getString("nome_professor"));
                System.out.println("nomeprof ok");
                objeto.setNomeDaDisciplina(resultSet.getString("nome_disciplina"));
                System.out.println("nomedisc ok");
                dados.add(objeto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dados;
    }
}
