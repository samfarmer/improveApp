<cf_presentationLayout>
<cfscript>
param name="url.id" default="0";
role = entityload( "role", url.id, true );
if ( isNull( role ) ) {
	role = entityNew( "role" );
}
</cfscript>

<cfoutput>
<div class="page-header"> 
	<h1>Role &gt; Edit</h1> 
</div>
<form method="post" action="saveRole.cfm">
	<fieldset>
		<input type="hidden" name="id" id="id" value="#url.id#">
		
		<div class="clearfix">
			<label>Name</label>
			<div class="input">
				<input type="text" name="name" id="name" value="#role.getName()#">
			</div> 
		</div>
					
		<div class="actions"> 
			<input type="submit" value="Save" class="btn primary">
		</div>
	</fieldset>
</form>
</cfoutput>
</cf_presentationLayout>