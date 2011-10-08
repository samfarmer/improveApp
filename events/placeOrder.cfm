<cfscript>
transaction {
	allProductIds = listToArray( form.productIds );
	for ( productId in allProductIds ) {
		if ( form[ "product" & productId ] > 0 ) {
			product = entityLoad("product", productId, true );
			order = entityNew( "order" );
			order.setProduct( product );
			product.addOrders( order );
			order.setQuantity( form[ "product" & productId ] );
			entitySave( order );
		}
	}
}

session.flash = "Thank you for your order!";
location( url="index.cfm", addtoken="false" );	
</cfscript>
