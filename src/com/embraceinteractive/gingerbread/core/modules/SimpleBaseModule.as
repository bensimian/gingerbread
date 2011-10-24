package com.embraceinteractive.gingerbread.core.modules 
{
	import com.embraceinteractive.gingerbread.core.constants.ModuleEvent;
	import com.embraceinteractive.gingerbread.core.interfaces.IModule;

	import flash.display.*;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Ian Benschop
	 */
	
	public class SimpleBaseModule extends AbstractModule implements IModule
	{
		
		public var delays:Vector.<Number> = new Vector.<Number>;
		

		public function SimpleBaseModule() 
		{
			
		}
		
		public function show():void {
			
			
		}
		
		public function hide():void {
			
			
		}
		
		
		public function idle():void {
			
			
		}
		
		public function pend():void {
			
			
		}
		
		public function showComplete():void {
			
			dispatchEvent(new Event(ModuleEvent.SHOW_COMPLETE));
		}
		
		public function hideComplete():void {
			
			dispatchEvent(new Event(ModuleEvent.HIDE_COMPLETE));
		}
		
		public function idleComplete():void {
			
			dispatchEvent(new Event(ModuleEvent.IDLE_COMPLETE));
		}
		
		public function pendComplete():void {
			
			dispatchEvent(new Event(ModuleEvent.PEND_COMPLETE));
		}
	}
}