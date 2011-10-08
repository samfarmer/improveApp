component implements="CFIDE.orm.IEventHandler" {
	
	public void function preLoad ( any entity ) {
	}
	
	public void function postInsert ( any entity ) {
	}
	
	public void function postUpdate ( any entity ) {
	}
	
	public void function postLoad ( any entity ) {
	}
	
	public void function preDelete ( any entity ) {
	}
	
	public void function preUpdate ( any entity, Struct oldData ) {
		if ( structKeyExists( entity, "updateDate" ) ) {
			entity.setUpdateDate( now() );
		}
	}
	
	public void function postDelete ( any entity ) {
	}
	
	public void function preInsert ( any entity ) {
		if ( structKeyExists( entity, "createDate" ) ) {
			entity.setCreateDate( now() );
		}
	}
	
}