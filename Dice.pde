dice test = new dice(150,150);
dice[] multipleDice = new dice[144];
int i;
int bground;
void setup()
{
  size(300,300);
  frameRate(60);
  i = 0;
}

void draw()
{
  bground = bground + 1;
  if (bground >= 20)
  {
     background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
     bground = 0;
  }
  while (i<144)
  {
     dice thisIteration = new dice(((i/12)*25)+13,((((i+1)%12)+1)*25)-13);
     multipleDice[i] = thisIteration;
     i = i + 1;
  }
  int roll = 0;
  while(roll<144)
  {
    multipleDice[roll].show();
    roll = roll + 1;
  }
}

class dice
{
  int myX, myY, myNum;
  dice(int x, int y)
  {
    myX = x;
    myY = y;
    myNum = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255);
    rect(myX-10, myY-10,20,20);  
    fill(0);
    switch(myNum)
    {
      case 1: ellipse(myX,myY,3,3);
      break;
      case 2:
        ellipse(myX-6,myY-6,3,3);
        ellipse(myX+6,myY+6,3,3);
        break;
      case 3:
        ellipse(myX-6,myY-6,3,3);
        ellipse(myX,myY,3,3);
        ellipse(myX+6,myY+6,3,3);
        break;
      case 4:
        ellipse(myX-6,myY-6,3,3);
        ellipse(myX-6,myY+6,3,3);
        ellipse(myX+6,myY-6,3,3);
        ellipse(myX+6,myY+6,3,3);
        break;
      case 5:
        ellipse(myX-6,myY-6,3,3);
        ellipse(myX-6,myY+6,3,3);
        ellipse(myX+6,myY-6,3,3);
        ellipse(myX+6,myY+6,3,3);
        ellipse(myX,myY,3,3);
        break;
      case 6:
        ellipse(myX-6,myY-6,3,3);
        ellipse(myX-6,myY+6,3,3);
        ellipse(myX+6,myY-6,3,3);
        ellipse(myX+6,myY+6,3,3);
        ellipse(myX,myY-6,3,3);
        ellipse(myX,myY+6,3,3);
    }
  }
}
void mouseClicked()
{
  i = 0;
}