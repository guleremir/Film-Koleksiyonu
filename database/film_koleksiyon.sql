-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Haz 2021, 12:38:50
-- Sunucu sürümü: 10.4.19-MariaDB
-- PHP Sürümü: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `film_koleksiyon`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film`
--

CREATE TABLE `film` (
  `film_id` int(10) NOT NULL,
  `film_ad` char(50) NOT NULL,
  `IMDb` char(10) NOT NULL,
  `yapim_yil` int(10) NOT NULL,
  `film_yonetmen` char(50) NOT NULL,
  `senarist` char(50) NOT NULL,
  `film_oyuncu` char(50) NOT NULL,
  `film_aciklama` text NOT NULL,
  `film_media` char(50) NOT NULL,
  `film_dil` char(30) NOT NULL,
  `film_kategori` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `film`
--

INSERT INTO `film` (`film_id`, `film_ad`, `IMDb`, `yapim_yil`, `film_yonetmen`, `senarist`, `film_oyuncu`, `film_aciklama`, `film_media`, `film_dil`, `film_kategori`) VALUES
(1, 'Inception', '8,8/10', 2010, 'Christopher Nolan', 'Christopher Nolan', 'Leonardo DiCaprio, Marion Cotillard, Elliot Page', 'Leonardo DiCaprio bu yapımda, çok yetenekli bir hırsız olan \"Dom Cobb \" ile karşımızda. Uzmanlık alanı, zihnin en karanlık ve savunmasız olduğu rüya görme anında, bilinçaltının derinliklerindeki değerli sırları çekip çıkarmak ve onları çalmaktır. Cobb\'un bu nadir insanlarda görülebilecek yeteneği, bu ender rastgelinebilecek mahareti, onu kurumsal casusluğun tehlikeli yeni dünyasında aranan bir oyuncu yapmıştır. Aynı zamanda bu durum onu uluslararası bir kaçak yapmış ve sevdiği her şeye mal olmuştur. Cobb\'a içinde bulunduğu durumdan kurtulmasını sağlayacak bir fırsat sunulur. Ona hayatını geri verebilecek son bir iş; tabi eğer imkansız \'başlangıç\'ı tamamlayabilirse. Mükemmel soygun yerine, Cobb ve takımındaki profesyoneller bu sefer tam tersini yapmak zorundadır; görevleri bir fikri çalmak değil onu yerleştirmektir. Eğer başarırlarsa, mükemmel suç bu olacaktır.', 'inception.jpg', 'İngilizce', 'Bilimkurgu'),
(2, 'Lucy', '6,4/10', 2014, 'Luc Besson', 'Luc Besson', 'Scarlett Johansson, Morgan Freeman, Min-sik Choi', 'Tayvan\'ın başkenti Taipei\'nin suça batmış yeraltı dünyası sokak çeteleri, mafya ve işbirlikçi polisler tarafından yönetilirken en aktif ticaret, uyuşturucu ağı üzerinden yürütülür. Eğlenmeyi seven, sıradan bir genç kadın olan Lucy, birkaç gece beraber takıldığı Richard yüzünden kendisini bir anda en azılı uyuşturucu şebekelerinin birinin içine düşmüş bulur. Vücudunun içine kurye olması için yerleştirilen yeni bir tür sentetik uyuşturucu, beklenmedik bir şekilde Lucy\'nin vücuduna nüfuz edip kanına karışmaya başlayınca mucizevi bir durumla yüzleşir. Lucy\'in damarlarında dolaşan kimyasallar, ona insanüstü yetenekler kazandırmıştır! Artık akıl okuma, telekinezi ve acıyı hissetmeme gibi güçlere sahip olan genç kadın beyinin tüm algı kapılarını sonuna kadar açacaktır... ', 'abc', 'İngilizce', 'Bilimkurgu'),
(3, 'Esaretin Bedeli', '9,1/10', 1994, 'Frank Darabont', 'Stephen King', 'Tim Robbins, Morgan Freeman, Bob Gunton', 'Esaretin Bedeli, Andy ve Red isimli iki mahkumun parmaklıklar ardında kurdukları dünyanın hikayesini anlatıyor. Andy Dufresne, genç ve başarılı bir bankerdir. Karısını ve karısının sevgilisini öldürmek suçundan yargılanır ve ömür boyu hapis cezası alır. Shawsank Hapishanesi\'nde dayak, işkence, tecavüz, her türlü durum yaşanmaktadır fakat Andy gene de hayata bağlı ve iyimserdir. Bu tutumu etrafındakileri de etkiler. Andy umutlu bakış açısıyla çevresindeki tüm mahkumları, parmaklıklar arkasında bile özgür bir yaşam olabileceğine inandırır. Andy\'nin bu çabalarına ortak olacak bir arkadaşı da olacaktır: Red.Bir Stephen King uyarlaması olan filmde Morgan Freeman ve Tim Robbins başrolde. Film, 1995\'te, aralarında en iyi film adaylığı da olmak üzere tam 7 dalda Oscar\'a aday gösterildi.', 'esaret.jpg', 'İngilizce', 'Dram'),
(4, 'Harry Potter ve Felsefe Taşı', '7,6/10', 2002, 'Chris Columbus', 'J.K. Rowling', 'Daniel Radcliffe, Rupert Grint, Emma Watson', 'Harry Potter\'ın ailesi ağır ve şaibeli bir trafik kazasında ölmüştür. Öksüz ve yetim kalan Harry\'nin sığınabileceği tek yer, arasının pek de iyi olmadığı teyzesinin yanıdır. Harry, tüm hayatı boyunca idari ailesi tarafından kötü davranışlarla büyütülür. Ancak Harry Potter artık 11 yaşındadır ve Harry\'nin hayalleri ve yetenekleri günden güne su yüzüne çıkmaktadır. Kısa süre sonra Hogwarts büyücülük okuluna davet edilir. Artık tek amacı, ailesinin bu şüpheli kazasını araştırmak ve muhattaplarını cezalandırmaktır.', 'harry.jpg', 'İngilizce', 'Fantastik'),
(5, 'Yüzüklerin Efendisi: Yüzük Kardeşliği', '8,8/10', 2001, 'Peter Jackson', 'Peter Jackson, Fran Walsh', 'Elijah Wood, Sean Astin, Ian McKellen', 'Yüzüklerin Efendisi: Yüzük Kardeşliği, dünyanın kaderini değişterecek olan yüzükten kurtulmak için verilen mücadeleyi konu ediyor. Yıllar önce üretilen ve Orta Dünya topraklarına kandan başka hiçbir şey getirmeyen yüzüklerin sonuncusu, üretiminden yüz yıllar sonra ortaya çıkar. Amcasının kendisine emanet ettiği yüzüğün nelere kadir olduğundan habersiz olan Frodo, büyücü Gandalf\'ın anlattıkları sonrasında dehşete kapılır. Bu yüzükten ve müstakbel savaşlardan kurtulmanın tek yolu, gücünü toplamaya çalışan Sauron\'u da engellemek için bu yüzüğü yok etmektir. Yüzüğü yok edilebileceği tek yer olan Mordor\'a götürmek için kendini feda eden savaşçılardan oluşan bir ekip oluşturulur. Çok uzun ve çetin geçecek olan yolculuk başlar. Orta Dünya\'nın kaderi, bu insanların ellerindedir.\r\n', 'lord.jpg', 'English', 'Fantastik'),
(6, 'Fight Club', '8,8/10', 1999, 'David Fincher', 'Jim Uhls, Chuck Palahniuk', 'Brad Pitt, Edward Norton, Helena Bonham Carter', 'Dövüş Kulübünün birinci kuralı: Asla Dövüş Kulübü hakkında konuşma... Dövüş Kulübünün ikinci kuralı: Asla ve asla dövüş kulübü hakkında konuşma... Jack, hayatın sıradanlığına kapılmış bir sigorta memurudur. Uzun bir süredir \'insomnia\' yani uykusuzluk hastalığından şikayetçidir. Kendi psikolojik sıkıntılarından kurtulabilmek adına grup terapilerine katılmaktadır. Terapiler esnasında Marla adında bir kızla tanışır. Bir süre sonra da hayatını değiştirecek olan Tyler Durden ile... Durden, Jack\'in ulaşmak istediği tüm hedeflere ulaşmış olan bir adamdır ve Jack\'i asla hakkında konuşulmaması gereken bir organizasyon olan \'Dövüş Kulübü\' ile tanıştıracaktır. David Fincher\'ın kısa sürede kült mertebesine erişen filminin popülerliği dillere destan. Filmin başrollerinde de Brad Pitt, Edward Norton ve Helena Bonham Carter gibi ünlü simaları görmek mümkün...', 'fight_club.jpg', 'İngilizce', 'Gerilim'),
(7, 'Matrix', '8,7/10', 1999, 'Lana Wachowski', 'Lana Wachowski, Lilly Wachowski', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', 'Bir yaşanan gerçek vardır, bir de yaşananın ötesinde olan gerçeklik... Biri rüya, diğeri ise Matrix! Neo,son derece tehlikeli bir adam olan Morpheus’un gerçeği bildiğine inanmaktadır. Bir gece Neo, kendisini başka bir dünyaya götürebilecek güzel yabancı Trinity ile tanışır. Bu kızın götüreceği dünyada, Neo Morpheus’u bulacak ve Matrix hakkında bir şeyler öğrenecektir. Neo, Tam olarak kavrayamadığı şeylerin yaşamını kontrol ettiğini biliyor.. Nedir bu Matrix?', 'matrix.jpg', 'İngilizce', 'Bilimkurgu'),
(8, 'Tron Efsanesi', '6,8/10', 2011, 'Joseph Kosinski', 'Adam Horowitz, Richard Jefferies', 'Jeff Bridges, Garrett Hedlund, Olivia Wilde', 'Kült bilgisayar oyunundan uyarlanan ilk filmin ardından, yenilenmiş ve göz kamaştırıcı görsel efektleri arkasına almış, 3D ileri teknoloji macerası TRON Efsanesi\'nde, Kevin Flynn\'in 27 yaşındaki teknoloji meraklısı oğlu Sam Flynn, babasının ortadan kayboluşunu araştırır ve kendini babasının 25 yıldır yaşadığı Tron\'un dijital dünyasında bulur.Kevin\'in sadık arkadaşı Quorra\'yla birlikte, baba ve oğul çok fazla gelişmiş ve son derece tehlikeli bir hale gelen, görsel açıdan üst düzey sanal alemde bir ölüm kalım yolculuğuna çıkarlar...', 'tron.jpg', 'İngilizce', 'Bilimkurgu'),
(9, 'Kuzey Güney', '7,6/10', 2011, 'Melek Gençoğlu', 'Melek Gençoğlu, Ece Yörenç', 'Kıvanç Tatlıtuğ, Buğra Gülsoy, Öykü Karayel', 'Başrollerini Kıvanç Tatlıtuğ, Buğra Gülsoy ve Öykü Karayel\'in paylaştığı Kuzey Güney, yeni sezonun en iddialı yapımlarından biri. Birbirine zıt iki karakteri oynayacak olan Tatlıtuğ ve Gülsoy, Kuzey Güney için bir araya geldi.Kuzey ve Güney çocukluklarından beri, birbirlerinde çok zıt karakterlere sahip iki kardeş. Kuzey\'in serseri ve umursamaz tavırları, sorumluluk sahibi Güney\'i hep sinir etmiştir. Aynı kızı seven Kuzey ve Güney\'in birbirlerinden habersiz büyüttükleri sevgileri, Kuzey\'in aşkını itiraf edeceği an öğrendiği acı gerçekle tokat gibi yüzüne çarpar.O günün uğursuzluğu bununla bitmeyecektir. Gecenin sonunda yaşanan acı olay, herkesin hayatını sonsuza kadar değiştirir.', 'kuzeyguney.jpg', 'Türkçe', 'Dram'),
(10, 'Ezel', '8,6/10', 2009, 'Kerem Deren', 'Pınar Bulut', 'Kenan İmirzalıoğlu, Cansu Dere, Haluk Bilginer', 'Ömer, babasının atölyesinde çalışarak sade bir hayat içerisinde yaşamını sürdüren bir gençtir. Askerlik dönüşü sevgilisi Eyşan ile evlenmeyi planlamaktadır. Fakat kendisini bir anda cinayetten hapiste bulunca hayatı allak bullak olur. Hapisteyken tanıştığı Ramiz Dayı, ikinci babası olur. Ömer kimliğini saklayarak, bir dizi estetik operasyon sonrası Ezel\'e dönüşür. Hapishaneden çıktıktan sonra kendisine oyun oynandığına inanarak intikam için Eyşan\'ın, en iyi arkadaşı Cengiz\'in ve abisi bildiği Ali’nin peşine düşer... Aşk, güç, para, mafya entrikaları hayatlarının bir parçasına dönüşürken, her biri intikamdan beslenir...', 'ezel.jpg', 'Türkçe', 'Aksiyon');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `film`
--
ALTER TABLE `film`
  MODIFY `film_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
