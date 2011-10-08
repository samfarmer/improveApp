<cfscript>
character = entityload( "character", form.characterId, true );
if ( isNull( character ) ) {
	character = entityNew( "character" );
}

if ( isNumeric( form.ormVersion ) && form.ormVersion < character.getOrmVersion() ) {
	writeOutput( "This record has been edited elsewhere since you last opened the page" );
	abort;
} else {
	character.setName( form.name );
	character.setIsAlive( form.isAlive );
	entitySave( character );
	location( url="index.cfm", addtoken="false"  );
}
</cfscript>