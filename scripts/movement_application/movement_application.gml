//requires valid horizontal and vertical collision check scripts.

var xSpd = argument0, ySpd = argument1;

if xSpd!=0 {
	if script_execute(collisionCheckScript,x+xSpd,y){
		x+=xSpd	
	} else {
		var xDir = sign(xSpd),
			i = 0;
		
		while (i+1<abs(xSpd) and script_execute(collisionCheckScript,x+(i+1)*xDir,y))
		{
			i++;
		}
		
		x+=i*xDir
	}
}

if ySpd!=0 {
	if script_execute(collisionCheckScript,x,y+ySpd){
		y+=ySpd	
	} else {
		var yDir = sign(ySpd),
			i = 0;
		
		while ((i+1)<abs(ySpd) and script_execute(collisionCheckScript,x,y+(i+1)*yDir))
		{
			i++;
		} 
		
		y+=i*yDir	
	}
}