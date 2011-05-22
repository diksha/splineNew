package 
{
	import mx.containers.*;
	import mx.controls.*;
	import flash.events.*;
	
	public class Main extends Panel 
	{
		private var box123:HBox;
		
		public function Main(){
			box123=new HBox();
			box123.percentHeight=50;
			box123.percentWidth=50;
			addChild(box123);
			var Button123:Button=new Button();
			Button123.label="hello";
			Button123.addEventListener(MouseEvent.CLICK,hellofunc);
			addChild(Button123);
		}
		
		private function hellofunc(event:Event):void
		{
				var button234:Button=new Button();
				button234.label="hhshs";
				box123.addChild(button234);
		}
	}
}