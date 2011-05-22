package Spline
{
	//import classes for Panel and other containers	
	import mx.containers.*;
	import mx.controls.*;
	import mx.events.*;
	import flash.events.*;
	import flash.text.*;
	import flash.media.*;
	import mx.states.*;
	import mx.managers.*;
	public class SplineView extends Panel
	{
		//MVC Components
		private var model:SplineModel;
		private var controller:SplineController;
		//SplineView Constructor
		private var usernameLabel:Label;
		private var leaveRoomButton:Button;
		private var loginButton:Button;
		private var box1:Box;
		private var textFie:TextInput;
		
		public function SplineView(aModel:SplineModel, aController:SplineController):void{
			super();
			
			this.model = aModel;
			this.controller = aController;
			
			init();
			
		}
		private function init():void
		{
			/*
				This instantiates the menu bar which will be present on the top of the 
				screen at all times.. As of now the menu bar contains a login button
				And when the user enters a room a leave room button is added...		
			*/
			box1= new Box();
			box1.percentHeight=100;
			box1.percentWidth=100;
			addChild(box1);			
				
			// 	The following two lines make the box1 look like a task bar with no
			// 	rounded edges...
			
				box1.setStyle("paddingTop",0);
				box1.setStyle("paddingBottom",0);	
				loginButton= new Button();
				loginButton.label="Login";
				textFie=new TextField();
				leaveRoomButton= new Button();
				leaveRoomButton.label="Leave Room";
				usernameLabel= new Label();
				usernameLabel.text="hi";
				box1.addChild(loginButton);
				box1.addChild(usernameLabel);
				box1.addChild(textFie);
		}
		
	}
}