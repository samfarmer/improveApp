<cfscript>
abort;
work = entityNew("address", {type="work", street="1 Nuclear Road", city="Springfield", state="MI"});
home = entityNew("address", {type="home", street="742 Evergreen Terrace", city="Springfield", state="MI"});

entitySave(work);
entitySave(home);

user = entityNew("user", {name="Homer Simpson"} );
user.addAddress("work", work);
user.addAddress("home", home);
work.setUser(user);
home.setUser(user);
entitySave(user);
</cfscript>
