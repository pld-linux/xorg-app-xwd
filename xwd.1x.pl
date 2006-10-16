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
xwd - zrzuæ obraz okna X
.SH SK£ADNIA
.B "xwd"
[-debug] [-help] [-nobdrs] [-out \fIplik\fP] [-xy] [-frame] [-add \fIwarto¶æ\fP]
[-root | -id \fIid\fP | -name \fInazwa\fP ] [-icmap] [-screen]
[-display \fIwy¶wietlacz\fP]
.SH OPIS
.PP
.I Xwd
to narzêdzie do zrzucania zawarto¶ci okien X Window System.
.I Xwd
umo¿liwia u¿ytkownikom X zapisywanie obrazów okien w specjalnie
sformatowanych plikach zrzutu. Plik ten mo¿e byæ potem odczytywany przez
ró¿ne X-narzêdzia w celu ponownego wy¶wietlenia, drukowania, edycji,
formatowania, itp. Okno docelowe jest wybierane przez klikniêcie na nim 
wska¼nikiem myszy. Na pocz±tku zrzucania w³±czany jest dzwonek klawiatury, a
po jego zakoñczeniu, dzwonek dzwoni dwukrotnie.
.SH OPCJE
.PP
.TP 8
.B "-display \fIwy¶wietlacz\fP"
Argument ten umo¿liwia okre¶lenie, do którego serwera siê pod³±czyæ; zobacz
\fIX(1)\fP.
.PP
.TP 8
.B "-help"
Wydrukuj informacje o u¿yciu.
.PP
.TP 8
.B "-nobdrs"
Argument en mówi, ¿e zrzut okna nie powinien zawieraæ pikseli, sk³adaj±cych
siê na jego obramowanie. Jest to przydatne w sytuacjach, kiedy ¿yczysz sobie
w³±czenie zawarto¶ci okna do dokumentu jako ilustracjê.
.PP
.TP 8
.B "-out \fIplik\fP"
Ten argument umo¿liwia u¿ytkownikowi podanie pliku wyj¶ciowego zrzutu.
Domy¶lnym punktem zrzutu jest standardowe wyj¶cie.
.PP
.TP 8
.B "-xy"
Ta opcja tyczy siê tylko kolorowych wy¶wietlaczy. Wybiera format `XY'
zrzucania, zamiast domy¶lnego `Z'.
.PP
.TP 8
.B "-add \fIwarto¶æ\fP"
Ta opcja okre¶la warto¶æ ze znakiem, która bêdzie dodawana do ka¿dego
piksela.
.PP
.TP 8
.B "-frame"
Ta opcja wskazuje, ¿e podczas rêcznego wybierania okna, ramka mened¿era
okien powinna byæ za³±czona.
.PP
.TP 8
.B "-root"
Ta opcja wskazuje, ¿e do zrzutu powinno zostaæ wybrane okno g³ówne, bez
wymagania od u¿ytkownika wybrania okna wska¼nikiem.
.PP
.TP 8
.B "-id \fIid\fP"
Ta opcja wskazuje, ¿e okno o podanym identyfikatorze zasobu powinno byæ
wybrane do zrzutu, bez oczekiwania od u¿ytkownika wybrania go wska¼nikiem.
.PP
.TP 8
.B "-name \fInazwa\fP"
Ta opcja wskazuje, ¿e okno o podanej w³a¶ciwo¶ci WM_NAME powinno byæ wybrane
do zrzutu, bez oczekiwania od u¿ytkownika wybrania okna wska¼nikiem.
.PP
.TP 8
.B "-icmap"
Normalnie mapa kolorów wybranego okna u¿ywana jest do uzyskania warto¶ci
RGB. Ta opcja wymusza zamiast tego u¿ycie zainstalowanej mapy kolorów ekranu.
.PP
.TP 8
.B "-screen"
Ta opcja wskazuje, ¿e ¿±danie GetImage, u¿yte do uzyskania obrazu powinno
byæ wykonane na raczej oknie g³ównym ni¿ bezpo¶rednio na okre¶lonym oknie. W
ten sposób mo¿esz uzyskaæ kawa³ki innych okien, które zakrywaj± podane okno,
a co wa¿niejsze, mo¿esz z³apaæ menu i inne elementy, które sa niezale¿ne od
okien, lecz istniej± na podanym oknie.
.PP
.TP 8
.B "-silent"
Dzia³aj cicho, tj. nie dzwoñ dzwonkami podczas pracy.
.SH ¦RODOWISKO
.PP
.TP 8
.B DISPLAY
Dla uzyskania domy¶lnego hosta i numeru wy¶wietlacza.
.SH PLIKI
.PP
.TP 8
.B XWDFile.h
Plik definicji formatu X Window Dump File.
.SH ZOBACZ TAK¯E
xwud(1), xpr(1), X(1)
.SH AUTORZY
Tony Della Fera, Digital Equipment Corp., MIT Project Athena
.br
William F. Wyatt, Smithsonian Astrophysical Observatory
