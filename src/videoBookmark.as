package
{
	import mx.containers.*;
	import mx.controls.*;
	import flash.net.NetConnection;
	import flash.net.NetStream;
	import flash.media.Video;
	import flash.events.*;
	import flash.net.*;
	import flash.media.*;
	public class videoBookmark extends Box
	{
		private var img:Image;
		private var _duration:Number;
		private var ns:NetStream;
		private var text1:TextInput;
		private var myLoader:URLLoader;
		private var pauseButton:Button;
		private var x1:XML;
		private var i:int;
		private var btm:Button;
		private var newnode:XML;
		private var text123:TextInput;
		private var button1:Button;
		private var box1:HBox;
		private var box2:Box;
		
		private var i1:int;
		
		public function videoBookmark()
		{	/*
 			var camera:Camera = Camera.getCamera(); 
 			var micro:Microphone= Microphone.getMicrophone();
*/
newnode=new XML();
 				x1=<body></body> 
 				newnode=<src>img/Untitled.jpg</src>
		x1=x1.appendChild(newnode);
		newnode=<src>img/Untitled1.jpg</src>
		x1=x1.appendChild(newnode);
 				for (i = 0; i < x1.title.length(); i++)
 				{
 						btm=new Button();
 						btm.label=x1.title[i];
 						btm.addEventListener(MouseEvent.CLICK,doIt);
 						addChild(btm);	
 				} 
 				
 				
 		box1=new HBox();
 		box2=new Box();
 		box2.percentHeight=50;
 				box2.percentWidth=50;
 		
		addChild(box2);
		//box3.percentHeight=25;
		//box3.percentWidth=25;
	//	box2.addChild(box3);
		var videocon:VideoDisplay= new VideoDisplay();
		var myVideo:Video = new Video(200,200);
		
		text1= new TextInput();
		videocon.addChild(myVideo);
		pauseButton=new Button();
		pauseButton.label="Add Bookmark";
		pauseButton.addEventListener(MouseEvent.CLICK,addPop);
		addChild(pauseButton);
		box1.addChild(videocon);
		var nc:NetConnection = new NetConnection();
		nc.connect(null);
		ns = new NetStream(nc);
		myVideo.attachNetStream(ns);
		ns.play("http://www.helpexamples.com/flash/video/cuepoints.flv");
		
		text1.text="hkj"+ns.time+"dsa";
		
		box1.addChild(text1);
		addEventListener(Event.ENTER_FRAME, onEnterFrame);
		
		var client:Object = new Object( );
		client.onMetaData = function(metadata:Object):void {
		_duration=metadata.duration;
		};
		ns.client = client;
		addChild(box1);
	}
	private function doIt(event:Event):void
	{
	
		for (var j:int = 0; j < x1.time.length(); j++)
		 {
 				if(event.target.label==x1.title[j])
 				{
 					if(i1==0)
 					i1++;
 					else
 					box2.removeChild(img);			
 				ns.seek(x1.time[j]);
 				img=new Image();
 		
			img.source=x1.src[j];
			img.percentHeight=100;
			img.percentWidth=100;
		
			box2.addChild(img);
		}	
 		  } 
		
	}

	private function onEnterFrame(event:Event):void 
	{
	
		if(_duration > 0 && ns.time > 0) {
		
		text1.text = Math.round(ns.time) + " / " +
		Math.round(_duration);
		}
		for (var j:int = x1.time.length()-1; j>=0  ; j--)
		 {
		 	if(x1.time[j]<ns.time)
		 	{
		 	box2.removeChild(img);	
 				img.source=x1.src[j];
 				img.percentHeight=100;
			img.percentWidth=100;
 				box2.addChild(img);
 				break;
 			}	
		 }
		/* 	
 				if(event.target.label==x1.title[j])
 				
 				ns.seek(x1.time[j]);
 				if(x1.time[j]==Math.round(ns.time))
 				{
 					ns.seek(1);
 						box2.removeChild(img);	
 				img.source=x1.src[j];
 				img.percentHeight=100;
			img.percentWidth=100;
 				box2.addChild(img);
 			}	
 		  }
		/*if(Math.round(ns.time) == 0)
		{
			img=new Image();
			img.source="img/Untitled.jpg";
			img.percentHeight=25;
			img.percentWidth=25;
			ns.seek(1);
			box3.addChild(img);	
		}
		else if(Math.round(ns.time) ==5)
		{
			img=new Image();
			box3.removeChild(img);
			img.source="img/Untitled.jpg";
			img.percentHeight=25;
			img.percentWidth=25;
			ns.seek(6);
			box3.addChild(img);	
		}*/
	}
	private function addPop(event:Event):void
	{
		text123=new TextInput();
		addChild(text123);
		button1= new Button();
		button1.label="submit";
		addChild(button1);
		button1.addEventListener(MouseEvent.CLICK,function(evt:MouseEvent){pauseButtonPress(evt,text123.text)});
	
		
	}
	private function pauseButtonPress(event:Event,text1:String):void
	{
		removeChild(text123);
		removeChild(button1);
		var name:String=text1;
		newnode=<time>{ns.time}</time>
		x1=x1.appendChild(newnode);
		newnode=<title>{name}</title>
		x1=x1.appendChild(newnode);
		btm=new Button();
		btm.label=name;
 		btm.addEventListener(MouseEvent.CLICK,doIt);
 		addChild(btm);
	}	
	public function pauseVideo():void
	{
			ns.pause();
		}
}	
}





/*
var mic:Microphone;
var camera:Camera;
				
				mic = Microphone.getMicrophone();
				
				mic.gain = 10;
				mic.rate = 11;
				mic.setUseEchoSuppression(true);
				mic.setLoopBack(false);
				mic.setSilenceLevel(5, 1000);
camera = Camera.getCamera();
            	camera.setQuality(0, 80);
				camera.setMode(240, 320, 15);
							
				model.setVideoEnabled(videoEnabled, camera, mic);
nc.call("setVideoEnabledAttribute", 
					new Responder (videoResultHandler, connectionErrorHandler),
					videoEnabled);
					
			// Store the references to the Camera and Microphone
			camera = _camera;
			mic = _mic;		
this.beginVideoStream();
								
				
*/