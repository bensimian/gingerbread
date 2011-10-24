package com.embraceinteractive.gingerbread.core.interfaces 
{
	import com.embraceinteractive.gingerbread.core.context.Context;
	
	
	/**
	 * ...
	 * @author Ian Benschop
	 */
	
	public interface IModule 
	{
		function startup():void;
		function register(__context:Context):void;
	}
}