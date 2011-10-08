<cfif thisTag.executionMode eq "start">
	<cfset dir = listLast( getDirectoryFromPath( getBaseTemplatePath() ), "/" )>
	<cfoutput>
	<!DOCTYPE html> 
	<html lang="en"> 
	  <head> 
	    <meta charset="utf-8"> 
	    <title>5 Ways to Improve App with ORM</title> 
	    <link href="../twitter-bootstrap-1.3.0.css" rel="stylesheet">
	</head>
	<body>
	    <!-- Topbar
	    ================================================== --> 
	    <div class="topbar"> 
	      <div class="topbar-inner"> 
	        <div class="container"> 
	          <h3><a href="">ORM 5</a></h3> 
	          <ul class="nav"> 
	            <li><a href="../overview.cfm">Overview</a></li> 
	            <li <cfif dir eq "versioning"> class="active"</cfif>><a href="../versioning/">Versioning</a></li> 
	            <li <cfif dir eq "events"> class="active"</cfif>><a href="../events/">Events</a></li> 
	            <li <cfif dir eq "mappedSuperClass"> class="active"</cfif>><a href="../mappedSuperClass/">MappedSuperClass</a></li> 
	            <li <cfif dir eq "secondaryCache"> class="active"</cfif>><a href="../secondaryCache/">Secondary Cache</a></li> 
	            <li <cfif dir eq "struct"> class="active"</cfif>><a href="../struct/">Struct</a></li> 
	          </ul> 
	        </div> 
	      </div> 
	    </div> 
		
		<div class="container">
			<br><br><br>

	</cfoutput>
	
<cfelse>
	
	<cfoutput>
		</div>
	</body>
	</html> 
	</cfoutput>
</cfif>
