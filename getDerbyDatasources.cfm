<cfsetting enablecfoutputonly="true">
<cfparam name="url.adminPassword" default="">
<cfparam name="url.format" default="query">
<cfset variables.showDS = false>
<cfif len(url.adminPassword)>
	<cfset variables.derbyCFC = createObject("component","derbyCFC")>
	<cfset variables.derbyCFC.init(adminPassword=url.adminPassword)>
	<cfset variables.getDS = variables.derbyCFC.getDerbyDatasources(format=url.format)>
	<cfset variables.showDS = true>
</cfif>

<cfoutput><html>
<head>
<title>DerbyCFC</title>
<style type="text/css">
body {
	font-family: Verdana, Arial;
	font-size: 0.9em;
}
input {
	font-size: 1.2em;
}
.header {
	font-size: 1.5em;
	color: ##1f98ff;
	font-weight: bold;
	text-decoration: none;
}
.header:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
<div><a href="index.cfm" class="header">DerbyCFC</a>
<p><strong>List Datasources</strong></p>
<p><cfform action="#cgi.SCRIPT_NAME#" method="get">
<table>
	<tr>
		<td>Admin Password:</td>
		<td><cfinput type="text" name="adminPassword" id="adminPassword" size="30" required="true" message="Please enter admin Password" value="#url.adminPassword#"></td>
	</tr>
	<tr>
		<td>Format:<br /></td>
		<td><input type="radio" name="format" id="format-query" value="query" <cfif url.format eq "query">checked</cfif>><label for="format-query">Query</label>
		<input type="radio" name="format" id="format-raw" value="raw" <cfif url.format eq "raw">checked</cfif>><label for="format-raw">Raw (Structures)</label></td>
	</tr>
	<tr>
		<td></td>
		<td><cfinput type="submit" name="sub" id="sub" validate="SubmitOnce" value="List"></td>
	</tr>
</table>
</cfform></p>
</cfoutput>
<cfif variables.showDS>
	<cfdump var="#variables.getDS#">
</cfif>
<cfoutput>
</body>
</html></cfoutput>