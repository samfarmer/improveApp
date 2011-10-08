component persistent="true" {
property name="orderId" ormtype="int" fieldtype="id" generated="always" generator="native";
property name="product" fieldtype="many-to-one" cfc="product";
property name="quantity" ormtype="int";   
property name="createDate" ormtype="timestamp";

function preInsert() {
	var inStock = getProduct().getInStock();
	getProduct().setInStock( inStock-getQuantity() );
	getProduct().setUpdateDate( now() ); 
}

}