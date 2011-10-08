component persistent="true" {
property name="characterId" fieldtype="id" ormtype="int" generator="native" generated="always";
property name="name" ormtype="string";
property name="isAlive" ormtype="boolean" default="true";  

property name="ormVersion" fieldtype="version" ormtype="int";
}