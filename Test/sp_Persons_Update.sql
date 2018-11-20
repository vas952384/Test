CREATE PROCEDURE [dbo].[sp_Persons_Update]
	 @Id				INT				--Идентификатор лица
	,@Surname			NVARCHAR(50)	--Фамилия
	,@Name				NVARCHAR(50)	--Имя
	,@Patronymic		NVARCHAR(50)	--Отчество
	,@DateOfBirth		DATE			--Дата рождения
AS
BEGIN
	-- SET NOCOUNT ON запрещает вывод количества строк, на которые влияет
	-- инструкция Transact-SQL, в составе результирующих данных
	SET NOCOUNT ON;

	UPDATE	[dbo].[Persons]
	SET		 [Surname]	  = @Surname
			,[Name]		  = @Name
			,[Patronymic] = @Patronymic
			,[DataOfBirth]= @DateOfBirth
	WHERE [ID] = @Id;
END