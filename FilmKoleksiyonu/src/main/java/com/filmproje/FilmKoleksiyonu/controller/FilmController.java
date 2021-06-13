package com.filmproje.FilmKoleksiyonu.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.filmproje.FilmKoleksiyonu.model.Film;
import com.filmproje.FilmKoleksiyonu.service.FilmService;
@Controller
public class FilmController {

	@Autowired
	private FilmService filmService;


	// display list of film
	
	@GetMapping("/")
	public String viewHomePage(Model model , @Param("arama") String arama) {
		model.addAttribute("listFilm", filmService.getAllFilm());
		List<Film> listFilm = filmService.listAll(arama);
		model.addAttribute("listFilm", listFilm);
		model.addAttribute("arama", arama);
		return "index";
		
	}
	@GetMapping("/YeniFilmEkle")
	public String YeniFilmEkle(Model model) {
		Film film = new Film();
		model.addAttribute("film", film);
		return "new_film";
	}
	
	@PostMapping("/FilmKaydet")
	public String saveFilm(@ModelAttribute("film") Film film) {
		//save film to db
		filmService.FilmKaydet(film);
		return "redirect:/";
	}
	@GetMapping("/FilmDuzenle/{film_id}")
	public String FilmDuzenle(@PathVariable( value = "film_id") long film_id, Model model) { 
		// get film from the service
		Film film = filmService.getFilmById(film_id);
		
		model.addAttribute("film", film);
		return "update_film";
	}
	@GetMapping("/FilmSil/{film_id}")
	public String FilmSil(@PathVariable( value = "film_id") long film_id) { 
		
		this.filmService.FilmSilById(film_id);
		return "redirect:/";
		
	}
	
	@GetMapping("/YilaGoreSirala")
	public String YilaGoreSirala(Model model) {
		 
		model.addAttribute("listFilm", filmService.YilaGoreSirala());
		return "index";
	}
	@GetMapping("/AdaGoreSirala")
	public String AdaGoreSirala(Model model) {
		 
		model.addAttribute("listFilm", filmService.AdaGoreSirala());
		return "index";
	}
	
	@GetMapping("/RandomFilm")
	public String RandomFilm(Model model) {
		 
		model.addAttribute("listFilm", filmService.RandomFilm());
		return "index";
	
	
}
	}

