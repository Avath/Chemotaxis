 Bacteria [] colony;
 int i, j;
Boolean e=false;
int r;
int m=200;
int mo=375;
 void setup()    
 {     
 	size(400,400); 
colony =new Bacteria [40];

for(int i=0;i<colony.length;i++){
colony[i] =new Bacteria ();

}
 }   
 void draw()   
 {    

 	background(100,100,175); 
 	//for(int r=0;r<400;r=+2){
 	fill(225,0,0);
 	 rect(m,i+mo,3,5);
rect(m+16,j+mo,3,5);
 	//}
 	for(int i=0;i<colony.length;i++){
 
	colony[i].walk();
	colony[i].show();
}
fill(225,0,0);

fill(0,225,0);
rect(m,mo,20,20);
if(keyCode==UP){
	mo-=4;
}
if(keyCode==DOWN){
	mo+=4;
}
if(keyCode==RIGHT){
	m+=4;
}
if(keyCode==LEFT){
	m-=4;
}
if(e==true){
	i=0;
	j=0;
}

if(keyCode==90){
	
	
	i=i-2;
	
	j=j-2;

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
 		if(m>myx){
 			q=9;
 		}
 		if(m<myx){
 			q=7;
 		}
 		if(mo>myy){
 			w=9;
 		}
 		if(mo<myy){
 			w=7;
 		}
 		if(mouseX==myx&&mouseY==myy){
 			myx= (int)(Math.random()*401);
 		myy= (int)(Math.random()*401);
 		}
 		
 		myx=myx+(int)((Math.random()*q)-4);
 		myy=myy+(int)((Math.random()*w)-4);
 		if(get(myx,myy)==color(225,0,0)){
 			myx=(int)(Math.random()*401);
 			myy= (int)(Math.random()*101);
 		}
 	}
 	void show(){
 		fill((int)myx/2, (int)myy/2, (int)myy/2+(int)myx/2);
 		
 		ellipse(myx,myy,10,10);
 	} 
 }     