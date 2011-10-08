<cfsetting enablecfoutputonly="true">
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
<p>DerbyCFC makes it easy to add an Embedded Derby Database to the installed version of ColdFusion.</p>
<p><strong>Add a Database and Datasource:</strong><br />
This example shows how to use the <code>createIfNotExists</code> function
<cfform action="createIfNotExists.cfm" method="post">
<table>
	<tr>
		<td>Admin Password:</td>
		<td><cfinput type="text" name="adminPassword" id="adminPassword" size="30" required="true" message="Please enter admin Password"></td>
	</tr>
	<tr>
		<td>Derby Database Name:<br /></td>
		<td><cfinput type="text" name="name" id="name" size="30" required="true" message="Please enter a Database name">(Will create datasource with same name)</td>
	</tr>
	<tr>
		<td></td>
		<td><cfinput type="submit" name="sub" id="sub" validate="SubmitOnce" value="Create "></td>
	</tr>
</table>
</cfform>
</p>
<p><a href="derbyCFC.cfc">DerbyCFC Documentation</a></p>
<p><a href="getDerbyDatasources.cfm">List Current Derby Datasources</a></p>
</body>
</html></cfoutput>
<!--- 

<cfset variables.derbyCFC = createObject("component","derbyCFC")>
<cfset variables.derbyCFC.init(adminPassword="cfadmin")>

<!--- <cfset variables.getDS = variables.derbyCFC.getDerbyDatasources()> --->

<cfset variables.jrunDir = variables.derbyCFC.createIfNotExists("cfdocexamples")>

<!--- <cfdump var="#structKeyList(variables.getDS.cfartgallery)#"> --->

<!--- <cfdump var="#variables.getDS#" expand="false"> --->
 --->
