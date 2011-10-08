
<form method="post" action="createIfNotExists.cfm">
	<label>CF Admin Password</label>
	<input type="text" name="adminPassword">
	
	<div>This will create five datasources called:</div>
	<ul>
		<li>unconferenceVersioning</li>
		<li>unconferenceSecondaryCache</li>
		<li>unconferenceMappedSuperClass</li>
		<li>unconferenceStruct</li>
		<li>unconferenceEvents</li>
	</ul>
	<input type="submit" value="Make Datasources">
</form>