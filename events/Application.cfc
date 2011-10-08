component {
this.name = "unconferenceEventsApp";
this.sessionManagement = true;
this.datasource = "unconferenceEvents";

this.ormEnabled = true;
this.ormSettings = { dbcreate="update", eventHandling=true, eventHandler="ORMEvents" };

function onRequestStart() {
	ormReload();
}

function onSessionStart() {
	session.id = 1;
}

}