<cfinclude template="../presentationLayout.cfm">
<cfif thisTag.executionMode eq "start">
	<cfoutput>
	<section id="alerts"> 
		<div class="row"> 
			<div class="span6 columns">
				<div class="alert-message success"> 
					<p>Hi <strong>#session.name#</strong> 
				</div>
			</div> 
		</div>
	</section>
	</cfoutput>
	
</cfif>