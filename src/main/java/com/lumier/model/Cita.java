package com.lumier.model;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
public class Cita {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private LocalDate fechaProgramacion;

    @Column(nullable = false)
    private LocalTime horaProgramacion;

    @Column(nullable = false)
    private String eps;

    @Column(nullable = false)
    private String tipoExamen;

    @Column(nullable = false)
    private String motivoConsulta;

    private String estado;

    @ManyToOne()
    @JoinColumn(name = "paciente_id")
    private Paciente paciente;

    @ManyToOne()
    @JoinColumn(name = "usuario_id")
    private Usuario usuario;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getFechaProgramacion() {
        return fechaProgramacion;
    }

    public void setFechaProgramacion(LocalDate fechaProgramacion) {
        this.fechaProgramacion = fechaProgramacion;
    }

    public LocalTime getHoraProgramacion() {
        return horaProgramacion;
    }

    public void setHoraProgramacion(LocalTime horaProgramacion) {
        this.horaProgramacion = horaProgramacion;
    }

    public String getEps() {
        return eps;
    }

    public void setEps(String eps) {
        this.eps = eps;
    }

    public String getTipoExamen() {
        return tipoExamen;
    }

    public void setTipoExamen(String tipoExamen) {
        this.tipoExamen = tipoExamen;
    }

    public String getMotivoConsulta() {
        return motivoConsulta;
    }

    public void setMotivoConsulta(String motivoConsulta) {
        this.motivoConsulta = motivoConsulta;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Paciente getPaciente() {
        return paciente;
    }

    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
}
