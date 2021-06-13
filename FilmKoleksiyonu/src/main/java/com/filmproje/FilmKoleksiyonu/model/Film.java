package com.filmproje.FilmKoleksiyonu.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "film")
public class Film {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long film_id;
	
	@Column(name = "film_ad")
	private String film_ad;
	
	@Column(name = "IMDb")
	private String IMDb;
	
	@Column(name = "yapim_yil")
	private String yapim_yil;
	
	@Column(name = "film_yonetmen")
	private String film_yonetmen;
	
	@Column(name = "senarist")
	private String senarist;
	
	@Column(name = "film_oyuncu")
	private String film_oyuncu;
	
	@Column(name = "film_aciklama")
	private String film_aciklama;
	
	@Column(name = "film_media")
	private String film_media;
	
	@Column(name = "film_dil")
	private String film_dil;
	
	public Long getFilm_id() {
		return film_id;
	}
	public void setFilm_id(Long film_id) {
		this.film_id = film_id;
	}
	public String getFilm_ad() {
		return film_ad;
	}
	public void setFilm_ad(String film_ad) {
		this.film_ad = film_ad;
	}
	public String getIMDb() {
		return IMDb;
	}
	public void setIMDb(String iMDb) {
		IMDb = iMDb;
	}
	public String getYapim_yil() {
		return yapim_yil;
	}
	public void setYapim_yil(String yapim_yil) {
		this.yapim_yil = yapim_yil;
	}
	public String getFilm_yonetmen() {
		return film_yonetmen;
	}
	public void setFilm_yonetmen(String film_yonetmen) {
		this.film_yonetmen = film_yonetmen;
	}
	public String getSenarist() {
		return senarist;
	}
	public void setSenarist(String senarist) {
		this.senarist = senarist;
	}
	public String getFilm_oyuncu() {
		return film_oyuncu;
	}
	public void setFilm_oyuncu(String film_oyuncu) {
		this.film_oyuncu = film_oyuncu;
	}
	public String getFilm_aciklama() {
		return film_aciklama;
	}
	public void setFilm_aciklama(String film_aciklama) {
		this.film_aciklama = film_aciklama;
	}
	public String getFilm_media() {
		return film_media;
	}
	public void setFilm_media(String film_media) {
		this.film_media = film_media;
	}
	public String getFilm_dil() {
		return film_dil;
	}
	public void setFilm_dil(String film_dil) {
		this.film_dil = film_dil;
	}
	public String getFilm_kategori() {
		return film_kategori;
	}
	public void setFilm_kategori(String film_kategori) {
		this.film_kategori = film_kategori;
	}
	private String film_kategori;
}
