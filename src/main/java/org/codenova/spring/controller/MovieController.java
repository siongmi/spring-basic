package org.codenova.spring.controller;

import lombok.AllArgsConstructor;
import org.codenova.spring.model.Movie;
import org.codenova.spring.repository.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/movie")
@AllArgsConstructor
public class MovieController {

    @Autowired
    private MovieRepository movieRepository;

    @RequestMapping("/create-proceed")
    public String createProceedHandle(@ModelAttribute Movie movie){

        boolean result = movieRepository.create(movie);

        System.out.println("create = " +result);

        return "moive/create-proceed";

    }
    @RequestMapping("/list")
    public String listHandle(Model model){
        List<Movie> movies = movieRepository.findAll();
        model.addAttribute("movies", movies);

        return "movie/list";
    }
}
