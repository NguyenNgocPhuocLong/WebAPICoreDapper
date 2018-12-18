USE [RestAPIDapper]
GO
/****** Object:  StoredProcedure [dbo].[Update_Product]    Script Date: 12/18/2018 8:46:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		TEDU
-- Create date: 18/12/2018
-- Description:	update product
-- =============================================
ALTER PROCEDURE [dbo].[Update_Product]
	@id int,
	@sku varchar(50),
	@price float,
	@isActive bit,
	@imageUrl nvarchar(255)
AS
BEGIN
	SET NOCOUNT ON;

   update Products set Sku = @sku,Price = @price, IsActive = @isActive,ImageUrl=@imageUrl
   where Id = @id
END
