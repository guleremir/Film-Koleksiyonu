package com.filmproje.FilmKoleksiyonu.service;


import java.util.List;

import com.filmproje.FilmKoleksiyonu.model.Film;

public interface FilmService {
	List<Film> getAllFilm();

	void FilmKaydet(Film film);
	Film getFilmById(long id);
	void FilmSilById(long id);
	public List<Film> YilaGoreSirala();
	public List<Film> AdaGoreSirala();
	public List<Film> search(String arama);
	List<Film> listAll(String arama);
	public List<Film> RandomFilm();

}
