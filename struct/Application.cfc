component {
this.name = "unconferenceStruct";
this.sessionManagement = true;
this.datasource = "unconferenceStruct" ;

this.ormEnabled = true;
this.ormSettings = { dbcreate="update", logsql="true" };

function onRequestStart() {
	ormReload();
}

}