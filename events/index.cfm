<cfset products = entityload( "product" )>
<cf_presentationLayout>
<cfoutput>
<div class="page-header"> 
	<h1>DVD Store <small>They are still cool</small></h1> 
</div>

<form method="post" action="placeOrder.cfm">
	<fieldset>

		<cfloop array="#products#" index="product">
			<input type="hidden" name="productIds" value="#product.getProductId()#">
			<div class="row"> 
			    <div class="span16">
	    			<h3>#product.getName()#</h3>
			    	<div class="row">
			    		<div class="span10">
							<div>#product.getDescription()#</div>
							<span class="label">Last order: #dateFormat( product.getUpdateDate(), "mm/dd/yyyy" )# #timeFormat( product.getUpdateDate(), "hh:mm" )#</span>
			    		</div>
			    		<div class="span6">
			    			<div class="clearfix">
			    				<div><span class="label notice">In stock: #product.getInStock()#</span></div>
								<label>Quantity</label>
								<div class="input">
									<input class="span2" type="number" name="product#product.getProductId()#" id="product#product.getProductId()#" value="0">
								</div> 
							</div>
			    		</div>
			    	</div>
			    	
					
			    </div>
			</div>
		</cfloop>

		<div class="actions"> 
			<input type="submit" value="Place Order" class="btn primary">
		</div>
	</fieldset>
</form>


</cfoutput>
</cf_presentationLayout>