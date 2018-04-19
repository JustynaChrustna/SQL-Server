--Polecenia SELECT
--Cz��. Proste instrukcje SELECT.
--Wypisz nazwy i symbole wszystkich przedmiot�w z tabeli PRZEDMIOT
SELECT Przedmiot, Symbol FROM Przedmiot;
--Wypisz wszystkie dane stopni naukowych z tabeli STOPNIETYTULY. u�ywaj�c znaku
--�gwiazdki� zamiast wypisywania nazw kolumn.
SELECT * FROM StopnieTytuly;
--Wypisz wszystkie warto�ci wszystkich kolumn z tabeli GRUPA.
SELECT * FROM Grupa;
--Wypisz imiona, nazwiska i rok urodzenia os�b z tabeli OSOBA. Posortuj malej�co po roku urodzenia i rosn�co po nazwisku. U�yj funkcji YEAR (SQL Server) lub EXTRACT (ORACLE).
SELECT Imie, Nazwisko, DataUrodzenia FROM Osoba ORDER BY YEAR(DataUrodzenia) DESC, Nazwisko ASC;
--Wypisz w jednej kolumnie imiona i nazwiska wszystkich os�b z tabeli OSOBA. Kolumn� nazwij �Pracownicy i studenci�. Wynikowe rekordy posortuj rosn�co wg nazwisk.
SELECT Imie +' '+ Nazwisko As "Pracownicy i studenci" FROM Osoba ORDER BY Nazwisko ASC;
--Do kolumny z po��czonymi imionami i nazwiskami (zad. 4) do��cz komentarz �student lub dydaktyk�.
SELECT Imie +' '+ Nazwisko + ' ' + 'Student lub dydaktyk' As "Pracownicy i studenci" FROM Osoba ORDER BY Nazwisko ASC;
--Wypisz bez powt�rze� wszystkie imiona os�b z tabeli OSOBA, sortuj�c je alfabetycznie.
SELECT DISTINCT Imie  FROM Osoba ORDER BY Imie;
--U�ywaj�c funkcji YEAR (SQL Server) lub EXTRACT (ORACLE) wypisz bez powt�rze� i posortuj malej�co lata rekrutacji z tabeli STUDENT. Wynikow� kolumn� zatytu�uj �Lata rekrutacji�.
SELECT DISTINCT YEAR(DataRekrutacji) AS "Lata rekrutacji" FROM Student ORDER BY [Lata rekrutacji] DESC;
--Sprawd�, ile miesi�cy, dni i lat up�yne�o od daty rekrutacji ka�dego studenta (podaj tylko numer indeksu). W MS SQL Server u�yj funkcji Datediff() i Getdate(), w ORACLE funkcji EXTRACT.
SELECT NrIndeksu,
		DATEDIFF (yy, DataRekrutacji, Getdate()) as "lata od rekrutacji",
		DATEDIFF (mm, DataRekrutacji, Getdate()) as "miesi�ce od rekrutacji",
		DATEDIFF (dd, DataRekrutacji, Getdate()) as "dni od rekrutacji"
FROM Student;
--Wypisz imiona os�b z tabeli OSOBA, kt�rych nazwisko zaczyna si� na liter� �K�.
SELECT Imie FROM Osoba WHERE Nazwisko LIKE 'K%';
--Wypisz nazwiska os�b z tabeli OSOBA, kt�rych imiona zawieraj� liter� �A�, a nie zawieraj� litery �B�.
SELECT Nazwisko FROM Osoba WHERE Imie LIKE '%A%' AND Imie NOT LIKE '%B%';
--Wypisz imiona i nazwiska os�b, kt�rych imiona s� pi�cioliterowe.
SELECT Imie, Nazwisko FROM Osoba WHERE Imie LIKE '_____';
--Znajd� wszystkie dane os�b, dla kt�rych znana jest data urodzenia.
SELECT * FROM Osoba WHERE DataUrodzenia IS NOT NULL;
--Znajd� wszystkie dane os�b, dla kt�rych nieznana jest data urodzenia.
SELECT * FROM Osoba WHERE DataUrodzenia IS NULL;
--Znajd� wszystkie dane os�b, dla kt�rych nie jest znana p�e�.
SELECT * FROM Osoba WHERE Plec IS NULL;
