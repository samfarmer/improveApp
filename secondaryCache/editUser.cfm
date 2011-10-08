<cf_presentationLayout>
<cfscript>
param name="url.id" default="0";
user = entityload( "user", url.id, true );
if ( isNull( user ) ) {
	user = entityNew( "user" );
}
roles = entityLoad( "role" );
</cfscript>

<cfoutput>
<div class="page-header"> 
	<h1>User &gt; Edit</h1> 
</div>
<form method="post" action="saveUser.cfm">
	<fieldset>
		<input type="hidden" name="Id" id="Id" value="#url.Id#">
		
		<div class="clearfix">
			<label>First Name</label>
			<div class="input">
				<input type="text" name="firstname" id="firstname" value="#user.getFirstName()#">
			</div> 
		</div>
		
		<div class="clearfix">
			<label>Last Name</label>
			<div class="input">
				<input type="text" name="lastname" id="lastname" value="#user.getLastName()#">
			</div> 
		</div>
			
		<div class="clearfix">
			<label>Logged In?</label>
			<div class="input"> 
              <ul class="inputs-list"> 
                <li> 
                  <label> 
                    <input type="radio" name="isLoggedIn" id="isLoggedInTrue" value="true" <cfif user.getisLoggedIn()>checked</cfif>> 
                    <span>Yes</span> 
                  </label> 
                </li>
                <li> 
                  <label> 
                    <input type="radio" name="isLoggedIn" id="isLoggedInFalse" value="false" <cfif ! user.getisLoggedIn()>checked</cfif>> 
                    <span>No</span> 
                  </label> 
                </li>
			</ul>
			</div>
		</div>
	
		<div class="clearfix">
			<label for="normalSelect">Role</label> 
            <div class="input"> 
              <select name="roleId" id="roleId"> 
				<cfloop array="#roles#" index="role">
					<option value="#role.getId()#" <cfif ! isNull( user.getRole() ) && user.getRole().getId() eq role.getId()>selected</cfif>>#role.getName()#</option>
				</cfloop> 
              </select> 
            </div> 
		</div>
		
		<div class="actions"> 
			<input type="submit" value="Save" class="btn primary">
		</div>
	</fieldset>
</form>
</cfoutput>
</cf_presentationLayout>