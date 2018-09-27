void setup()
{
	size(600,600);
	noLoop();
}
void draw()
{
int total = 0;
background(67, 175, 5);
for (int y = 0; y<=550; y+=52)
{
	for (int x = 0; x<=550; x+=52)
	{
		Die bob = new Die(x,y);
		bob.show();
		bob.roll();
		total = total + bob.side;
	} 
}
fill(0);
textAlign(CENTER);
text("Total : " + total, 550, 590);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int side, myX, myY;
	
	Die(int x, int y) //constructor
	{
		side = (int)((Math.random()*6)+1);
		myX = x;
		myY = y;
	}
	void roll()
	{
	if(side == 1)
		{
			fill(0);
			ellipse(myX+25,myY+25,7,7);
		} else if(side == 2)
		{
			fill(0);
			ellipse(myX+13,myY+13,7,7);
			fill(0);
			ellipse(myX+37,myY+37,7,7);
		} else if(side == 3)
		{
			fill(0);
			ellipse(myX+13,myY+13,7,7);
			fill(0);
			ellipse(myX+37,myY+37,7,7);
			fill(0);
			ellipse(myX+25,myY+25,7,7);
		} else if(side == 4)
		{
			fill(0);
			ellipse(myX+13,myY+13,7,7);
			fill(0);
			ellipse(myX+37,myY+37,7,7);
			fill(0);
			ellipse(myX+13,myY+37,7,7);
			fill(0);
			ellipse(myX+37,myY+13,7,7);
		} else if(side == 5)
		{
			fill(0);
			ellipse(myX+13,myY+13,7,7);
			fill(0);
			ellipse(myX+37,myY+37,7,7);
			fill(0);
			ellipse(myX+13,myY+37,7,7);
			fill(0);
			ellipse(myX+37,myY+13,7,7);
			fill(0);
			ellipse(myX+25,myY+25,7,7);
		} else
		{
			fill(0);
			ellipse(myX+13,myY+13,7,7);
			fill(0);
			ellipse(myX+37,myY+37,7,7);
			fill(0);
			ellipse(myX+13,myY+37,7,7);
			fill(0);
			ellipse(myX+37,myY+13,7,7);
			fill(0);
			ellipse(myX+13,myY+25,7,7);
			fill(0);
			ellipse(myX+37,myY+25,7,7);
		}
	}
	void show()
	{
		fill(255);
		rect(myX,myY,50,50,11);
	}
}
