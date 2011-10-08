<cfinclude template="../presentationLayout.cfm">
<cfif thisTag.executionMode eq "start">
	<cfoutput>
	<section id="alerts"> 
		<div class="row"> 
			<div class="span4 columns">
				<div class="alert-message success"> 
					<p><strong>#request.user.getFirstName()# #request.user.getLastName()#</strong> 
					<br>
					Role: #request.user.getRole().getName()#<br>
					Logged In: #yesNoFormat( request.user.getIsLoggedIn() )#</p> 
				</div>
			</div> 
		</div>
	</section>
	</cfoutput>
	
</cfif>