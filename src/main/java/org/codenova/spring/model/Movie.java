package org.codenova.spring.model;

import lombok.Getter;
import lombok.Setter;
import org.springframework.cglib.core.Local;

import java.time.LocalDate;

@Setter
@Getter
public class Movie {

    private int id;
    private String title;
    private String description;
    private String genre;
    private LocalDate releaseDate;
}
