 Bacteria [] colony;
 int i, j;
Boolean e=false;

 void setup()    
 {     
 	size(400,400); 
colony =new Bacteria [400];

for(int i=0;i<colony.length;i++){
colony[i] =new Bacteria ();

}
 }   
 void draw()   
 {    

 	background(100,100,175);  
 	for(int i=0;i<colony.length;i++){
 
	colony[i].walk();
	colony[i].show();
}
fill(225,0,0);
rect(mouseX,i+mouseY,3,5);
rect(mouseX+16,j+mouseY,3,5);
fill(0,225,0);
rect(mouseX,mouseY,20,20);
if(e==true){
	i=0;
	j=0;
}
if(keyCode==90){
if (keyPressed==true||keyCode==89){
	
	
	i=i-50;
	
	j=j-50;

}
}System.out.println(i);
if(i<=-400){
	e=true;
 
} 
else{
	e=false;
 
}

 }  
 class Bacteria    
 {     
 	int myx;
 	int myy;
 	int q,w;
 	Bacteria( ){

 		myx= (int)(Math.random()*201)+100;
 		myy= (int)(Math.random()*201)+100;

 	}  

 	void walk(){
 		if(mouseX>myx){
 			q=9;
 		}
 		if(mouseX<myx){
 			q=7;
 		}
 		if(mouseY>myy){
 			w=9;
 		}
 		if(mouseY<myy){
 			w=7;
 		}
 		if(mouseX==myx&&mouseY==myy){
 			myx= (int)(Math.random()*401);
 		myy= (int)(Math.random()*401);
 		}
 		
 		myx=myx+(int)((Math.random()*q)-4);
 		myy=myy+(int)((Math.random()*w)-4);
 	}
 	void show(){
 		fill((int)myx/2, (int)myy/2, (int)myy/2+(int)myx/2);
 		
 		ellipse(myx,myy,10,10);
 	} 
 }     