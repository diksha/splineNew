package 
{
	import mx.containers.*;
	import mx.controls.*;
	import mx.automation.*;
	import flash.display.*;
	import flash.events.*;
	
	public class Main extends Box 
	{
		private var vbox:VBox;
		private var centerB:Box;
		private var video1:videoBookmark;
		public function Main(){
			
			
			var mainbox:VBox=new VBox();
			mainbox.percentHeight=100;
			mainbox.percentWidth=100;
			mainbox.setStyle("layout","absolute");
			mainbox.setStyle("borderColor","0X040404");
			mainbox.setStyle("layout","absolute");
			mainbox.setStyle("themeColor", "0X070707");
			mainbox.setStyle("borderStyle", "strong")
			mainbox.setStyle("borderColor", "transparent");
			var hmainbox:HBox=new HBox();
			hmainbox.percentHeight=10;
			hmainbox.percentWidth=100;
			var img:Image=new Image();
			img.source="img/Untitled.jpg";
			img.percentHeight=10;
			img.percentWidth=60;
			hmainbox.addChild(img);
			
			var label:Label=new Label();
			label.text="Spline";
			label.setStyle("fontSize", "36");
			hmainbox.addChild(label);
			mainbox.addChild(hmainbox);
			//mainbox.setStyle("backgroundGradientAlphas","[1.0,1.0]");
			//mainbox.setStyle("backgroundGradientColors", "[0XFDF8F8,0XFCFAFA]");
			var hbox2:HBox=new HBox();
			hbox2.percentHeight=90;
			hbox2.percentWidth=100;
			
			vbox=new VBox();
			vbox.percentHeight=100;
			vbox.percentWidth=25;
			vbox.setStyle("borderStyle","solid");
			vbox.setStyle("backgroundColor","0XFFEFFE");
			vbox.setStyle("borderColor", "0XFDFEFF");
			vbox.setStyle("borderThickness","10");
			var button1:Button=new Button();
			var button2:Button=new Button();
			var button3:Button=new Button();
			var button4:Button=new Button();
			var button5:Button=new Button();
			var button6:Button=new Button();
			button1.label="Home";
			button2.label="Chat";
			button3.label="Video";
			button4.label="Live Video";
			button5.label="Upload Videos";
			button6.label="About";
			button1.percentHeight=1;
			button1.percentWidth=100;
			button2.percentHeight=1;
			button2.percentWidth=100;
			button3.percentHeight=1;
			button3.percentWidth=100;
			button4.percentHeight=1;
			button4.percentWidth=100;
			button5.percentHeight=1;
			button5.percentWidth=100;
			button6.percentHeight=1;
			button6.percentWidth=100;
			vbox.addChild(button1);
			vbox.addChild(button2);
			vbox.addChild(button3);
			vbox.addChild(button4);
			vbox.addChild(button5);
			vbox.addChild(button6);
			button1.addEventListener(MouseEvent.CLICK, home);
			button2.addEventListener(MouseEvent.CLICK, chat);
			button3.addEventListener(MouseEvent.CLICK, video);
			button4.addEventListener(MouseEvent.CLICK, liveVideo);
			button5.addEventListener(MouseEvent.CLICK, uploadVideo);
			button6.addEventListener(MouseEvent.CLICK, About);
			 
			var textarea:TextArea=new TextArea();
			textarea.percentHeight=30;
			textarea.percentWidth=100; 
			textarea.setStyle("borderThickness", "10");
			textarea.setStyle("fontSize","6");
			textarea.setStyle("borderColor","0X010305");
			vbox.addChild(textarea);
			hbox2.addChild(vbox);
			centerB=new Box();
			centerB.percentHeight=100;
			centerB.percentWidth=60;
			centerB.setStyle("backgroundColor", "0X161B1B");
			
			centerB.setStyle("alpha","0.68");
			hbox2.addChild(centerB);
			var vbox1:VBox=new VBox();
			var button12:Button=new Button();
			button12.label="hey";
			button12.percentWidth=100;
			vbox1.percentHeight=50;
			vbox1.percentWidth=15;
			vbox1.setStyle("borderStyle", "solid");
			vbox1.setStyle("borderColor", "0X010304");
			vbox1.setStyle("cornerRadius", "11");
			vbox1.setStyle("backgroundColor", "0XF50D0D");
			vbox1.addChild(button12);
			hbox2.addChild(vbox1);
			mainbox.addChild(hbox2);
			addChild(mainbox);

			
			
						
		}
		private function home(event:Event):void
		{
			video1.pauseVideo();
			centerB.removeAllChildren();
			}
		private function chat(event:Event):void
		{
			video1.pauseVideo();
			centerB.removeAllChildren();
			}
		private function video(event:Event):void
		{
			//video1.pauseVideo();
			video1=new videoBookmark();
			centerB.removeAllChildren();
			video1.percentHeight=50;
			video1.percentWidth=100;
			centerB.addChild(video1);
			var button123:Button=new Button();
			button123.label="dja";
			centerB.addChild(button123);
		}
		private function liveVideo(event:Event):void
		{
			video1.pauseVideo();
			centerB.removeAllChildren();
			}
		private function uploadVideo(event:Event):void
		{
			video1.pauseVideo();
			centerB.removeAllChildren();
			}
		private function About(event:Event):void
		{
			video1.pauseVideo();
			centerB.removeAllChildren();
			}
		
	}
}