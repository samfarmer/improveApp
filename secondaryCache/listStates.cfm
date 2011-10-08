<cfset states = entityload( "state", {}, "", { cacheName="stateAll", cacheable=true } )>
<cf_presentationLayout>
<cfoutput>
<div class="page-header"> 
	<h1>List of States</h1> 
</div>

<div class="row"> 
    <div class="span4 columns">
    	<ul>
    		<cfloop array="#states#" index="state">
				<li>#state.getName()#</li>
    		</cfloop>
    	</ul>
    </div>
</div>
</cfoutput>
</cf_presentationLayout>