package com.embraceinteractive.gingerbread.core.interfaces 
{
	import flash.display.Stage;
	
	/**
	 * ...
	 * @author Ian Benschop
	 */
	public interface IContext 
	{
		function startup(__stage:Stage):void;
		function init():void;
		function registerModules():void;
	}
	
}