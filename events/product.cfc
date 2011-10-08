component persistent="true"  {
property name="productId" ormtype="int" fieldtype="id" generated="always" generator="native";
property name="name" ormtype="string";
property name="description" ormtype="string";
property name="inStock" ormtype="int";
property name="createDate" ormtype="timestamp";
property name="updateDate" ormtype="timestamp";

property name="orders" fieldtype="one-to-many" cfc="order" fkcolumn="productId" lazy="extra"; 

}