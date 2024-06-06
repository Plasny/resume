::SuperSkrypt (Projekt na Systemy Operacyjne)
::Paweł Pasternak 
::26.09.2020

@echo off
::wyłącza wypisywanie komend

:start
mode 60,10 
::ustawia rozmiar okna na 60 kolumn i 8 wierszy
color 0B
::ustawia kolor na czarne tło (0) i tekst w kolorze aqua (B)
cls
::czyści ekran

type logo.txt 
::wkleja tekst z pliku logo.txt

echo. 
::pusta linijka

timeout /t 5
::zatrzymuje program na 5 sekund

:autor
mode 60,8
cls

echo.
echo                 'Autor: Pawel Pasternak'
echo                   'Z klasy 2Ib, nr 26'
echo.

timeout /t 5


:menu0
mode 80,30
color 0F
cls

echo ________________________________________________________________________________
echo                      ***Wybierz polecenie z listy ponizej.***
echo ________________________________________________________________________________
echo.
echo 1) Menu uzytkownikow i grup;
echo 2) Informacje o systemie;
echo 3) Narzedzia;
echo 4) Zapis 'specjalnych' plikow;
echo 5) Uruchamianie;
echo 6) Test;
::echo 7) Zaglada;
::Blue Screen
echo E) Exit.
echo.

set /p opcja=wybierz:
if %opcja%==1 goto menu1
if %opcja%==2 goto menu2
if %opcja%==3 goto menu3
if %opcja%==4 goto menu4
if %opcja%==5 goto menu5
if %opcja%==6 goto menu6
::if %opcja%==7 goto menu7
if %opcja%==E goto exitss
if %opcja%==e goto exitss
goto wrongentry

::uzytkownkicy i grupy ############################################################
:menu1
color 03
cls

echo ________________________________________________________________________________
echo Menu uzytkonikow i grup.
echo ________________________________________________________________________________
echo.
echo 1) Wyswietl informacje o aktualnie zalogowanym uzytkowniku;
echo 2) Wyswietl informacje o grupach w systemie
echo 3) Wyswietl kto nalezy do grupy Administratorzy
echo 4) Plik z informacjami
echo W) Wroc do menu glownego
echo.

set /p opcja=wybierz:
if %opcja%==1 goto opcja1.1
if %opcja%==2 goto opcja1.2
if %opcja%==3 goto opcja1.3
if %opcja%==4 goto opcja1.4
if %opcja%==W goto menu0
if %opcja%==E goto exitss
if %opcja%==w goto menu0
if %opcja%==e goto exitss
goto wrongentry

:opcja1.1
cls
net user %username%
pause
goto menu1

:opcja1.2
cls
net localgroup
pause
goto menu1

:opcja1.3
cls
net localgroup Administratorzy
pause
goto menu1

:opcja1.4
cls

echo ________________________________________________________________________________ >IoUiG.txt
echo informacje o aktualnie zalogowanym uzytkowniku: >>IoUiG.txt
echo. >>IoUiG.txt
net user %username% >>IoUiG.txt
echo. >>IoUiG.txt
echo ________________________________________________________________________________ >>IoUiG.txt
echo informacje o grupach w systemie: >>IoUiG.txt
echo. >>IoUiG.txt
net localgroup >>IoUiG.txt
echo. >>IoUiG.txt
echo ________________________________________________________________________________ >>IoUiG.txt
echo Administratorzy: >>IoUiG.txt
echo. >>IoUiG.txt
net localgroup Administratorzy >>IoUiG.txt
echo. >>IoUiG.txt


echo.
echo Tworzenie
echo.
timeout /t 1

echo.
echo Tworzenie .
echo.
timeout /t 1

echo.
echo Tworzenie . .
echo.
timeout /t 1

echo.
echo Tworzenie . . .
echo.
timeout /t 1

cls
echo.
echo Twoj plik z informacjami bedzie miec nazwe IoUig.txt
echo I znajdzie sie w tym samym folderze co skrypt.
echo.
echo Wroc do menu uzytkownikow i grup.
pause
goto menu1

::system info ############################################################
:menu2
color 0E
cls

echo ________________________________________________________________________________
echo Menu Informacji o Systemie
echo ________________________________________________________________________________
echo.
echo 1) Informacje o wersji systemu;
echo 2) TEMP;
echo 3) Adres MAC karty sieciowej;
echo 4) Lista Procesow;
echo 5) Wyswietlenie wszystkich atrybutow plikow znajdujacych sie w katalogu w ktorym zostal uruchomiony skrypt;
echo W) Wroc do menu glownego.
echo.

set /p opcja=wybierz:
if %opcja%==1 goto opcja2.1
if %opcja%==2 goto opcja2.2
if %opcja%==3 goto opcja2.3
if %opcja%==4 goto opcja2.4
if %opcja%==5 goto opcja2.5
if %opcja%==W goto menu0
if %opcja%==E goto exitss
if %opcja%==w goto menu0
if %opcja%==e goto exitss
goto wrongentry

:opcja2.1
cls
echo Informacje o wersji systemu:
echo.
ver
echo.
echo.
pause
goto menu2

:opcja2.2
mode 80,30
cls
echo ********************************************************************************
echo TEMP
echo ********************************************************************************
echo.
echo a) Wyswietlenie plikow TEMP
echo b) Usuniecie plikow TEMP
echo W) Wroc do Menu informacji o systemie
echo.

set /p opcja=wybierz:
if %opcja%==a goto temp1
if %opcja%==b goto temp2
if %opcja%==E goto exitss
if %opcja%==W goto menu2
if %opcja%==w goto menu2
if %opcja%==e goto exitss
goto wrongentry

:temp1
mode 80,60
cls 
dir %TEMP% 
pause
goto opcja2.2

:temp2
cls

cd %TEMP%
::przechodzi do folderu z tymczasowymi plikami
del * /Q
::usuwa wszystko

echo.
echo Folder TEMP zostal wyczyszczony.
echo.

pause
goto opcja2.2


:opcja2.3
cls
echo.
echo Adres Karty Sieciowej
echo.
getmac
pause
goto menu2

:opcja2.4
mode 80,60
cls 
echo.
echo Lista Procesow
echo.
tasklist
pause
goto menu2

:opcja2.5
mode 80,30
cls
echo.
echo Atrybuty plikow w katalogu 
echo.
attrib
pause
goto menu2

::Narzedzia ############################################################
:menu3
color 0D
cls
echo ________________________________________________________________________________
echo Narzedzia
echo ________________________________________________________________________________
echo.
echo Karty_sieciowe (polaczenia sieciowe)
echo Kopia_zapasowa
echo Lupa 
echo Menedzer_urzadzen
echo Panel_sterowania 
echo Podglad_zdarzen
echo Pomoc_zdalna
echo Programy_i_funkcje
echo Punkt_przywracania
echo Rejestr
echo Rejestrator_krokow
echo Tablica_znakow
echo Zarzadzanie_dyskami
echo Zarzadzanie_uzytkownikami
echo Zarzadzanie_zasadami_grup
echo W) Wroc do menu glownego
echo.

set /p opcja=wybierz:
if %opcja%==Karty_sieciowe goto ks
if %opcja%==Kopia_zapasowa goto kz
if %opcja%==Lupa goto lupa
if %opcja%==Menedzer_urzadzen goto mu
if %opcja%==Panel_sterowania goto ps
if %opcja%==Podglad_zdarzen goto pz
if %opcja%==Pomoc_zdalna goto zp
if %opcja%==Programy_i_funkcje goto pif
if %opcja%==Punkt_przywracania goto pp
if %opcja%==Rejestr goto rejestr 
if %opcja%==Rejestrator_krokow goto rk
if %opcja%==Tablica_znakow goto tz
if %opcja%==Zarzadzanie_dyskami goto zd
if %opcja%==Zarzadzanie_uzytkownikami goto zu
if %opcja%==Zarzadzanie_zasadami_grup goto zz
if %opcja%==W goto menu0
if %opcja%==E goto exitss
if %opcja%==w goto menu0
if %opcja%==e goto exitss
goto wrongentry

:ks
cls
echo.
echo Karty sieciowe (polaczenia sieciowe)
echo.
ncpa.cpl
pause
goto menu3

:kz
cls
echo.
echo Kopia zapasowa
echo.
wbadmin
pause
goto menu3

:lupa
cls
echo.
echo Lupa
echo.
magnify
pause
goto menu3

:mu
cls
echo.
echo Menedzer urzadzen
echo.
devmgmt.msc
pause
goto menu3

:ps
cls
echo.
echo Panel sterowania
echo.
Control
pause
goto menu3

:pz
cls
echo.
echo Podglad zdarzen
echo.
Eventvwr.exe
pause
goto menu3

:zp
cls
echo.
echo Pulpit zdalny
echo.
mstsc.exe
pause
goto menu3

:pif
cls
echo.
echo Programy i funkcje
echo.
appwiz.cpl
pause
goto menu3

:pp
cls
echo.
echo Punkt przywracania 
echo.
Rstrui.exe
pause
goto menu3

:rejestr
cls
echo.
echo Edytor rejesru
echo.
Regedit.exe
pause
goto menu3

:rk
cls
echo.
echo Rejestrator krokow
echo.
psr.exe
pause
goto menu3

:tz
cls
echo.
echo Tablica znakow
echo.
charmap.exe
pause
goto menu3

:zd
cls
echo.
echo Zarzadzanie dyskami
echo.
diskmgmt.msc
pause
goto menu3

:zu
cls
echo.
echo Zarzadzanie uzytkownikami
echo.
Netplwiz.exe
pause
goto menu3

:zz
cls
echo.
echo Zarzadzanie zasadami grup
echo.
gpedit.msc
pause
goto menu3


::Specjalne pliki ############################################################
:menu4
color 06
cls
echo ________________________________________________________________________________
echo Specjalne Pliki
echo ________________________________________________________________________________
echo.
echo 1) Zapisanie drzewa plikow dysku C: na pulpicie;
echo 2) Zapisanie pliku dlaczego Systemy Operacyjne sa najlepsze
echo 3) Dopisanie informacji do pliku log.txt
echo W) Wroc do menu glownego
echo.

set /p opcja=wybierz:
if %opcja%==1 goto opcja4.1
if %opcja%==2 goto opcja4.2
if %opcja%==3 goto opcja4.3
if %opcja%==W goto menu0
if %opcja%==E goto exitss
if %opcja%==w goto menu0
if %opcja%==e goto exitss
goto wrongentry

:opcja4.1
cls
echo Drzewo dysku C: > C:\Users\%username%\Desktop\Tree.txt
echo. >> C:\Users\%username%\Desktop\Tree.txt
tree C:\ >> C:\Users\%username%\Desktop\Tree.txt

echo.
echo Tworzenie .
echo.
timeout /t 1

echo.
echo Tworzenie . .
echo.
timeout /t 1

echo.
echo Tworzenie . . .
echo.
timeout /t 1

cls
echo.
echo Twoj plik z informacjami bedzie miec nazwe Tree.txt
echo I znajdzie sie na pulpicie.
echo.
echo Wroc do menu Zapisu plikow
pause
goto menu4


:opcja4.2
cls
echo Dlaczego Sytstemy Operacyjne są najelpsze: > Nazwisko.txt
echo.  >> Nazwisko.txt
echo Systemy Operacyjne są naprawdę przyjemnym przedmiotem, dzięki któremu można się dowiedzieć nowych ciekawych rzeczy i poszerzyć swoje horyzonty. >> Nazwisko.txt
echo Pozwalają na znaczące rozszerzenie swojej wiedzy dotyczącej komputerów, ich działania i używanego w nich oprogramowania. >> Nazwisko.txt 
echo Paweł Pasternak 2Ib >> Nazwisko.txt

echo.
echo Tworzenie .
echo.
timeout /t 1

echo.
echo Tworzenie . .
echo.
timeout /t 1

echo.
echo Tworzenie . . .
echo.
timeout /t 1

cls
echo.
echo Twoj plik z informacjami bedzie miec nazwe Nazwisko.txt
echo I znajdzie sie w tym samym folderze co skrypt.
echo.
echo Wroc do menu Zapisu plikow
pause
goto menu4

:opcja4.3
cls
echo - Użytkownik %username% uruchomił dziś (tj %date%; %time%) SuperSkrypt. >> log.txt
echo. >> log.txt

echo.
echo Zapisywanie
echo.
timeout /t 1

cls
echo.
echo Twoj plik z informacjami bedzie miec nazwe log.txt
echo I znajdzie sie w tym samym folderze co skrypt.
echo.
echo Wroc do menu Zapisu plikow
pause
goto menu4

::Uruchamianie ############################################################
:menu5
color 02
cls
echo ________________________________________________________________________________
echo Uruchamianie
echo ________________________________________________________________________________
echo.
echo 1) Uruchomienie strony szkoly w przegladarce;
echo 2) Uruchomienie strony z dziennikiem elektronicznym w przegladarce;
echo 3) Uruchomienie bezpiecznej wyszukiwarki w przegladarce;
echo 4) Uruchomienie notatnika;
echo 5) Zabicie procesu notatnika;
echo 6) Wylaczenie komputera;
echo 7) Wylogowanie uzytkownika;
echo W) Wroc do menu glownego.
echo.

set /p opcja=wybierz:
if %opcja%==1 goto opcja5.1
if %opcja%==2 goto opcja5.2
if %opcja%==3 goto opcja5.3
if %opcja%==4 goto opcja5.4
if %opcja%==5 goto opcja5.5
if %opcja%==6 goto opcja5.6
if %opcja%==7 goto opcja5.7
if %opcja%==W goto menu0
if %opcja%==E goto exitss
if %opcja%==w goto menu0
if %opcja%==e goto exitss
goto wrongentry

:opcja5.1
start http://www.tl.krakow.pl
goto menu5

:opcja5.2
start https://portal.librus.pl/rodzina
goto menu5

:opcja5.3
start https://duckduckgo.com
goto menu5

:opcja5.4
start notepad.exe
goto menu5

:opcja5.5
taskkill /F /IM notepad.exe
::polecenie taskkill zabija proces
::/F wymusza zamknięcie programu pomimo niezapisanych zmian/otwartych wielu kart w przegladarce itp.
::/IM pozwala na zamknięcie programu za pomocą jego nazwy
::/PID umożliwia zabicie procesu za pomocą id procesu
goto menu5

:opcja5.6
shutdown /s
::wyłącza komputer

:opcja5.7
shutdown /l
::wylogowuje aktualnie zalogowanego użytkownika

::TEST ############################################################
:menu6
color 09
cls

SET /A ilosc_pytan = 5
SET /A poprawne_odpowiedzi = 0
SET /A bledne_odpowiedzi = 0
SET /A brak_odpowiedzi = 0

echo ________________________________________________________________________________
echo                                    TEST
echo ________________________________________________________________________________
echo.
echo Aby urochomic test sprawdzajacy twoja wiedze wpisz: start
echo Natomiast jezeli wolisz wrocic do menu glownego uzyj W.
echo.
echo Odpowiedzi na pytania zapisujesz za pomoca wybrania numeru od 1-4, wybierz 5 jesli nie znasz odpowiedzi.
echo.

set /p opcja=wybierz:
if %opcja%==start goto test1
if %opcja%==W goto menu0
if %opcja%==E goto exitss
if %opcja%==w goto menu0
if %opcja%==e goto exitss
goto wrongentry


:test1
echo ________________________________________________________________________________ >> TEST.txt
echo TEST uzytkownika %username%: >> TEST.txt
echo Czas rozpoczecia %time% (%date%) >> TEST.txt
echo. >> TEST.txt

color 09
cls
echo.
echo Licencja Windows OEM NIE pozwala na wymiane:
echo.
echo 1) sprawnego zasilacza na model o lepszych parametrach
echo 2) sprawnej plyty glownej na model o lepszych parametrach
echo 3) sprawnej karty graficznej na model o lepszych parametrach
echo 4) sprawnego dysku twardego na model o lepszych parametrach
echo.

set /p opcja=wybierz:
if %opcja%==1 goto test1-
if %opcja%==2 goto test1+
if %opcja%==3 goto test1-
if %opcja%==4 goto test1-
if %opcja%==5 goto test10 
if %opcja%==e goto exitss
if %opcja%==E goto exitss
goto test1

:test1-
echo Pytanie 1 - odpowiedz bledna >> TEST.txt
cls
color 0C
SET /A bledne_odpowiedzi = %bledne_odpowiedzi% + 1
echo db   d8b   db d8888b.  .d88b.  d8b   db  d888b  
echo 88   I8I   88 88  `8D .8P  Y8. 888o  88 88' Y8b 
echo 88   I8I   88 88oobY' 88    88 88V8o 88 88      
echo Y8   I8I   88 88`8b   88    88 88 V8o88 88  ooo 
echo `8b d8'8b d8' 88 `88. `8b  d8' 88  V888 88. ~8~ 
echo  `8b8' `8d8'  88   YD  `Y88P'  VP   V8P  Y888P  
timeout /t 3
goto test2

:test1+
echo Pytanie 1 - odpowiedz poprawna >> TEST.txt
SET /A poprawne_odpowiedzi = %poprawne_odpowiedzi% + 1
cls
color 0A
echo  .o88b.  .d88b.  d8888b. d8888b. d88888b  .o88b. d888888b 
echo d8P  Y8 .8P  Y8. 88  `8D 88  `8D 88'     d8P  Y8 `~~88~~' 
echo 8P      88    88 88oobY' 88oobY' 88ooooo 8P         88    
echo 8b      88    88 88`8b   88`8b   88~~~~~ 8b         88    
echo Y8b  d8 `8b  d8' 88 `88. 88 `88. 88.     Y8b  d8    88    
echo  `Y88P'  `Y88P'  88   YD 88   YD Y88888P  `Y88P'    YP                                                            
timeout /t 3
goto test2

:test10
echo Pytanie 1 - brak odpowiedzi >> TEST.txt
SET /A brak_odpowiedzi = %brak_odpowiedzi% + 1
goto test2


:test2
color 09
cls
echo.
echo Program WinRaR wyświetli' okienko informacyjne pokazane na rysunku. Z jakiego typu licencji na program korzystal dotychczas uzytkownik?
echo.
echo 1) Adware
echo 2) Freeware
echo 3) Shareware
echo 4) Public Domain
echo.

start https://www.plociennik.info/components/com_egzamin/foto//E12/E12.26-X-13.06.jpg

set /p opcja=wybierz:
if %opcja%==1 goto test2-
if %opcja%==2 goto test2-
if %opcja%==3 goto test2+
if %opcja%==4 goto test2-
if %opcja%==5 goto test20
if %opcja%==e goto exitss
if %opcja%==E goto exitss
goto test2

:test2-
echo Pytanie 2 - odpowiedz bledna >> TEST.txt
cls
color 0C
SET /A bledne_odpowiedzi = %bledne_odpowiedzi% + 1
echo db   d8b   db d8888b.  .d88b.  d8b   db  d888b  
echo 88   I8I   88 88  `8D .8P  Y8. 888o  88 88' Y8b 
echo 88   I8I   88 88oobY' 88    88 88V8o 88 88      
echo Y8   I8I   88 88`8b   88    88 88 V8o88 88  ooo 
echo `8b d8'8b d8' 88 `88. `8b  d8' 88  V888 88. ~8~ 
echo  `8b8' `8d8'  88   YD  `Y88P'  VP   V8P  Y888P  
timeout /t 3
goto test3

:test2+
echo Pytanie 2 - odpowiedz poprawna >> TEST.txt
SET /A poprawne_odpowiedzi = %poprawne_odpowiedzi% + 1
cls
color 0A
echo  .o88b.  .d88b.  d8888b. d8888b. d88888b  .o88b. d888888b 
echo d8P  Y8 .8P  Y8. 88  `8D 88  `8D 88'     d8P  Y8 `~~88~~' 
echo 8P      88    88 88oobY' 88oobY' 88ooooo 8P         88    
echo 8b      88    88 88`8b   88`8b   88~~~~~ 8b         88    
echo Y8b  d8 `8b  d8' 88 `88. 88 `88. 88.     Y8b  d8    88    
echo  `Y88P'  `Y88P'  88   YD 88   YD Y88888P  `Y88P'    YP                                                            
timeout /t 3
goto test3

:test20
echo Pytanie 2 - brak odpowiedzi >> TEST.txt
SET /A brak_odpowiedzi = %brak_odpowiedzi% + 1
goto test3

:test3
color 09
cls
echo.
echo GRUB, LILO, NTLDR to:
echo.
echo 1) wersje glownego interfejsu sieciowego
echo 2) aplikacje do akrualizcji BIOSu
echo 3) firmware dla dysku twardego
echo 4) programy rozruchowe
echo.

set /p opcja=wybierz:
if %opcja%==1 goto test3-
if %opcja%==2 goto test3-
if %opcja%==3 goto test3-
if %opcja%==4 goto test3+
if %opcja%==5 goto test30
if %opcja%==e goto exitss
if %opcja%==E goto exitss
goto test3

:test3-
echo Pytanie 3 - odpowiedz bledna >> TEST.txt
cls
color 0C
SET /A bledne_odpowiedzi = %bledne_odpowiedzi% + 1
echo db   d8b   db d8888b.  .d88b.  d8b   db  d888b  
echo 88   I8I   88 88  `8D .8P  Y8. 888o  88 88' Y8b 
echo 88   I8I   88 88oobY' 88    88 88V8o 88 88      
echo Y8   I8I   88 88`8b   88    88 88 V8o88 88  ooo 
echo `8b d8'8b d8' 88 `88. `8b  d8' 88  V888 88. ~8~ 
echo  `8b8' `8d8'  88   YD  `Y88P'  VP   V8P  Y888P  
timeout /t 3
goto test4

:test3+
echo Pytanie 3 - odpowiedz poprawna >> TEST.txt
SET /A poprawne_odpowiedzi = %poprawne_odpowiedzi% + 1
cls
color 0A
echo  .o88b.  .d88b.  d8888b. d8888b. d88888b  .o88b. d888888b 
echo d8P  Y8 .8P  Y8. 88  `8D 88  `8D 88'     d8P  Y8 `~~88~~' 
echo 8P      88    88 88oobY' 88oobY' 88ooooo 8P         88    
echo 8b      88    88 88`8b   88`8b   88~~~~~ 8b         88    
echo Y8b  d8 `8b  d8' 88 `88. 88 `88. 88.     Y8b  d8    88    
echo  `Y88P'  `Y88P'  88   YD 88   YD Y88888P  `Y88P'    YP                                                            
timeout /t 3
goto test4

:test30
echo Pytanie 3 - brak odpowiedzi >> TEST.txt
SET /A brak_odpowiedzi = %brak_odpowiedzi% + 1
goto test4

:test4
color 09
cls
echo.
echo W systemach operacyjnych Windows ograniczenie uzytkownikom dostepu do poszczegolnych katalogow, plikow lub dyskow umozliwia system plikow:
echo.
echo 1) FAT16
echo 2) FAT32
echo 3) NTFS
echo 4) EXT3
echo.

set /p opcja=wybierz:
if %opcja%==1 goto test4-
if %opcja%==2 goto test4-
if %opcja%==3 goto test4+
if %opcja%==4 goto test4-
if %opcja%==5 goto test40
if %opcja%==e goto exitss
if %opcja%==E goto exitss
goto test5

:test4-
echo Pytanie 4 - odpowiedz bledna >> TEST.txt
cls
color 0C
SET /A bledne_odpowiedzi = %bledne_odpowiedzi% + 1
echo db   d8b   db d8888b.  .d88b.  d8b   db  d888b  
echo 88   I8I   88 88  `8D .8P  Y8. 888o  88 88' Y8b 
echo 88   I8I   88 88oobY' 88    88 88V8o 88 88      
echo Y8   I8I   88 88`8b   88    88 88 V8o88 88  ooo 
echo `8b d8'8b d8' 88 `88. `8b  d8' 88  V888 88. ~8~ 
echo  `8b8' `8d8'  88   YD  `Y88P'  VP   V8P  Y888P  
timeout /t 3
goto test5

:test4+
echo Pytanie 4 - odpowiedz poprawna >> TEST.txt
SET /A poprawne_odpowiedzi = %poprawne_odpowiedzi% + 1
cls
color 0A
echo  .o88b.  .d88b.  d8888b. d8888b. d88888b  .o88b. d888888b 
echo d8P  Y8 .8P  Y8. 88  `8D 88  `8D 88'     d8P  Y8 `~~88~~' 
echo 8P      88    88 88oobY' 88oobY' 88ooooo 8P         88    
echo 8b      88    88 88`8b   88`8b   88~~~~~ 8b         88    
echo Y8b  d8 `8b  d8' 88 `88. 88 `88. 88.     Y8b  d8    88    
echo  `Y88P'  `Y88P'  88   YD 88   YD Y88888P  `Y88P'    YP                                                            
timeout /t 3
goto test5

:test40
echo Pytanie 4 - brak odpowiedzi >> TEST.txt
SET /A brak_odpowiedzi = %brak_odpowiedzi% + 1
goto test5

:test5
color 09
cls
echo.
echo Jaki typ zlacza musi posiadac plyta głowna, aby uzytkownik mogl zainstalowac przedstawiona na rysunku kartr graficzna?
echo.
echo 1) AGP
echo 2) PCI
echo 3) PCIe x1
echo 4) PCIe x16
echo.

set /p opcja=wybierz:
if %opcja%==1 goto test5-
if %opcja%==2 goto test5-
if %opcja%==3 goto test5-
if %opcja%==4 goto test5+
if %opcja%==5 goto test50
if %opcja%==e goto exitss
if %opcja%==E goto exitss
goto test5

:test5-
echo Pytanie 5 - odpowiedz bledna >> TEST.txt
cls
color 0C
SET /A bledne_odpowiedzi = %bledne_odpowiedzi% + 1
echo db   d8b   db d8888b.  .d88b.  d8b   db  d888b  
echo 88   I8I   88 88  `8D .8P  Y8. 888o  88 88' Y8b 
echo 88   I8I   88 88oobY' 88    88 88V8o 88 88      
echo Y8   I8I   88 88`8b   88    88 88 V8o88 88  ooo 
echo `8b d8'8b d8' 88 `88. `8b  d8' 88  V888 88. ~8~ 
echo  `8b8' `8d8'  88   YD  `Y88P'  VP   V8P  Y888P  
timeout /t 3
goto testwyniki

:test5+
echo Pytanie 5 - odpowiedz poprawna >> TEST.txt
SET /A poprawne_odpowiedzi = %poprawne_odpowiedzi% + 1
cls
color 0A
echo  .o88b.  .d88b.  d8888b. d8888b. d88888b  .o88b. d888888b 
echo d8P  Y8 .8P  Y8. 88  `8D 88  `8D 88'     d8P  Y8 `~~88~~' 
echo 8P      88    88 88oobY' 88oobY' 88ooooo 8P         88    
echo 8b      88    88 88`8b   88`8b   88~~~~~ 8b         88    
echo Y8b  d8 `8b  d8' 88 `88. 88 `88. 88.     Y8b  d8    88    
echo  `Y88P'  `Y88P'  88   YD 88   YD Y88888P  `Y88P'    YP                                                            
timeout /t 3
goto testwyniki

:test50
Pytanie 5 - brak odpowiedzi >> TEST.txt
SET /A brak_odpowiedzi = %brak_odpowiedzi% + 1
goto testwyniki

:testwyniki
echo Czas zakonczenia %time% (%date%) >> TEST.txt
echo. >> TEST.txt
echo Udzielono %poprawne_odpowiedzi% poprawnych odpowiedzi >> TEST.txt
echo i %bledne_odpowiedzi% blednych. >> TEST.txt
echo nie udzielono odpowiedzi %brak_odpowiedzi% razy. >> TEST.txt
echo. >> TEST.txt

color 09
cls
echo.
echo Poprawnych odpowiedzi: %poprawne_odpowiedzi%/%ilosc_pytan%
echo Blednych odpowiedzi: %bledne_odpowiedzi%/%ilosc_pytan%
echo Brak odpowiedzi: %brak_odpowiedzi%/%ilosc_pytan%
echo.

pause
goto menu0

:: wyjscie z programu ############################################################
:exitss
exit

:: zly input ############################################################
:wrongentry
color 0C
cls

echo ERROR!!!
echo.
echo OPCJA NIE ZNANA. WYBIERZ PONOWNIE!
echo.
echo.
echo.
echo Uniwersalne komendy: W-wroc do menu wyzej, E-zamknij program
pause
goto menu0

::Autor: Paweł Pasternak 
::26.09.2020