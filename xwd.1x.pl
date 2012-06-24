.\" 1999 PTM Przemek Borys
.\" $XConsortium: xwd.man /main/21 1996/12/09 17:11:08 kaleb $
.\" Copyright (c) 1988, 1994  X Consortium
.\" 
.\" Permission is hereby granted, free of charge, to any person obtaining
.\" a copy of this software and associated documentation files (the
.\" "Software"), to deal in the Software without restriction, including
.\" without limitation the rights to use, copy, modify, merge, publish,
.\" distribute, sublicense, and/or sell copies of the Software, and to
.\" permit persons to whom the Software is furnished to do so, subject to
.\" the following conditions:
.\" 
.\" The above copyright notice and this permission notice shall be included
.\" in all copies or substantial portions of the Software.
.\" 
.\" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
.\" OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
.\" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
.\" IN NO EVENT SHALL THE X CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR
.\" OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
.\" ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
.\" OTHER DEALINGS IN THE SOFTWARE.
.\" 
.\" Except as contained in this notice, the name of the X Consortium shall
.\" not be used in advertising or otherwise to promote the sale, use or
.\" other dealings in this Software without prior written authorization
.\" from the X Consortium.
.TH XWD 1 "Edycja 6.3" "X wersja 11"
.SH NAZWA
xwd - zrzu� obraz okna X
.SH SK�ADNIA
.B "xwd"
[-debug] [-help] [-nobdrs] [-out \fIplik\fP] [-xy] [-frame] [-add \fIwarto��\fP]
[-root | -id \fIid\fP | -name \fInazwa\fP ] [-icmap] [-screen]
[-display \fIwy�wietlacz\fP]
.SH OPIS
.PP
.I Xwd
to narz�dzie do zrzucania zawarto�ci okien X Window System.
.I Xwd
umo�liwia u�ytkownikom X zapisywanie obraz�w okien w specjalnie
sformatowanych plikach zrzutu. Plik ten mo�e by� potem odczytywany przez
r�ne X-narz�dzia w celu ponownego wy�wietlenia, drukowania, edycji,
formatowania, itp. Okno docelowe jest wybierane przez klikni�cie na nim 
wska�nikiem myszy. Na pocz�tku zrzucania w��czany jest dzwonek klawiatury, a
po jego zako�czeniu, dzwonek dzwoni dwukrotnie.
.SH OPCJE
.PP
.TP 8
.B "-display \fIwy�wietlacz\fP"
Argument ten umo�liwia okre�lenie, do kt�rego serwera si� pod��czy�; zobacz
\fIX(1)\fP.
.PP
.TP 8
.B "-help"
Wydrukuj informacje o u�yciu.
.PP
.TP 8
.B "-nobdrs"
Argument en m�wi, �e zrzut okna nie powinien zawiera� pikseli, sk�adaj�cych
si� na jego obramowanie. Jest to przydatne w sytuacjach, kiedy �yczysz sobie
w��czenie zawarto�ci okna do dokumentu jako ilustracj�.
.PP
.TP 8
.B "-out \fIplik\fP"
Ten argument umo�liwia u�ytkownikowi podanie pliku wyj�ciowego zrzutu.
Domy�lnym punktem zrzutu jest standardowe wyj�cie.
.PP
.TP 8
.B "-xy"
Ta opcja tyczy si� tylko kolorowych wy�wietlaczy. Wybiera format `XY'
zrzucania, zamiast domy�lnego `Z'.
.PP
.TP 8
.B "-add \fIwarto��\fP"
Ta opcja okre�la warto�� ze znakiem, kt�ra b�dzie dodawana do ka�dego
piksela.
.PP
.TP 8
.B "-frame"
Ta opcja wskazuje, �e podczas r�cznego wybierania okna, ramka mened�era
okien powinna by� za��czona.
.PP
.TP 8
.B "-root"
Ta opcja wskazuje, �e do zrzutu powinno zosta� wybrane okno g��wne, bez
wymagania od u�ytkownika wybrania okna wska�nikiem.
.PP
.TP 8
.B "-id \fIid\fP"
Ta opcja wskazuje, �e okno o podanym identyfikatorze zasobu powinno by�
wybrane do zrzutu, bez oczekiwania od u�ytkownika wybrania go wska�nikiem.
.PP
.TP 8
.B "-name \fInazwa\fP"
Ta opcja wskazuje, �e okno o podanej w�a�ciwo�ci WM_NAME powinno by� wybrane
do zrzutu, bez oczekiwania od u�ytkownika wybrania okna wska�nikiem.
.PP
.TP 8
.B "-icmap"
Normalnie mapa kolor�w wybranego okna u�ywana jest do uzyskania warto�ci
RGB. Ta opcja wymusza zamiast tego u�ycie zainstalowanej mapy kolor�w ekranu.
.PP
.TP 8
.B "-screen"
Ta opcja wskazuje, �e ��danie GetImage, u�yte do uzyskania obrazu powinno
by� wykonane na raczej oknie g��wnym ni� bezpo�rednio na okre�lonym oknie. W
ten spos�b mo�esz uzyska� kawa�ki innych okien, kt�re zakrywaj� podane okno,
a co wa�niejsze, mo�esz z�apa� menu i inne elementy, kt�re sa niezale�ne od
okien, lecz istniej� na podanym oknie.
.PP
.TP 8
.B "-silent"
Dzia�aj cicho, tj. nie dzwo� dzwonkami podczas pracy.
.SH �RODOWISKO
.PP
.TP 8
.B DISPLAY
Dla uzyskania domy�lnego hosta i numeru wy�wietlacza.
.SH PLIKI
.PP
.TP 8
.B XWDFile.h
Plik definicji formatu X Window Dump File.
.SH ZOBACZ TAK�E
xwud(1), xpr(1), X(1)
.SH AUTORZY
Tony Della Fera, Digital Equipment Corp., MIT Project Athena
.br
William F. Wyatt, Smithsonian Astrophysical Observatory
