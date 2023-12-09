package dados;

public class Armazena {

    private String diaSemana;
    private String horarioInicio;
    private String horarioFim;
    private int disciplinaId;
    private int professorId;
    private String nomeDoProfessor;
    private String nomeDaDisciplina;
    private String turno;

    public String getDiaSemana() {
        return diaSemana;
    }

    public void setdiaSemana(String diaSemana) {
        this.diaSemana = diaSemana;
    }

    public String getHorarioInicio() {
        return horarioInicio;
    }

    public void sethorarioInicio(String horarioInicio) {
        this.horarioInicio = horarioInicio;
    }

    public String getHorarioFim() {
        return horarioFim;
    }

    public void sethorarioFim(String horarioFim) {
        this.horarioFim = horarioFim;
    }

    public int getDisciplinaId() {
        return disciplinaId;
    }

    public void setdisciplinaId(int disciplinaId) {
        this.disciplinaId = disciplinaId;
    }

    public int getProfessorId() {
        return professorId;
    }

    public void setprofessorId(int professorId) {
        this.professorId = professorId;
    }

    public String getNomeDoProfessor() {
        return nomeDoProfessor;
    }

    public void setNomeDoProfessor(String nomeDoProfessor) {
        this.nomeDoProfessor = nomeDoProfessor;
    }

    public String getNomeDaDisciplina() {
        return nomeDaDisciplina;
    }
    
    public void setNomeDaDisciplina(String nomeDaDisciplina){
        this.nomeDaDisciplina = nomeDaDisciplina;
    }
    public String getTurno() {
        return turno;
    }
    
    public void setTurno(String turno){
        this.turno = turno;
    }
}
