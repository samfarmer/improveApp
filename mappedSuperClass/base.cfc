component mappedsuperclass="true" {
property name="id" ormtype="int" fieldtype="id" generated="always" generator="native";

property name="isActive" ormtype="boolean" default="true";
property name="isDeleted" ormtype="boolean" default="false";

property name="createdDT" ormtype="timestamp";
property name="createdBy" ormtype="int";
property name="modifiedDT" ormtype="timestamp";
property name="modifiedBy" ormtype="int";

property name="ormVersion" fieldtype="version" ormtype="int";
}