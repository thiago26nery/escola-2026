package br.edu.ifmg.escola_2026.entities;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

import java.time.Instant;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "tb_enrollment")
public class Enrollment {
    @EmbeddedId
    private EnrollmentPK id = new EnrollmentPK();
    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant enrollMoment;
    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant refundMoment;
    private boolean available; //matrícula ativa
    private boolean onlyUpdate; //é um curso de atualização

    public Enrollment(User user, Offer offer, Instant
                              enrollMoment, Instant refundMoment, boolean available,
                      boolean onlyUpdate) {
        id.setUser(user);
        id.setOffer(offer);
        this.enrollMoment = enrollMoment;
        this.refundMoment = refundMoment;
        this.available = available;
        this.onlyUpdate = onlyUpdate;
    }
    public User getStudent() {return id.getUser();}
    public void setStudent(User user) {id.setUser(user);}
    public Offer getOffer() {return id.getOffer();}
    public void setOffer(Offer offer)
    {id.setOffer(offer);}

}
