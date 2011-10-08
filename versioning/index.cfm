<cf_presentationLayout>
<cfset characters = entityload( "character" )>

<cfoutput>
	
<div class="page-header"> 
	<h1>Characters <small>From The Wire</small></h1> 
</div>
<table class="zebra-striped">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Alive?</th>
		<!---<th>Version</th>--->
	</tr>
<cfloop array="#characters#" index="character">
	<tr>
		<td>###character.getCharacterId()#</td>
		<td><a href="edit.cfm?characterId=#character.getCharacterId()#"> #character.getName()#</a></td>
		<td>#yesNoFormat( character.getIsAlive() )#</td>
		<!---<td>#character.getOrmVersion()#</td>--->
	</tr>	  
</cfloop> 
</table> 

<div>
	<a href="edit.cfm" class="btn">+ Add Character</a>
</div>
</cfoutput>

</cf_presentationLayout>