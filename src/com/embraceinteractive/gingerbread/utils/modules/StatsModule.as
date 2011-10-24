package com.embraceinteractive.gingerbread.utils.modules 
{
	import com.embraceinteractive.gingerbread.core.modules.SimpleVisualModule;
	import com.embraceinteractive.gingerbread.utils.debug.Stats;
	import flash.display.Sprite;
	
	import flash.display.DisplayObjectContainer;
	
	/**
	 * ...
	 * @author Ian Benschop
	 */
	public class StatsModule extends SimpleVisualModule 
	{
		
		public var stats:Stats;
		
		public function StatsModule() 
		{
			moduleName = "MODULE_STATS";
		}
		
		
		override public function startup():void {
			
			
			
			stats = new Stats();
			view = new Sprite();
			view.addChild(stats);
		
			viewport.addChild(view);
			
			super.startup();
		}
	}
}
