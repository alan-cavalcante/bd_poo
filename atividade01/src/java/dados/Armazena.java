package dados;

public class Armazena {

    private String diaSemana;
    private String horarioInicio;
    private String horarioFim;
    private int disciplinaId;
    private int professorId;
    

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
    
}