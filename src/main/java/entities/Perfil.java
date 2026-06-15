package br.edu.ifmg.escola_2026.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import lombok.extern.java.Log;


import java.util.Objects;

@Getter
@Setter
@ToString //(onlyExplicitlyIncluded = true)
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
@Log

@Entity
@Table(name="perfil")
public class Perfil  {

    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    //@ToString.Include
    @NonNull
    private String nome;





}