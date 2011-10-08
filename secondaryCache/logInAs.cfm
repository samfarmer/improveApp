<cfscript>
session.id = url.id;
location( url="index.cfm", addToken=false );	
</cfscript>
