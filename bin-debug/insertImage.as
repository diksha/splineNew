package 
{
	import flash.display.*;
	import mx.containers.*;
	import flash.net.*;
	import mx.controls.*;
	public class Main extends Panel 
	{
		
		public function Main(){
			var img:Image=new Image();
			img.source="img/Untitled.jpg";
			img.percentHeight=25;
			img.percentWidth=25;
			addChild(img);
		}
		
	}
}