USE [RestAPIDapper]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Product_ById]    Script Date: 12/18/2018 8:46:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		TEDU
-- Create date: 18/12/2018
-- Description:	update product
-- =============================================
ALTER PROCEDURE [dbo].[Delete_Product_ById]
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	delete from Products where Id = @id
END
