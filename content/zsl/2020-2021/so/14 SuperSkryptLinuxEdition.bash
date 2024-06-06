#!/bin/bash

# ______ ______  	      ~Pawel Pasternak, 01.03.2021~
#(_____ (_____ \ 	SuperSkrypt Linux Edition to prosty projekt
# _____) )____) )	na lekcje systemow operacyjnych w klasie 2.
#|  ____/  ____/ 	Skrypt ten bedzie kozystal z dialogu czyli 
#| |    | |      	programu umozliwiajacego wyswietlanie tek-
#|_|    |_|           	-stowych widzetow interfejsu w konsoli.

### INSTALACJA DIALOGU
#Sprawdza czy dialog jest zainstalowany w systemie, jesli jest, to wypisuje ze dialog jest zainstalowany, a jesli nie, pyta czy chcemy go zainstalowac
if [[ $(which dialog) ]]; then
	echo "Dialog jest zainstalowany"
else
	echo "Dialog nie jest zainstalowany"
	echo 
	#Rozpoczecie nieskonczonej petli
	while true; do
		#Odczytanie z konsoli co wpisal uzytkownik i zdeklarowanie tego jako zmiennej "tn"
		read -p "Czy chcesz go zainstalowac? (Jesli nie skrypt nie zadziala) (dziala tylko w Debianie) [t/n]" tn
		#Sprawdzanie co wpisal uzytkownikm jesli tak, to wykonuje polecenie instalacji, jesli nie, wychodzi z programu, jesli cos innego to kontynuuje petle
		case $tn in
			[Tt][Aa][Kk]|[Tt]* ) sudo apt install dialog; break;;
			[Nn][Ii][Ee]|[Nn]* ) exit;;
			*) echo "Wpisz Tak/t lub Nie/n";;
		esac
	done
fi

# #Czekanie jednej sekundy po sprawdzeniu czy dialog jest zainstalowany
#echo Odczekaj 1 sekunde
#Polecenie sleep zatrzymuje program na okreslony czas
#sleep 1s

### USTAWIENIA GRAFICZNE DIALOGU
if test -f /home/$USER/.dialogrc ; then
	mv /home/$USER/.dialogrc /home/$USER/.dialogrc.backup
fi
# dialog --create-rc /home/$USER/.dialogrc
echo -e 'aspect = 0 \n separate_widget = "" \n tab_len = 0 \n visit_items = OFF \n use_shadow = ON \n use_colors = ON \n screen_color = (YELLOW,BLACK,ON) \n shadow_color = (BLACK,YELLOW,ON) \n dialog_color = (WHITE,BLACK,OFF) \n title_color = (YELLOW,BLACK,ON) \n border_color = (WHITE,BLACK,ON) \n button_active_color = (BLACK,YELLOW,ON) \n button_inactive_color = dialog_color \n button_key_active_color = button_active_color \n button_key_inactive_color = (YELLOW,BLACK,OFF) \n button_label_active_color = (BLACK,YELLOW,ON) \n button_label_inactive_color = (WHITE,BLACK,ON) \n inputbox_color = dialog_color \n inputbox_border_color = dialog_color \n searchbox_color = dialog_color \n searchbox_title_color = title_color \n searchbox_border_color = border_color \n position_indicator_color = title_color \n menubox_color = dialog_color \n menubox_border_color = border_color \n item_color = dialog_color \n item_selected_color = button_active_color \n tag_color = title_color \n tag_selected_color =  button_label_active_color \n tag_key_color = button_key_inactive_color \n tag_key_selected_color = (BLACK,YELLOW,ON) \n check_color = dialog_color \n check_selected_color = button_active_color \n uarrow_color = (RED,WHITE,ON) \n darrow_color = uarrow_color \n itemhelp_color = (WHITE,BLACK,OFF) \n form_active_text_color = button_active_color \n form_text_color = (BLACK,YELLOW,ON) \n form_item_readonly_color = (YELLOW,BLACK,ON) \n gauge_color = title_color \n border2_color = dialog_color \n inputbox_border2_color = dialog_color \n searchbox_border2_color = dialog_color \n menubox_border2_color = dialog_color' > /home/$USER/.dialogrc

#Pasek ładowania
(i=34 
while [ $i -ne 100 ]; do
	echo $i
	echo "XXX"
	echo "Ladowanie skryptu, prosze czekac ($i%)"
	echo "XXX"
	((i+=33))
	sleep 0.5s
done) | dialog --gauge "Ladowanie skryptu, prosze czekaj" 7 60 0


### LOGO
#Wyswietlenie przez 4 sekundy (--sleep 4) loga w oknie (--infobox "") o rozmiarze 13 na 40 ( po poleceniu -> h/w) na samym poczatku po sprawdzeniu czy dialog jest zainstalowany
dialog --sleep 4 --infobox "    ____                          \n   / ___| _   _ _ __   ___ _ __   \n   \___ \| | | | '_ \ / _ \ '__|  \n    ___) | |_| | |_) |  __/ |     \n  _|____/ \__,_| .__/ \___|_| _   \n / ___|| | ___ |_|_   _ _ __ | |_ \n \___ \| |/ / '__| | | | '_ \| __|\n  ___) |   <| |  | |_| | |_) | |_ \n |____/|_|\_\_|   \__, | .__/ \__|\n                  |___/|_|        \n  ~Linux Edition™" 13 40 

### EGZAMIN
function Egzamin {
local OUT=/tmp/input.txt
local a=0

local DATEStart=$(date +%d.%m.%Y-%H:%M:%S)

function PoprawnaOdp {
	dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	--title "TEST EE08" \
	--msgbox "Dobra Odpowiedz!" 0 0 
}

function BlednaOdp {
	dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	--title "TEST EE08" \
	--msgbox "Zla Odpowiedz!" 0 0 
}

	
function pytanie1 {

	dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	--title "TEST EE08" \
	--menu "1. Programem typu wirus, którego głównym celem jest rozprzestrzenianie się w sieci komputerowej, jest:" 0 0 0  \
	1 "Trojan" \
	2 "Robak" \
	3 "Backdoor" \
	4 "Keylogger" 2>"${OUT}"
		
	ODP=`cat $OUT`
	
	case $ODP in
	1) BlednaOdp && let a=$(( a+0 ));;
	2) PoprawnaOdp && let a=$(( a+1 ));;
	3) BlednaOdp && let a=$(( a+0 ));;
	4) BlednaOdp && let a=$(( a+0 ));;
	esac
	
	}

function pytanie2 {

	dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	--title "TEST EE08" \
	--menu "2. Aby przywrócić ustawienia domyślne płyty głównej w przypadku, gdy nie ma możliwości uruchomienia programu BIOS Setup, należy:" 0 0 0  \
	1 "Zaktualizowac BIOS Setup" \
	2 "Przelozyc zworke na plycie glownej" \
	3 "Doladowac baterie na plycie glownej" \
	4 "Uruchomic ponownie system" 2>"${OUT}"
        
	ODP=`cat $OUT`
    
	case $ODP in
	1) BlednaOdp && let a=$(( a+0 ));;
	2) PoprawnaOdp && let a=$(( a+1 ));;
	3) BlednaOdp && let a=$(( a+0 ));;
	4) BlednaOdp && let a=$(( a+0 ));;
	esac
     
}
    
function pytanie3 {

	dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	--title "TEST EE08" \
	--menu "3. Sprawdzenie minimalnego okresu ważności hasła w systemie Windows umożliwia polecenie" 0 0 0  \
	1 "net user" \
	2 "net group" \
	3 "net accounts" \
	4 "net time" 2>"${OUT}"
       
	ODP=`cat $OUT`
    
	case $ODP in
	1) BlednaOdp && let a=$(( a+0 ));;
	2) BlednaOdp && let a=$(( a+0 ));;
	3) PoprawnaOdp && let a=$(( a+1 ));;
	4) BlednaOdp && let a=$(( a+0 ));;
	esac
    
}
    
function pytanie4 {

	dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	--title "TEST EE08" \
	--menu "4. Protokół umożliwiający pobieranie poczty e-mail z serwera to:" 0 0 0  \
	1 "SMTP" \
	2 "FTP" \
	3 "DNS" \
	4 "POP3" 2>"${OUT}"
        
	ODP=`cat $OUT`
    
	case $ODP in
	1) BlednaOdp && let a=$(( a+0 ));;
	2) BlednaOdp && let a=$(( a+0 ));;
	3) BlednaOdp && let a=$(( a+0 ));;
	4) PoprawnaOdp && let a=$(( a+1 ));;
	esac
    
}
    
function pytanie5 {

	dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	--title "TEST EE08" \
	--menu "5. Do porównywania liczb binarnych służą" 0 0 0  \
	1 "demultipleksery" \
	2 "komparatory" \
	3 "sumatory" \
	4 "multipleksery" 2>"${OUT}"
	      
	ODP=`cat $OUT`
    
	case $ODP in
	1) BlednaOdp && let a=$(( a+0 ));;
	2) PoprawnaOdp && let a=$(( a+1 ));;
	3) BlednaOdp && let a=$(( a+0 ));;
	4) BlednaOdp && let a=$(( a+0 ));;
	esac
      
}
    
pytanie1
pytanie2
pytanie3
pytanie4
pytanie5
echo $a
    
dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	--title "Koniec Testu EE08" \
	--yesno "Zdobyles $a punktow. Czy chcesz zapisac swoj wynik?" 0 0
yn=$?
case $yn in
# echo zdobyles $a punktow > /home
	0) local DATE=$(date +%d.%m.%Y-%H:%M:%S) 
	echo "Data rozpoczecia: $DATEStart" > /home/$USER/Desktop/TEST_EE08-$DATE.txt
	echo "Data zakonczenia: $DATE" >> /home/$USER/Desktop/TEST_EE08-$DATE.txt
	echo "$USER zdobyles $a puntkow na 5" >> /home/$USER/Desktop/TEST_EE08-$DATE.txt
	dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Zdobyles $a punktow. Wynik zostal zapisany na pulpicie" 0 0;;
        1) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Wynik nie zostal zapisany" 0 0;;
esac
rm /tmp/input.txt
}

### WLASCIWY SKRYPT
#ustawiamy plik w ktorym beda zapisywane odpowiedzi uzytkownika i wyniki polecen
TFI=/tmp/TFI.sh.$$
TFO=/tmp/TFO.sh.$$

##POLECENIA Z WYSWIETLANIEM
function wyswietlanie {
#Wyswietlenie menu z ktorego mozna wybrac jedna opcje (--menu), o tytule (""), rozmiarze okna (h1/w) i rozmiarze samego menu (h2), czyli z wylaczeniem paska dla tytulu, a nastepnie wylistowanie opcji
dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	--menu "Wybierz jakie informacje chcesz wyswietlic: " 0 0 0 \
	1 "Uzytkownicy" \
	2 "Grupy do ktorych nalezy twoj uzytkownik" \
	3 "Zainstalowane srodowiska graficzne" \
	4 "Zainstalowane aplikacje" \
	5 "Pliki tmp" \
	6 "Jak dlugo jest juz uruchomiony system" \
	7 "Konfiguracje kart sieciowych" \
	8 "Ilosc wolnego miejsca" 2>"${TFI}" #2>"${TFI}" (TemporaryFile-Input) przesyla wynik z menu do pliku ktory zdeklarowalismy w zmiennej TF

#wyciagamy wynik z pliku TFI i zapisujemy go do zmiennej ODP
ODP=`cat $TFI`
#sprawdzamy ktora opcje wybral uzytkownik
case $ODP in
	1) (echo "root" && ls /home)>${TFO};\
	 dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Uzytkownicy w systemie:" \
	 --msgbox "$(cat $TFO)" 0 0;;
	2) (groups|tr ' ' '\n')>${TFO};\
	 dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Grupy uzytkownika:" \
	 --msgbox "$(cat $TFO)" 0 0;;
	3) (ls /usr/share/xsessions/ | awk -F '.desktop' '{print $1}')>${TFO};\
	 dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Srodowiska graficzne:" \
	 --msgbox "$(cat $TFO)" 0 0;;
	4) (ls /usr/share/applications | awk -F '.desktop' '{print $1}')>${TFO};\
	 dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Zainstalowane aplikacje:" \
	 --msgbox "$(cat $TFO)" 0 0;;
	5) (ls /tmp)>${TFO};\
	 dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Pliki tmp" \
	 --msgbox "$(cat $TFO)" 0 0;;
	6) (uptime -p)>${TFO};\
	 dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Uptime" \
	 --msgbox "$(cat $TFO)" 0 0;;
	7) (ip a)>${TFO};\
	 dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Karty Sieciowe:" \
	 --help-button --help-label "Ciekawostka" \
	 --msgbox "$(cat $TFO)" 38 50 
	 
	return_value=$?
	case $return_value in
		2) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --title "Ciekawostka" \
		--msgbox "Co oznaczaja prefiksy w nazwach interfejsow sieciowych \n\n *   lo -- loopback \n *   en -- ethernet \n *   sl -- serial line IP (slip) \n *   wl -- wlan \n *   ww -- wwan \n\n  *takie nazewnictwo wystepuje jezeli kozystamy z systemd, czyli najpopularniejszego menadzera systemu i uslug dla Linuks (wystepuje m.in. na Ubuntu)
		" 18 50;;
	esac;;
	 
	8) (df -h --output=avail /|head -2|tail -1)>${TFO};\
	 dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Wolne miejsce:" \
	 --msgbox "$(cat $TFO)" 0 0;;
esac
}

##POLECENIA ZE ZMIENIANIEM
function zmien {
dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak"\
	--menu "Wybierz dane ktore chcesz zmienic" 0 0 0 \
	1 "Date" \
	2 "Czas" \
	3 "Umask"  2>"${TFI}"

ODP=`cat $TFI`
case $ODP in
#stdout sprawia ze zmienna date przyjmuje wartosc jaka jej nadamy w dialogu
	1) date=$(dialog --stdout \
	 --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Zmiana daty" \
	 --date-format %d/%m/%Y \
	 --calendar "Wybierz date:" 0 0)
	case $? in
		0) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --title "Wybrana data:" --yesno "Czy jestes pewny ze chcesz ustwic te date? $date" 0 0 
		yn=$?
		case $yn in
			0) sudo date +%d/%m/%Y -s "$date" && dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Zmieniono date na $date!" 6 30;;
			1) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Nie zmieniono daty" 6 30;;
		esac;;
	 esac;;
	 
	2) time=$(dialog --stdout \
	 --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Zmiana czasu" \
	 --timebox "Wybierz czas jaki chcesz ustawic:" 0 0) 
	 case $? in
		0) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --title "Wybrany czas:" --yesno "Czy jestes pewny ze chcesz ustwic ten czas? $time" 0 0 
		yn=$?
		case $yn in
			0) sudo date +%T -s $time && dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Zmieniono czas na $time!" 6 30;;
			1) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Nie zmieniono czasu" 6 30;;
		esac;;
	 esac;;
	 
	3) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Zmiana maski" \
	 --inputbox "Wpisz maske (np.: 0002):" 0 0 2>"${TFI}"
	response=$?
	mask=`cat $TFI`
	 case $response in
	 	0) umask $mask && dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Maska zostala ustawiona na `umask` " 6 30;;
	 	1)dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Maska nie zostala zmieniona" 6 30;
	 esac;;
esac
}

##MENU GLOWNE
# nieskonczona petla ktora wykonuje sie zaraz po logo
while true; do

#jesli chcesz zeby sie nie czyscil ekran za kazdym razem gdy wchodzisz do glownego menu to zkmontuj clear
#clear

dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	--title "Menu Glowne" \
	--cancel-label "EXIT" \
	--help-button --help-label " INFO " \
	--item-help \
	--menu "Wybierz co chcesz zrobic" 0 0 0  \
	1 "Wyswietlanie informacji" "Menu z ktorego mozna wyswietlac rozne informacje"\
	2 "Zmiana danych" "Menu z ktorego mozna zmieniac rozne dane"\
	3 "Usuwanie plikow tmp" "Robi to co w tytule"\
	4 "Komunikat" 'Wyswietla komunikat "Lubie sie uczyc do Egzaminu EE08"'\
	5 "Blokada wybranego konta" "Blokuje wpisane przez uzytkownika konto"\
	6 "Szukanie plikow wiekszych od" "Wyswietla pliki wieksze od rozmiaru ktory uzytkownik wpisal"\
	7 "Zrzut ekarnu" "Robi zrzut ekranu i zapisuje na pulpicie"\
	8 "Test EE08" "Otwiera test EE08 skladajacy sie z 5 pytan"\
	9 "Wyjscie" "Wychodzi z programu" 2>"${TFI}"
	
return_value=$?

#Kolejne przyciski maja swoje wartosci wyjsciowe
#ok=0, cancel=1, *help=2, *extra=3, *item-help=4, esc=5
# *przyciski te mozna dodac za pomoca flag przy poleceniu dialogu --help-putton --extra-button --item-help
case $return_value in
	1) clear && echo "Exit button was pressed, exiting SUPER SKRYPT Linux Edition" 
	rm /home/$USER/.dialogrc
	if test -f /home/$USER/.dialogrc.backup ; then
		mv /home/$USER/.dialogrc.backup /home/$USER/.dialogrc
	fi
	exit ;;
	2) echo "INFO pressed. "
	dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
		--title "Informacje dotyczce projektu" \
		--help-button --help-label "Wiecej Informacji" \
		--msgbox "
\n      ~Pawel Pasternak, 01.03.2021~ \n\n
SuperSkrypt Linux Edition to prosty projekt
na lekcje systemow operacyjnych w klasie 2. \n\n
Skrypt ten bedzie kozystal z dialogu czyli 
programu umozliwiajacego wyswietlanie tek-
-stowych widzetow interfejsu w konsoli. 
		 " 15 48 
		 
		 return_value=$?
		 
		 case $return_value in
		 	2) 
		dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
			--title "Informacje dotyczce projektu c.d." \
			--msgbox "Prace nad projektem zaczalem sam, jednak po jakim czasie dolaczyl sie do mnie Maciej Welpa, z ktorym to wspolnie zrobilismy takie elementy jak: test EE08, komunikat, blokada konta, czy umask. Kiedy udalo sie ukonczyc wszystkie polecenia, zakonczylem wspolprace z Mackiem i wszystkie udoskonalenia, dodatki estetyczne czy dodatkowe funkcje wykonalem juz sam. \n\n   ~Pawel Pasternak" 15 48 ;;
		 esac;;
esac
	 
ODP=`cat $TFI`
case $ODP in
	1) wyswietlanie ;;
	2) zmien ;;
	
	3) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --title "Menu Glowne" --yesno "Czy na pewno chcesz usunac pliki TMP?" 0 0
	 yn=$?
	 case $yn in
		 0) sudo rm -rf /tmp/* && dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Pliki TMP zostaly usuniete!" 6 30;;
		 1) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Pliki TMP NIE zostaly usuniete" 6 30;;
	 esac;;
	
	4) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Ustawienie powiadomienia" \
	 --yesno 'Czy chcesz wlaczyc komunikat: "Lubie sie uczyc do Egzaminu EE08"? \nBedzie on wyswietlany codziennie o 8:00 rano' 0 0
	 yn=$?
	 case $yn in
	 	0) echo '0 8  * * * notify-send -i /usr/share/icons/Humanity/actions/128/help-hint.svg "Przypomnienie" "Lubie uczyc sie do egzaminu EE08"'> crontab.txt && crontab -l | cat - crontab.txt && crontab crontab.txt && rm crontab.txt && notify-send -i /usr/share/icons/Humanity/actions/128/help-hint.svg "Przypomnienie" "Lubie uczyc sie do egzaminu EE08" && dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 	 --msgbox "Komunikat zostal ustawiony i tak bedzie wygladal" 0 0;;
	 	1) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 	 --msgbox "Komunikat nie zostal ustawiony" 0 0;;
	 esac;;
	
	5) dialog  --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Blokowanie konta" \
	 --inputbox "Wpisz nazwe uzytkownika" 0 0 2>"${TFI}"
	 response=$?
	 name=`cat $TFI`
	 case $response in
	 	0) sudo usermod -L $name && dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Konto $name ZOSTALO zablokowane!" 6 30;;
	 	#aby upewnic sie ze konto zostalo zablkoowane mozna uzyc poleceni `passwd --status /uzytkownik/`
	 	1) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Konto $name NIE ZOSTALO zablokowane!" 6 30;;
	 esac;;
 
	6) dialog  --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 --title "Wyszukiwanie pliku" \
	 --inputbox "Wpisz od jakiej wielkosci maja byc wyswietlone pliki" 0 0 2>"${TFI}"
	 response=$?
	 size=`cat $TFI`
	 case $response in
	 	0) find / -type f -size +${size}M>${TFI} 
	 	files=${TFI}
	 	n=1
	 	while read line; do 
	 		echo "Plik nr $n: $line"
	 		n=$((n+1))
	 	done < $files
	 	dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" \
	 	--title "Pliki wieksze od ${size}M" \
	 	--textbox ${TFI} 0 0;;
	 	1) dialog --backtitle "SUPER SKRYPT Linux Edition ~by Pawel Pasternak" --msgbox "Anulowano wyszukiwanie plikow" 6 30;;
	 esac;;
	
	# polecenie gnome-screenshot robi ss calego ekranu jezeli dodamy flage -a to mozemy zrobic jego wycinek, z kolei flaga -f "sciezka" ustawia gdzie ma sie zapisac ss
	7) DATE=$(date +%d.%m.%Y-%H:%M:%S)
	gnome-screenshot -f /home/$USER/Desktop/Screenshot-$DATE.png ;;
	
	8) Egzamin;;

	#usuniecie pliku .dialogrc ktory odpowiada za wyglad programu i wyjscie z programu
	9) rm /home/$USER/.dialogrc
	if test -f /home/$USER/.dialogrc.backup ; then
		mv /home/$USER/.dialogrc.backup /home/$USER/.dialogrc
	fi
	exit ;;
esac

#usuwamy plik TFI i TFO jesli istnieje
rm -f /tmp/TFI.sh.* && rm -f /tmp/TFO.sh.*
done