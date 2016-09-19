 Bacteria [] colony;
 void setup()   
 {     
 	size(400,400); 
colony =new Bacteria [1000];

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
 }  
 class Bacteria    
 {     
 	int myx;
 	int myy;
 	/*int r= (int)(Math.random()*226);
 	int g= (int)(Math.random()*226);
 	int b= (int)(Math.random()*226);*/
 	Bacteria( ){

 		myx= (int)(Math.random()*401);
 		myy= (int)(Math.random()*401);

 	} 

 	void walk(){
 		myx=myx+(int)((Math.random()*8)-4);
 		myy=myy+(int)((Math.random()*8)-4);
 	}
 	void show(){
 		fill((int)myx/2, (int)myy/2, (int)myy/2+(int)myx/2);
 		
 		ellipse(myx,myy,10,10);
 	} 
 }     