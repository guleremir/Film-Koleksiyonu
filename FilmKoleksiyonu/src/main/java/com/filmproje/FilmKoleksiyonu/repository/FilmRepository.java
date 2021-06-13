package com.filmproje.FilmKoleksiyonu.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.filmproje.FilmKoleksiyonu.model.Film;

@Repository
public interface FilmRepository extends JpaRepository<Film , Long> {

	@Query("from Film order by yapim_yil asc")
	public  List<Film> YilaGoreSirala();
	@Query("from Film order by film_ad asc")
	public  List<Film> AdaGoreSirala();
	@Query("SELECT f FROM Film f WHERE CONCAT(f.film_ad,f.film_kategori,f.film_oyuncu) LIKE %?1%")
	public  List<Film> search(String arama);
	@Query("SELECT u FROM Film u ORDER BY function('RAND')")
	public  List<Film> RandomFilm();
}

