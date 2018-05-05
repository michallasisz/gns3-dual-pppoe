# gns3-dual-pppoe
UNIWERSALNE ZAŁOŻENIA/WYJAŚNIENIA:
-pierwszą czynnością po zalogowaniu na router przed planowanymi  zmianami powinien być backup

 -to co działa w wirtualnym środowisku testowym nie zawsze zadziała na prawdziwym sprzęcie
  i vice versa

-ustawienie dns google (8.8.8.8) jako host docelowy dla netwatcha może nie być dobrym pomysłem,
 lepiej użyć czegoś swojego, co jest dostępne przez obie sesje PPPoE

 -sprawdzanie co sekundę (00:00:01) też nie musi być dobrym pomysłem

 -wyłączenie i włączenie sesji pppoe1 w netwatchu ma na celu szybsze pozbycie się trasy 
  domyślnej z metryką 1(jeśli nie nastąpi wyłączenie ether1 minie chwila zanim sesja zgaśnie)

-wiadomo w rozbudowanej konfiguracji można korzystać z obu łącz z balancingiem/podziałem per usługa 
itp. można to też inaczej zrobić. ta konfiguracja tego nie zakłada.

 -skrypt działa od   momentu  nadania odpowiednich nazw dla pppoe podstawowego(pppoe1) i zapasowego(pppoe2)

  
  