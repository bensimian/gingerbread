package com.embraceinteractive.gingerbread.core.manager 
{
	import com.embraceinteractive.gingerbread.core.interfaces.IModule;
	import flash.utils.*;

	/**
	 * ...
	 * @author Ian Benschop
	 */
	
	public class ModuleManager 
	{
		
		private var _dict:Dictionary;
		
		public function ModuleManager() 
		{
			
		}
		
		public function init():void {
			
			_dict = new Dictionary(true);
		}
		
		public function registerModule(__registerName:String, __module:IModule):void {
			
			if (_dict[__registerName] == undefined){
			
				_dict[__registerName] = __module;
			}else {
				
				throw new Error("Module already registered");
			}
		}
		
			
		public function getModule(__registerName:String):IModule {
			
			var module:IModule;
			if (_dict[__registerName] != undefined)
				module =  _dict[__registerName];
			return module;
		}
		
		public function deleteModule(__registerName:String):void {
			
			if (_dict[__registerName] != undefined) delete _dict[__registerName];
		}
	}
}