--Polecenia SELECT
--Czêœæ. Proste instrukcje SELECT.
--Wypisz nazwy i symbole wszystkich przedmiotów z tabeli PRZEDMIOT
SELECT Przedmiot, Symbol FROM Przedmiot;
--Wypisz wszystkie dane stopni naukowych z tabeli STOPNIETYTULY. u¿ywaj¹c znaku
--„gwiazdki” zamiast wypisywania nazw kolumn.
SELECT * FROM StopnieTytuly;
--Wypisz wszystkie wartoœci wszystkich kolumn z tabeli GRUPA.
SELECT * FROM Grupa;
--Wypisz imiona, nazwiska i rok urodzenia osób z tabeli OSOBA. Posortuj malej¹co po roku urodzenia i rosn¹co po nazwisku. U¿yj funkcji YEAR (SQL Server) lub EXTRACT (ORACLE).
SELECT Imie, Nazwisko, DataUrodzenia FROM Osoba ORDER BY YEAR(DataUrodzenia) DESC, Nazwisko ASC;
--Wypisz w jednej kolumnie imiona i nazwiska wszystkich osób z tabeli OSOBA. Kolumnê nazwij „Pracownicy i studenci”. Wynikowe rekordy posortuj rosn¹co wg nazwisk.
SELECT Imie +' '+ Nazwisko As "Pracownicy i studenci" FROM Osoba ORDER BY Nazwisko ASC;
--Do kolumny z po³¹czonymi imionami i nazwiskami (zad. 4) do³¹cz komentarz „student lub dydaktyk”.
SELECT Imie +' '+ Nazwisko + ' ' + 'Student lub dydaktyk' As "Pracownicy i studenci" FROM Osoba ORDER BY Nazwisko ASC;
--Wypisz bez powtórzeñ wszystkie imiona osób z tabeli OSOBA, sortuj¹c je alfabetycznie.
SELECT DISTINCT Imie  FROM Osoba ORDER BY Imie;
--U¿ywaj¹c funkcji YEAR (SQL Server) lub EXTRACT (ORACLE) wypisz bez powtórzeñ i posortuj malej¹co lata rekrutacji z tabeli STUDENT. Wynikow¹ kolumnê zatytu³uj „Lata rekrutacji”.
SELECT DISTINCT YEAR(DataRekrutacji) AS "Lata rekrutacji" FROM Student ORDER BY [Lata rekrutacji] DESC;
--SprawdŸ, ile miesiêcy, dni i lat up³yne³o od daty rekrutacji ka¿dego studenta (podaj tylko numer indeksu). W MS SQL Server u¿yj funkcji Datediff() i Getdate(), w ORACLE funkcji EXTRACT.
SELECT NrIndeksu,
		DATEDIFF (yy, DataRekrutacji, Getdate()) as "lata od rekrutacji",
		DATEDIFF (mm, DataRekrutacji, Getdate()) as "miesi¹ce od rekrutacji",
		DATEDIFF (dd, DataRekrutacji, Getdate()) as "dni od rekrutacji"
FROM Student;
--Wypisz imiona osób z tabeli OSOBA, których nazwisko zaczyna siê na literê ‘K’.
SELECT Imie FROM Osoba WHERE Nazwisko LIKE 'K%';
--Wypisz nazwiska osób z tabeli OSOBA, których imiona zawieraj¹ literê ‘A’, a nie zawieraj¹ litery ‘B’.
SELECT Nazwisko FROM Osoba WHERE Imie LIKE '%A%' AND Imie NOT LIKE '%B%';
--Wypisz imiona i nazwiska osób, których imiona s¹ piêcioliterowe.
SELECT Imie, Nazwisko FROM Osoba WHERE Imie LIKE '_____';
--ZnajdŸ wszystkie dane osób, dla których znana jest data urodzenia.
SELECT * FROM Osoba WHERE DataUrodzenia IS NOT NULL;
--ZnajdŸ wszystkie dane osób, dla których nieznana jest data urodzenia.
SELECT * FROM Osoba WHERE DataUrodzenia IS NULL;
--ZnajdŸ wszystkie dane osób, dla których nie jest znana p³eæ.
SELECT * FROM Osoba WHERE Plec IS NULL;
