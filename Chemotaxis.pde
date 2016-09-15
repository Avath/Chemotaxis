 Bacteria [] colony;
 void setup()   
 {     
 	size(400,400); 
colony =new Bacteria [1000];

 }   
 void draw()   
 {    

 	background(100,100,175);  
 	for(int i=0;i<colony.length;i++){

	colony.walk();
	colony.show();
}
 }  
 class Bacteria    
 {     
 	int x;
 	int y;
 	int r= (int)(Math.random*226);
 	int g= (int)(Math.random*226);
 	int b= (int)(Math.random*226);
 	Bacteria( int x, int y){

 		x= (int)(Math.random*401);
 		y= (int)(Math.random*401);

 	} 

 	void walk(){
 		x=x+((Math.random()*5)-2);
 		y=y+((Math.random()*5)-2);
 	}
 	void show(){
 		fill(r,g,b);
 		ellipse(x,y,10,10);
 	} 
 }      