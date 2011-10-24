package com.embraceinteractive.gingerbread.core.modules 
{
	
	
	import com.embraceinteractive.gingerbread.core.constants.ContextEvents;
	import com.embraceinteractive.gingerbread.core.constants.ModuleEvent;
	import com.embraceinteractive.gingerbread.core.context.Context;
	import com.embraceinteractive.gingerbread.core.dispatcher.ContextEventDispatcher;
	import com.embraceinteractive.gingerbread.core.interfaces.IContext;
	import com.embraceinteractive.gingerbread.core.interfaces.IModule;

	
	import flash.display.*;
	import flash.events.*;
	
	/**
	 * ...
	 * @author Ian Benschop;
	 */
	public class AbstractModule extends EventDispatcher implements IModule
	{
		
		public var contextEventDispatcher:ContextEventDispatcher;
		public var context:Context;
		public var stage:Stage;
		public var autoStartUp:Boolean = true;
		public var isStarted:Boolean = false;
		public var viewport:DisplayObjectContainer;
	
		
		public var moduleName:String;
		
		

		public function AbstractModule()                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
		{
			
		}
		
		public function startUpComplete():void {
			
			isStarted = true;
			dispatchEvent(new Event(ModuleEvent.STARTUP_COMPLETE));
		}
		
		private function startupHandler(e:Event):void 
		{
			contextEventDispatcher.removeEventListener(ContextEvents.STARTUP, startupHandler);
			startup();
		}	

		public function startup():void {
		
			startUpComplete();
		}
	
		public function register(__context:Context):void {
			
			//created references to avoid lookup
			context = __context as Context;
			stage = context.stage;
			viewport = __context.viewport;
			contextEventDispatcher = __context.contextEventDispatcher;
			context.moduleManager.registerModule(moduleName, this);
		
			if(autoStartUp) contextEventDispatcher.addEventListener(ContextEvents.STARTUP, startupHandler);
		}
	}
}