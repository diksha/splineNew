package 
{
	import mx.containers.*;
	import mx.controls.*;
	import flash.events.*;
	public class Main extends Box 
	{
		private var mainBox:HBox;
		
		public function Main(){
			var button0:Button=new Button();
			button0.label="submit"
				mainBox=new HBox();
				mainBox.percentHeight=50;
				mainBox.percentWidth=50;
				var button:Button=new Button();
				button.label="wassup";
				mainBox.addChild(button);
				var button1:Button=new Button();
				button1.label="hi";
				mainBox.addChild(button1);
				addChild(mainBox);
				addChild(button0);
				button0.addEventListener(MouseEvent.CLICK, hello);
	
		}
		private function hello(event:Event):void
		{
				mainBox.removeAllChildren();
			}
		
	}
}