<cfset users = entityload( "user" )>
<cf_presentationLayout>
<cfoutput>
<div class="page-header"> 
	<h1>Users </h1> 
</div>
<table class="zebra-striped">
	<tr>
		<th>Name</th>
		<th>Logged In?</th>
		<th>Role</th>
		<th>Log In As</th>
	</tr>
<cfloop array="#users#" index="user">
	<tr>
		<td><a href="edituser.cfm?id=#user.getId()#">#user.getFirstname()# #user.getLastname()#</a></td>
		<td>#yesNoFormat( user.getIsLoggedIn() )#</td>
		<td>#user.getRole().getName()#</td>
		<td><a href="loginas.cfm?id=#user.getId()#">Log In As</a></td>
	</tr>	  
</cfloop> 
</table> 

<div>
	<a href="editUser.cfm" class="btn">+ Add User</a>
</div>
</cfoutput>
</cf_presentationLayout>