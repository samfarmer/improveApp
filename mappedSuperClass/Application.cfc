component {
this.name = "unconferenceMappedSuperClass";
this.sessionManagement = true;
this.datasource = "unconferenceMappedSuperClass";

this.ormEnabled = true;
this.ormSettings = { dbcreate="update", eventHandling=true };

function onRequestStart() {
	ormReload();
}

}