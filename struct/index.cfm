<cfset users = entityLoad("user")>
<cf_presentationLayout>

<cfoutput>
<div class="page-header"> 
	<h1>Struct Relationship</h1> 
</div>
</cfoutput>

<h2>Full</h2>
<cfdump var="#users#" top="2">


<h2>StructKeyExists to get work</h2>
<cfloop array="#users#" index="user">
	<cfif structKeyExists( user.getAddress(), "work" )>
		<cfdump var="#user.getAddress()["work"]#" top="1">
	</cfif>
</cfloop>

</cf_presentationLayout>