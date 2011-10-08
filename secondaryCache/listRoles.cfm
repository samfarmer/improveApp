<cfset roles = entityload( "role" )>
<cf_presentationLayout>
<cfoutput>
<div class="page-header"> 
	<h1>Roles </h1> 
</div>
<table class="zebra-striped">
	<tr>
		<th>Name</th>
	</tr>
<cfloop array="#roles#" index="role">
	<tr>
		<td><a href="editRole.cfm?id=#role.getId()#">#role.getName()#</a></td>
	</tr>	  
</cfloop> 
</table> 

<div>
	<a href="editRole.cfm" class="btn">+ Add Role</a>
</div>

</cfoutput>
</cf_presentationLayout>