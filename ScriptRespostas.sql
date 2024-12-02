-- Verifica tudo que tem no banco
-- SELECT * FROM Filmes;

-- ==========================================
-- Atividade 1
-- ==========================================
-- SELECT Nome, Ano 
-- FROM Filmes;

-- ==========================================
-- Atividade 2
-- ==========================================
-- SELECT Nome, Ano 
-- FROM Filmes 
-- ORDER BY Ano ASC;

-- ==========================================
-- Atividade 3
-- ==========================================
-- SELECT Nome, Ano, Duracao 
-- FROM Filmes 
-- WHERE Nome = 'De Volta para o Futuro';

-- ==========================================
-- Atividade 4
-- ==========================================
-- SELECT Nome, Ano, Duracao 
-- FROM Filmes 
-- WHERE Ano = 1997;

-- ==========================================
-- Atividade 5
-- ==========================================
-- SELECT * 
-- FROM Filmes 
-- WHERE Ano > 2000;

-- ==========================================
-- Atividade 6
-- ==========================================
-- SELECT * 
-- FROM Filmes 
-- WHERE Duracao > 100 AND Duracao < 150 
-- ORDER BY Duracao ASC;

-- ==========================================
-- Atividade 7
-- Resultado não coincide com a imagem exemplo
-- ==========================================
-- EXEMPLO 1: ANALISANDO COM A DURAÇÃO DE TODOS OS FILMES
-- SELECT Ano, 
--        COUNT(*) AS Quantidade, 
--        SUM(Duracao) AS DuracaoTotal 
-- FROM Filmes 
-- GROUP BY Ano 
-- ORDER BY DuracaoTotal DESC;

-- EXEMPLO 2: MOSTRANDO SOMENTE OS CAMPOS ANO E QUANTIDADE ORDENADOS PELA DURAÇÃO
-- SELECT Ano, 
--        COUNT(*) AS Quantidade 
-- FROM Filmes 
-- GROUP BY Ano 
-- ORDER BY SUM(Duracao) DESC;

-- Ao fazermos a consulta separada por ano:
-- Para o ano 1995, obtemos uma duração total de 284!
-- SELECT Ano, Duracao 
-- FROM Filmes 
-- WHERE Ano = 1995;

-- Para o ano 1999, obtemos uma duração total de 281!
-- SELECT Ano, Duracao 
-- FROM Filmes 
-- WHERE Ano = 1999;

-- Para o ano 2001, obtemos uma duração total de 238!
-- SELECT Ano, Duracao 
-- FROM Filmes 
-- WHERE Ano = 2001;

-- Logo, a ordem exibida pelo script inicial está correta, 
-- e a imagem demonstrativa do GitHub está errada :D

-- ==========================================
-- Atividade 8
-- ==========================================
-- SELECT id, PrimeiroNome, UltimoNome, Genero 
-- FROM Atores 
-- WHERE Genero = 'M';

-- ==========================================
-- Atividade 9
-- ==========================================
-- SELECT id, PrimeiroNome, UltimoNome, Genero 
-- FROM Atores 
-- WHERE Genero = 'F' 
-- ORDER BY PrimeiroNome ASC;

-- ==========================================
-- Atividade 10
-- ==========================================
-- SELECT Filmes.Nome AS NomeFilme,
--        Generos.Genero AS Genero 
-- FROM Filmes 
-- JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
-- JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- ==========================================
-- Atividade 11
-- ==========================================
-- SELECT Filmes.Nome AS Nome,
--        Generos.Genero AS Genero 
-- FROM Filmes 
-- JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme 
-- JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 
-- WHERE Genero = 'Mistério';

-- ==========================================
-- Atividade 12
-- ==========================================
-- SELECT 
--        Filmes.Nome AS NomeFilme,
--        Atores.PrimeiroNome,
--        Atores.UltimoNome,
--        ElencoFilme.Papel
-- FROM 
--        ElencoFilme
-- JOIN 
--        Atores ON ElencoFilme.IdAtor = Atores.Id
-- JOIN 
--        Filmes ON ElencoFilme.IdFilme = Filmes.Id;
