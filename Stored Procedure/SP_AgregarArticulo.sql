CREATE OR ALTER PROCEDURE SP_AgregarArticulo 
							@Nombre VARCHAR(128), --Nombre del Articulo a agregar 
							@Precio MONEY,  --Precio del articulo
							@output INT OUT

AS

		-- Inicia codigo en el cual se captura errores
		IF EXISTS (SELECT 1 FROM dbo.Articulo A WHERE A.Nombre=@Nombre)
		BEGIN
		   SET @output=2;
		   PRINT 'ERROR: CODE ERROR 2'
		   RETURN;
		END;
		INSERT 
			INTO Articulo
			SELECT   @Nombre,
					 @Precio

GO