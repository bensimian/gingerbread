package com.embraceinteractive.gingerbread.core.modules 
{
	
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Ian Benschop
	 */
	public class SimpleVisualModule extends SimpleBaseModule
	{
		
		public var view:Sprite;
		
		public function SimpleVisualModule() 
		{
			
		}
		

		override public function startup():void {
			
			stage = context.stage;
		}
	}
}