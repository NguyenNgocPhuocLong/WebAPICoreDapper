USE [RestAPIDapper]
GO
/****** Object:  StoredProcedure [dbo].[Get_Product_All]    Script Date: 12/18/2018 8:46:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		TEDU
-- Create date: 18/12/2018
-- Description:	Select all records
-- =============================================
ALTER PROCEDURE [dbo].[Get_Product_All]
AS
BEGIN
	SET NOCOUNT ON;

    select Id,Sku,Price,DiscountPrice,ImageUrl,CreatedAt,IsActive,ViewCount from Products
END
