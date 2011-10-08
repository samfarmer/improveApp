component {
this.name = "unconferenceSecondaryCacheApp";
this.sessionManagement = true;
this.datasource = "unconferenceSecondaryCache";

this.ormEnabled = true;
this.ormSettings = { dbcreate="update", logsql=true, secondaryCacheEnabled=true };

function onRequestStart() {
	request.user = entityLoad("User",session.id,true);
	if ( ! request.user.getIsLoggedIn() ) {
		writeOutput("Sorry, you are not logged in.");
		abort;
	}
}

function onSessionStart() {
	session.id = 1;
}

}