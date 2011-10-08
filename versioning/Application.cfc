component {
this.name = "unconferenceVersioningApp";
this.sessionManagement = true;
this.sessionTimeout = createTimespan(2,0,0,0);
this.datasource = "unconferenceVersioning";

this.ormEnabled = true;
this.ormSettings = { dbcreate="update" };

function onSessionStart() {
	session.name="";
}

}