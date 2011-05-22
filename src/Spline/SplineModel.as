package Spline
{
	import mx.containers.*;
	import mx.controls.*;
	import mx.events.*;
	import flash.events.*;
	import flash.media.*;
	import mx.states.*;
	import mx.managers.*;
	
	public class SplineModel extends EventDispatcher
	{
		public function SplineModel(){
			_currentState = "";
			
			_username = null;
			
			_videoEnabled = false;
			
			_serverIP = null;
			
			netStreamArray = new ArrayCollection();
			usernameMap = new ArrayCollection();
			
			// Dispatch a Change Event
			this.updateState();
		}
		
	}
}