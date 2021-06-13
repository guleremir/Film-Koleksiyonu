package com.filmproje.FilmKoleksiyonu.service;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.filmproje.FilmKoleksiyonu.model.Film;
import com.filmproje.FilmKoleksiyonu.repository.FilmRepository;


@Service
public class FilmServiceImplements implements FilmService{
	
	@Autowired
	private FilmRepository filmRepository;
	
	
	@Override
	
	public List<Film> getAllFilm() {
	
		return filmRepository.findAll();
	}


	@Override
	public void FilmKaydet(Film film) {
		this.filmRepository.save(film);
	}


	@Override
	public Film getFilmById(long id) {
		// TODO Auto-generated method stub
		java.util.Optional<Film> optional = filmRepository.findById(id);
		Film film = null;
		if(optional.isPresent()) {
			film = optional.get();
		}
		else {
			throw new RuntimeException("Film ID Bulunamadı... ::" + id);
		}
		return film;
	}


	@Override
	public void FilmSilById(long id) {
		// TODO Auto-generated method stub
		this.filmRepository.deleteById(id);
	}


	@Override
	public List<Film> YilaGoreSirala() {
		// TODO Auto-generated method stub
		return filmRepository.YilaGoreSirala();
	}


	@Override
	public List<Film> AdaGoreSirala() {
		// TODO Auto-generated method stub
				return filmRepository.AdaGoreSirala();
	}


	@Override
	public List<Film> listAll(String arama) {
		if(arama !=null) {
			return filmRepository.search(arama);
		}
		return filmRepository.findAll();

	}


	@Override
	public List<Film> RandomFilm() {
		// TODO Auto-generated method stub
		return filmRepository.RandomFilm();
	}


	@Override
	public List<Film> search(String arama) {
		if(arama !=null) {
			return filmRepository.search(arama);
		}
		return filmRepository.findAll();

	}

	




}
