CREATE PROCEDURE [dbo].[sp_Persons_Insert]
	@Id				INT					--Идентификатор лица
	,@Surname		NVARCHAR(50)		--Фамилия
	,@Name			NVARCHAR(50)		--Имя
	,@Patronymic	NVARCHAR(50) = NULL	--Отчество
	,@DateOfBirth	DATE		 = NUll	--Дата рождения
AS
BEGIN
	-- SET NOCOUNT ON запрещает вывод количества строк, на которые влияет
	-- инструкция Transact-SQL, в составе результирующих данных
	SET NOCOUNT ON;

	INSERT INTO [dbo].[Persons]
				([Id]
				,[Surname]
				,[Name]
				,[Patronymic]
				,[DataOfBirth])
			VALUES
				(@Id
				,@Surname
				,@Surname
				,@Name
				,@Patronymic
				,@DateOfBirth);
END