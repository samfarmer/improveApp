<cfscript>
role = entityload( "role", form.id, true );
if ( isNull( role ) ) {
	role = entityNew( "role" );
}

role.setName( form.name );
entitySave( role );
location( url="listRoles.cfm", addtoken="false"  );
</cfscript>