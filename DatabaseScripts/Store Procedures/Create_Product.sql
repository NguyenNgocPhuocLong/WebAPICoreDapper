USE [RestAPIDapper]
GO
/****** Object:  StoredProcedure [dbo].[Create_Product]    Script Date: 12/18/2018 8:45:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		TEDU
-- Create date: 18/12/2018
-- Description:	Select one recorrd by id 
-- =============================================
ALTER PROCEDURE [dbo].[Create_Product]
@sku varchar(50),
@price float,
@isActive bit,
@imageUrl nvarchar(255),
@id int output
AS
BEGIN
	SET NOCOUNT ON;

   insert into Products(Sku,Price,IsActive,ImageUrl,CreatedAt,ViewCount,RateTotal,RateCount)
   values(@sku,@price,@isActive,@imageUrl,getdate(),0,0,0)

   set @id = SCOPE_IDENTITY()
END
