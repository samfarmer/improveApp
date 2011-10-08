<cf_presentationLayout>
<cfscript>
param name="url.characterId" default="0";
character = entityload( "character", url.characterId, true );
if ( isNull( character ) ) {
	character = entityNew( "character" );
}
</cfscript>

<cfoutput>
<div class="page-header"> 
	<h1>Characters <small>From The Wire</small> &gt; Edit</h1> 
</div>
<form method="post" action="save.cfm">
	<fieldset>
		<input type="hidden" name="characterId" id="characterId" value="#url.characterId#">
		<input type="hidden" name="ormVersion" id="ormVersion" value="#character.getOrmVersion()#">
		
		<div class="clearfix">
			<label>Name</label>
			<div class="input">
				<input type="text" name="name" id="name" value="#character.getName()#">
			</div> 
		</div>
			
		<div class="clearfix">
			<label>Alive?</label>
			<div class="input"> 
              <ul class="inputs-list"> 
                <li> 
                  <label> 
                    <input type="radio" name="isAlive" id="isAliveTrue" value="true" <cfif character.getIsAlive()>checked</cfif>> 
                    <span>Yes</span> 
                  </label> 
                </li>
                <li> 
                  <label> 
                    <input type="radio" name="isAlive" id="isAliveFalse" value="false" <cfif ! character.getIsAlive()>checked</cfif>> 
                    <span>No</span> 
                  </label> 
                </li>
			</ul>
			</div>
		</div>
	
		<div class="clearfix">
			<label>ORM Version</label>
			<div class="input">
				<span class="help-inline">#character.getORMVersion()#</span>
			</div> 
		</div>
		
		<div class="actions"> 
			<input type="submit" value="Save" class="btn primary">
		</div>
	</fieldset>
</form>
</cfoutput>
</cf_presentationLayout>