CREATE PROCEDURE [dbo].[sp_Persons_Select]
	@Id INT --Идентификатор лица
AS
BEGIN
	SELECT [Persons].[Id]
		  ,[Persons].[Surname]
		  ,[Persons].[Name]
		  ,[Persons].[Patronymic]
		  ,[Persons].[DataOfBirth]
		  ,DATEDIFF(mm, [Persons].[DataOfBirth], GETDATE())/12 AS [Age]
	FROM   [dbo].[Persons]
	WHERE [Persons].[Id] = @Id;
END
