<cfscript>
user = entityload( "user", form.id, true );
if ( isNull( user ) ) {
	user = entityNew( "user" );
}
user.setFirstName( form.firstname );
user.setLastName( form.lastname );
user.setIsLoggedIn( form.isLoggedIn );
user.setRole( entityLoad( "role", { id=form.roleId }, true ) );
entitySave( user );

location( url="listUsers.cfm", addtoken="false"  );

</cfscript>