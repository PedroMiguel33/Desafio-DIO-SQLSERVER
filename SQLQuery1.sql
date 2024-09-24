--1
SELECT Nome, Ano FROM Filmes

--2
SELECT Nome, UPPER(Ano) FROM Filmes

--3
SELECT Nome, Ano, Duracao From Filmes WHERE Nome = 'De volta para o futuro'

--4
SELECT Nome, Ano FROM Filmes WHERE Ano = 1997

--5
SELECT Nome, Ano FROM Filmes WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao From Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY UPPER(Duracao)

--7
SELECT Ano, COUNT(*) AS Quantidade_Filmes
FROM Filmes
GROUP BY Ano 
ORDER BY MAX(Duracao) DESC;

--8
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F'

--10
SELECT 
    f.Nome AS NomeDoFilme,
    g.Genero AS GeneroDoFilme
FROM 
    Filmes f
JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme
JOIN 
    Generos g ON fg.IdGenero = g.Id;


--11

SELECT 
    f.Nome AS NomeDoFilme,
    g.Genero AS GeneroDoFilme 
FROM 
    Filmes f 
JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme    
JOIN   
    Generos g ON fg.IdGenero = g.Id 
WHERE 
    g.Genero = 'Mistério';



--12 

SELECT 
    f.Nome AS NomeFilme,
    a.PrimeiroNome,
    a.UltimoNome,
    e.Papel
FROM 
    Filmes f
JOIN 
    ElencoFilme e ON f.Id = e.IdFilme
JOIN 
    Atores a ON a.Id = e.IdAtor;


