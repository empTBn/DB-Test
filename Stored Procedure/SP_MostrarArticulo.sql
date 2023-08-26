CREATE OR ALTER PROCEDURE sp_MostrarClaseArticulo
					@output INT OUT --Codigo se salida
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
	 DECLARE @MostrarTable
TABLE(
			Nombre VARCHAR(128),
			Precio MONEY
)
	INSERT 
		INTO @MostrarTable	
		SELECT  Nombre,
				Precio

		FROM Articulo
	
		SELECT * FROM @MostrarTable
	END TRY
	BEGIN CATCH

	END CATCH

	SET NOCOUNT OFF;
END;