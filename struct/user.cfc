component persistent="true" entityname="user" {
property name="userId" fieldtype="id" generated="always" generator="native";
property name="name" ormtype="string";

property name="address" fieldtype="one-to-many" cfc="address" fkcolumn="userId" inverse="true" type="struct" structkeycolumn="type" lazy="extra";
}