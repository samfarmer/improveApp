component persistent="true" cachename="elmo" cacheuse="transactional" {
property name="id" ormtype="int" fieldtype="id" generated="always" generator="native";
property name="firstname" ormtype="string";
property name="lastname" ormtype="string";
property name="version" fieldtype="version" datatype="int" ;
property name="isLoggedIn" ormtype="boolean" default="false";
property name="role" cfc="role" fkcolumn="roleId" fieldtype="one-to-one";
}