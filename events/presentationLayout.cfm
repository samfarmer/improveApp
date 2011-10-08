<cfinclude template="../presentationLayout.cfm">
<cfif thisTag.executionMode eq "start" && structKeyExists( session, "flash" )>
	<cfoutput>
	<section id="alerts"> 
		<div class="row"> 
			<div class="span16 columns">
				<div class="alert-message success"> 
					<p>#session.flash#</p> 
				</div>
			</div> 
		</div>
	</section>
	</cfoutput>
	<cfset structDelete( session, "flash" )>
</cfif>