component persistent="true" entityname="address"   {
property name="addressId" fieldtype="id" generated="always" generator="native";
property name="type" ormtype="string";
property name="street" ormtype="string";
property name="city" ormtype="string";
property name="state" ormtype="string";

property name="user" fieldtype="many-to-one" cfc="user";
}