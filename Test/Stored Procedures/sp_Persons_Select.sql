CREATE PROCEDURE [dbo].[sp_Persons_Select]
	@Id INT --Идентификатор лица
AS
BEGIN
	SELECT [Persons].[Id]
		  ,[Persons].[Surname]
		  ,[Persons].[Name]
		  ,[Persons].[Patronymic]
		  ,[Persons].[DataOfBirth]
	FROM   [dbo].[Persons]
	WHERE [Persons].[Id] = @Id;
END
