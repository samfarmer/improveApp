<cfif structKeyExists(form,"query")>
	<cfquery name="get" datasource="#form.datasource#" result="res">
	#preserveSingleQuotes(form.query)#	
	</cfquery>
	<cfdump var="#res#">
</cfif>
<cfoutput><form method="post" action="#cgi.script_name#">
Datasource: <input type="text" name="datasource"><br />
<textarea cols="80" rows="10" name="query"></textarea><br />
<input type="submit" value="Run">
</form></cfoutput>