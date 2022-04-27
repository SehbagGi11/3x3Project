//Global Variables
color black=0, resetWhite=255, red=#F70000; //Not nightMode (lots of blue)
float rectWidth, rectHeight, ptDiameter;
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];

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
  ptX1 = appWidth*0; //ptX1 = appWidth*0;
  ptY1 = appHeight*0; //ptY1 = appHeight*0;
  ptX2 = appWidth*1/3; //ptX2 = appWidth*1/3;
  ptY2 = appHeight*0; //ptY2 = appHeight*0;
  ptX3 = appWidth*2/3; //ptX3 = appWidth*2/3; 
  ptY3 = appHeight*0; //ptY3 = appHeight*0;
  ptX4 = appWidth; //ptX4 = appWidth;
  ptY4 = appHeight*0; //ptY4 = appHeight*0;
  ptX5 = appWidth*0; //ptX5 = appWidth*0;
  ptY5 = appHeight*1/3; //ptY5 = appHeight*1/3;
  ptX6 = appWidth*1/3; //ptX6 = appWidth*1/3;
  ptY6 = appHeight*1/3; //ptY6 = appHeight*1/3;
  ptX7 = appWidth*2/3; //ptX7 = appWidth*2/3;
  ptY7 = appHeight*1/3; //ptY7 = appHeight*1/3;
  ptX8 = appWidth; //ptX8 = appWidth;
  ptY8 = appHeight*1/3; //ptY8 = appHeight*1/3;
  ptX9 = appWidth*0; //ptX9 = appWidth*0;
  ptY9 = appHeight*2/3; //ptY9 = appHeight*2/3;
  ptX10 = appWidth*1/3; //ptX10 = appWidth*1/3;
  ptY10 = appHeight*2/3; //ptY10 = appHeight*2/3;
  ptX11 = appWidth*2/3; //ptX11 = appWidth*2/3;
  ptY11 = appHeight*2/3; //ptY11 = appHeight*2/3;
  ptX12 = appWidth; //ptX12 = appWidth;
  ptY12 = appHeight*2/3; //ptY12 = appHeight*2/3;
  ptX13 = appWidth*0; //ptX13 = appWidth*0;
  ptY13 = appHeight; //ptY13 = appHeight;
  ptX14 = appWidth*1/3; //ptX14 = appWidth*1/3;
  ptY14 = appHeight; //ptY14 = appHeight;
  ptX15 = appWidth*2/3; //ptX15 = appWidth*2/3;
  ptY15 = appHeight; //ptY15 = appHeight;
  ptX16 = appWidth; //ptX16 = appWidth;
  ptY16 = appHeight; //ptY16 = appHeight;
  /*
  ptX1 = appWidth*0; //ptX1 = appWidth*0;
  ptY1 = appHeight*0; //ptY1 = appHeight*0;
  ptX2 = appWidth*1/3; //ptX2 = appWidth*1/3;
  ptY2 = appHeight*0; //ptY2 = appHeight*0;
  ptX3 = appWidth*2/3; //ptX3 = appWidth*2/3; 
  ptY3 = appHeight*0; //ptY3 = appHeight*0;
  ptX4 = appWidth; //ptX4 = appWidth;
  ptY4 = appHeight*0; //ptY4 = appHeight*0;
  ptX5 = appWidth*0; //ptX5 = appWidth*0;
  ptY5 = appHeight*1/3; //ptY5 = appHeight*1/3;
  ptX6 = appWidth*1/3; //ptX6 = appWidth*1/3;
  ptY6 = appHeight*1/3; //ptY6 = appHeight*1/3;
  ptX7 = appWidth*2/3; //ptX7 = appWidth*2/3;
  ptY7 = appHeight*1/3; //ptY7 = appHeight*1/3;
  ptX8 = appWidth; //ptX8 = appWidth;
  ptY8 = appHeight*1/3; //ptY8 = appHeight*1/3;
  ptX9 = appWidth*0; //ptX9 = appWidth*0;
  ptY9 = appHeight*2/3; //ptY9 = appHeight*2/3;
  ptX10 = appWidth*1/3; //ptX10 = appWidth*1/3;
  ptY10 = appHeight*2/3; //ptY10 = appHeight*2/3;
  ptX11 = appWidth*2/3; //ptX11 = appWidth*2/3;
  ptY11 = appHeight*2/3; //ptY11 = appHeight*2/3;
  ptX12 = appWidth; //ptX12 = appWidth;
  ptY12 = appHeight*2/3; //ptY12 = appHeight*2/3;
  ptX13 = appWidth*0; //ptX13 = appWidth*0;
  ptY13 = appHeight; //ptY13 = appHeight;
  ptX14 = appWidth*1/3; //ptX14 = appWidth*1/3;
  ptY14 = appHeight; //ptY14 = appHeight;
  ptX15 = appWidth*2/3; //ptX15 = appWidth*2/3;
  ptY15 = appHeight; //ptY15 = appHeight;
  ptX16 = appWidth; //ptX16 = appWidth;
  ptY16 = appHeight; //ptY16 = appHeight;
  */
  //
  //FOR Loops can be grouped
  for (int i=1; i<ptX.length; i+=4) 
  {
    ptX[i] = appWidth*0;
  }  
  for (int i=2; i<ptX.length; i+=4) 
  {
    ptX[i] = appWidth*1/3;
  }
  for (int i=3; i<ptX.length; i+=4) 
  {
    ptX[i] = appWidth*2/3;
  }
  for (int i=4; i<ptX.length; i+=4) 
  {
    ptX[i] = appWidth;
  }
  //
}//End setup
//
void draw() 
{
  rect(ptX1, ptY1, rectWidth, rectHeight); 
  rect(ptX2, ptY2, rectWidth, rectHeight); 
  rect(ptX3, ptY3, rectWidth, rectHeight);
  rect(ptX4, ptY4, rectWidth, rectHeight);
  rect(ptX5, ptY5, rectWidth, rectHeight);
  rect(ptX6, ptY6, rectWidth, rectHeight);
  rect(ptX7, ptY7, rectWidth, rectHeight);
  rect(ptX8, ptY8, rectWidth, rectHeight);
  rect(ptX9, ptY9, rectWidth, rectHeight);
  rect(ptX10, ptY10, rectWidth, rectHeight);
  rect(ptX11, ptY11, rectWidth, rectHeight);
  rect(ptX12, ptY12, rectWidth, rectHeight);
  rect(ptX13, ptY14, rectWidth, rectHeight);
  rect(ptX15, ptY15, rectWidth, rectHeight);
  rect(ptX16, ptY16, rectWidth, rectHeight);
  /*
  rect(ptX1, ptY1, rectWidth, rectHeight);
  rect(ptX2, ptY2, rectWidth, rectHeight);
  rect(ptX3, ptY3, rectWidth, rectHeight);
  rect(ptX4, ptY4, rectWidth, rectHeight);
  rect(ptX5, ptY5, rectWidth, rectHeight);
  rect(ptX6, ptY6, rectWidth, rectHeight);
  rect(ptX7, ptY7, rectWidth, rectHeight);
  rect(ptX8, ptY8, rectWidth, rectHeight);
  rect(ptX9, ptY9, rectWidth, rectHeight);
  rect(ptX10, ptY10, rectWidth, rectHeight);
  rect(ptX11, ptY11, rectWidth, rectHeight);
  rect(ptX12, ptY12, rectWidth, rectHeight);
  rect(ptX13, ptY14, rectWidth, rectHeight);
  rect(ptX15, ptY15, rectWidth, rectHeight);
  rect(ptX16, ptY16, rectWidth, rectHeight);
  */
  fill(black);
  //Starting points must be black : 1-9
  ellipse(ptX1, ptY1, ptDiameter, ptDiameter);
  ellipse(ptX2, ptY2, ptDiameter, ptDiameter);
  ellipse(ptX3, ptY3, ptDiameter, ptDiameter);
  ellipse(ptX4, ptY4, ptDiameter, ptDiameter);
  ellipse(ptX5, ptY5, ptDiameter, ptDiameter);
  ellipse(ptX6, ptY6, ptDiameter, ptDiameter);
  ellipse(ptX7, ptY7, ptDiameter, ptDiameter);
  ellipse(ptX8, ptY8, ptDiameter, ptDiameter);
  ellipse(ptX9, ptY9, ptDiameter, ptDiameter);
  ellipse(ptX10, ptY10, ptDiameter, ptDiameter);
  ellipse(ptX11, ptY11, ptDiameter, ptDiameter);
  ellipse(ptX12, ptY12, ptDiameter, ptDiameter);
  ellipse(ptX13, ptY13, ptDiameter, ptDiameter);
  ellipse(ptX14, ptY14, ptDiameter, ptDiameter);
  ellipse(ptX15, ptY15, ptDiameter, ptDiameter);
  ellipse(ptX16, ptY16, ptDiameter, ptDiameter);
  //
  //Other points must be red
  fill(red);
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
