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
  //
  for (int j=0; j<5; j++) {
    for (int i=1; i<ptX.length; i+=4) {
      ptX[i+j] = appWidth*j/3;
    }
  }
  //
  for (int j=0; j<4; j++) {
    for (int i=1; i<ptX.length; i++) {
      ptY[i+j] = appHeight*j/3;
    }
  }
  //
  //FOR Loops can be grouped
  /*
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
  //FOR Loops can be grouped
  for (int i=1; i<ptX.length; i++) 
  {
    ptY[i] = appHeight*0;
  }  
  for (int i=5; i<ptX.length; i++) 
  {
    ptY[i] = appHeight*1/3;
  }
  for (int i=9; i<ptX.length; i++) 
  {
    ptY[i] = appHeight*2/3;
  }
  for (int i=13; i<ptX.length; i++) 
  {
    ptY[i] = appHeight;
  }
  */
  //
  //Verifying Array Read-in
  println("\nX-values are: ");
  printArray(ptX);
  println("\nY-values are: ");
  printArray(ptY);
  
  ptX[1] = ptX[5] = ptX[9] = ptX[13] = appWidth*0/3;
   ptX[2] = ptX[6] = ptX[10] = ptX[14] = appWidth*1/3;
   ptX[3] = ptX[7] = ptX[11] = ptX[15] = appWidth*2/3;
   ptX[4] = ptX[8] = ptX[12] = ptX[16] = appWidth*3/3;
   //
   ptY[1] = ptY[2] = ptY[3] = ptY[4] = appHeight*0/3;
   ptY[5] = ptY[6] = ptY[7] = ptY[8] = appHeight*1/3;
   ptY[9] = ptY[10] = ptY[11] = ptY[12] = appHeight*2/3;
   ptY[13] = ptY[14] = ptY[15] = ptY[16] = appHeight*3/3;
   
  //
  
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
   
  //
}//End setup
//
void draw() 
{
  for (int j=0; j<2; j+=4) {
    for (int i=1; i<4; i++) {
      rect(ptX[i+j], ptY[i+j], rectWidth, rectHeight);
      fill(black);
      ellipse(ptX[i+j], ptY[i+j], ptDiameter, ptDiameter);
      fill(resetWhite);
    }
  }
  //
  for (int j=0; j<5; j++) {
    for (int i=1; i<ptX.length; i+=4) {
      rect(ptY[i], ptY[i], rectWidth, rectHeight);
      fill(black);
      ellipse(ptY[i], ptY[i], ptDiameter, ptDiameter);
      fill(resetWhite);
    }
  }
  fill(red);

  for (int i=4; i<13; i+=4) {
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
  }
  for (int i=13; i<ptX.length; i++) {
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
  }
  fill(resetWhite);
  //
  /*
  for (int i=1; i<4; i++) {
    rect(ptX[i], ptY[i], rectWidth, rectHeight);
    fill(black);
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
    fill(resetWhite);
  }
  for (int i=5; i<8; i++) {
    rect(ptX[i], ptY[i], rectWidth, rectHeight);
    fill(black);
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
    fill(resetWhite);
  }
  for (int i=9; i<12; i++) {
    rect(ptX[i], ptY[i], rectWidth, rectHeight);
    fill(black);
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
    fill(resetWhite);
  }
  //
  fill(red);
  //Points for all other ellipses must be red
  //Next two FOR Loops can be GROUPED because CODE same
  for (int i=4; i<13; i+=4) {
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
  }
  for (int i=13; i<ptX.length; i++) {
    ellipse(ptX[i], ptY[i], ptDiameter, ptDiameter);
  }
  fill(resetWhite); //Best Practice
  */
  //
  /*
  rect(ptX[1], ptY[1], rectWidth, rectHeight); 
   rect(ptX[2], ptY[2], rectWidth, rectHeight); 
   rect(ptX[3], ptY[3], rectWidth, rectHeight);
   rect(ptX[4], ptY[4], rectWidth, rectHeight);
   rect(ptX[5], ptY[5], rectWidth, rectHeight);
   rect(ptX[6], ptY[6], rectWidth, rectHeight);
   rect(ptX[7], ptY[7], rectWidth, rectHeight);
   rect(ptX[8], ptY[8], rectWidth, rectHeight);
   rect(ptX[9], ptY[9], rectWidth, rectHeight);
   rect(ptX[10], ptY[10], rectWidth, rectHeight);
   rect(ptX[11], ptY[11], rectWidth, rectHeight);
   rect(ptX[12], ptY[12], rectWidth, rectHeight);
   rect(ptX[13], ptY[14], rectWidth, rectHeight);
   rect(ptX[15], ptY[15], rectWidth, rectHeight);
   rect(ptX[16], ptY[16], rectWidth, rectHeight);
   //
   fill(black);
   //Starting points must be black : 1-9
   ellipse(ptX[1], ptY[1], ptDiameter, ptDiameter);
   ellipse(ptX[2], ptY[2], ptDiameter, ptDiameter);
   ellipse(ptX[3], ptY[3], ptDiameter, ptDiameter);
   ellipse(ptX[5], ptY[5], ptDiameter, ptDiameter);
   ellipse(ptX[6], ptY[6], ptDiameter, ptDiameter);
   ellipse(ptX[7], ptY[7], ptDiameter, ptDiameter);
   ellipse(ptX[9], ptY[9], ptDiameter, ptDiameter);
   ellipse(ptX[10], ptY[10], ptDiameter, ptDiameter);
   ellipse(ptX[11], ptY[11], ptDiameter, ptDiameter);
   fill(resetWhite);
   //
   //Other points must be red
   fill(red);
   ellipse(ptX[4], ptY[4], ptDiameter, ptDiameter);
   ellipse(ptX[8], ptY[8], ptDiameter, ptDiameter);
   ellipse(ptX[12], ptY[12], ptDiameter, ptDiameter);
   ellipse(ptX[13], ptY[13], ptDiameter, ptDiameter);
   ellipse(ptX[14], ptY[14], ptDiameter, ptDiameter);
   ellipse(ptX[15], ptY[15], ptDiameter, ptDiameter);
   ellipse(ptX[16], ptY[16], ptDiameter, ptDiameter);
   fill(resetWhite); //Best Practise
   */
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
  /*
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
   */
  //
  /*
  fill(red);
   ellipse(ptX4, ptY4, ptDiameter, ptDiameter);
   ellipse(ptX8, ptY8, ptDiameter, ptDiameter);
   ellipse(ptX12, ptY12, ptDiameter, ptDiameter);
   ellipse(ptX13, ptY13, ptDiameter, ptDiameter);
   ellipse(ptX14, ptY14, ptDiameter, ptDiameter);
   ellipse(ptX15, ptY15, ptDiameter, ptDiameter);
   ellipse(ptX16, ptY16, ptDiameter, ptDiameter);
   fill(resetWhite); //Best Practise
   */
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
