<cfscript>
product = entityNew("product", {name="The Usual Suspects", description="A boat has been destroyed, criminals are dead, and the key to this mystery lies with the only survivor and his twisted, convoluted story beginning with five career crooks in a seemingly random police lineup.", inStock="87"} );
entitySave(product);

product = entityNew("product", {name="Back to the Future", description="In 1985, Doc Brown invents time travel; in 1955, Marty McFly accidentally prevents his parents from meeting, putting his own existence at stake.", inStock="1005"} );
entitySave(product);

product = entityNew("product", {name="I am Legend", description="Years after a plague kills most of humanity and transforms the rest into monsters, the sole survivor in New York City struggles valiantly to find a cure.", inStock="1025"} );
entitySave(product);
	
</cfscript>
done