# XMLProjekt
Projekt za Predmet XML Programiranje 
Workbench je ASP.NET aplikacija pisana u c# jeziku.
Nudi opciju enkodiranje i dekodiranja u i iz base64 formata.
Ima kratku anketu čiji se podaci pohranjuju u XML datoteku.
Ako XML datoteka već postoji, nadodaju se podaci novog korisnika,
a ako ne postoji kreira se nova XML datoteka.
Osim podataka iz anketa aplikacija zapisuje i broj "klikova" na
encode i decode gumbe pomoću viewstate-a te upisuje i date-time 
unosa u XML datoteku.
