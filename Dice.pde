void setup()
{
	size(600,600);
	noLoop();
}
void draw()
{
Die bob = new Die(300,300);
bob.show();
bob.roll();
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
