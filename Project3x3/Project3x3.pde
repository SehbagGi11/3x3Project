//Global Variables
color black=0, resetWhite=255; //Not nightMode (lots of blue)
float rectWidth, rectHeight, ptDiameter;
float ptX1, ptY1, ptX2, ptY2, ptX3, ptY3, ptX4, ptY4;
float ptX5, ptY5, ptX6, ptY6, ptX7, ptY7, ptX8, ptY8;
float ptX9, ptY9, ptX10, ptY10, ptX11, ptY11, ptX12, ptY12;
float ptX13, ptY13, ptX14, ptY14, ptX15, ptY15, ptX16, ptY16;
//
void setup() 
{
  size(900, 650); //fullScreen();
  displayOrientation();
  //
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  ptDiameter = appWidth*1/50;
  ptX1 = appWidth*0;
  ptY1 = appHeight*0;
  ptX2 = appWidth*; 
  ptY2 = appHeight*0; 
  ptX3 = appWidth*; 
  ptY3 = appHeight*0;
  ptX4 = appWidth*0; 
  ptY4 = appHeight*; 
  ptX5 = appWidth*; 
  ptY5 = appHeight*; 
  ptX6 = appWidth*; 
  ptY6 = appHeight*;
  ptX7 = appWidth*0; 
  ptY7 = appHeight*; 
  ptX8 = appWidth*; 
  ptY8 = appHeight*; 
  ptX9 = appWidth*; 
  ptY9 = appHeight*;
  ptX10 = appWidth*; 
  ptY10 = appHeight*;
  ptX11 = appWidth*; 
  ptY11 = appHeight*;
  ptX12 = appWidth*; 
  ptY12 = appHeight*;
  ptX13 = appWidth*; 
  ptY13 = appHeight*;
  ptX14 = appWidth*; 
  ptY14 = appHeight*;
  ptX15 = appWidth*; 
  ptY15 = appHeight*;
  ptX16 = appWidth*; 
  ptY16 = appHeight*;
  //
}//End setup
//
void draw() 
{
  //Rectangles must be 3x3, get done tonight*****
  rect(ptX1, ptY1, rectWidth, rectHeight);
  /*
  rect(ptX2, ptY2, rectWidth, rectHeight);
  rect(ptX3, ptY3, rectWidth, rectHeight);
  rect(ptX4, ptY4, rectWidth, rectHeight);
  rect(ptX5, ptY5, rectWidth, rectHeight);
  rect(ptX6, ptY6, rectWidth, rectHeight);
  rect(ptX7, ptY7, rectWidth, rectHeight);
  rect(ptX8, ptY8, rectWidth, rectHeight);
  rect(ptX9, ptY9, rectWidth, rectHeight);
  */
  fill(black);
  //Starting points must be black : 1-9
  ellipse(ptX1, ptY1, ptDiameter, ptDiameter);
  /*
  ellipse(ptX2, ptY2, ptDiameter, ptDiameter);
  ellipse(ptX3, ptY3, ptDiameter, ptDiameter);
  ellipse(ptX4, ptY4, ptDiameter, ptDiameter);
  ellipse(ptX5, ptY5, ptDiameter, ptDiameter);
  ellipse(ptX6, ptY6, ptDiameter, ptDiameter);
  ellipse(ptX7, ptY7, ptDiameter, ptDiameter);
  ellipse(ptX8, ptY8, ptDiameter, ptDiameter);
  ellipse(ptX9, ptY9, ptDiameter, ptDiameter);
  */
  //
  //Other points must be red
  fill(red);
  ellipse(ptX1, ptY1, ptDiameter, ptDiameter);
  /*
  ellipse(ptX4, ptY4, ptDiameter, ptDiameter);
  ellipse(ptX8, ptY8, ptDiameter, ptDiameter);
  ellipse(ptX12, ptY12, ptDiameter, ptDiameter);
  ellipse(ptX13, ptY13, ptDiameter, ptDiameter);
  ellipse(ptX14, ptY14, ptDiameter, ptDiameter);
  ellipse(ptX15, ptY15, ptDiameter, ptDiameter);
  ellipse(ptX16, ptY16, ptDiameter, ptDiameter);
  fill(resetWhite); //Best Practise
  //
}//End draw
//
void keyPressed() 
{
  
}//End keyPressed
//
void mousePressed() 
{
  
}//End mousePressed
//
//End MAIN Program
