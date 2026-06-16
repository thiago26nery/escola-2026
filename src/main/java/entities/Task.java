package br.edu.ifmg.escola_2026.entities;

import jakarta.persistence.*;
import lombok.*;
import java.time.Instant;
@Data
@NoArgsConstructor
@Entity
@Table(name = "tb_task")
public class Task extends Lesson {
    private String description;
    private Integer questionCount;
    private Integer approvalCount;
    private Double weight;
    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant dueDate;
    public Task(Long id, String title, Integer position, Section
                        section, String description, Integer questionCount,
                Integer approvalCount, Double weight, Instant
                        dueDate) {
        super(id, title, position, section);
        this.description = description;
        this.questionCount = questionCount;
        this.approvalCount = approvalCount;
        this.weight = weight;
        this.dueDate = dueDate;
    }
}