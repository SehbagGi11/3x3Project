int numberOfButtons = 11; //Quit, Reset, 1 per square minimum
float[] buttonX = new float[numberOfButtons];
float[] buttonY = new float[numberOfButtons];
float[] buttonWidth = new float[numberOfButtons];
float[] buttonHeight = new float[numberOfButtons];
//
void Population() 
{
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  ptDiameter = appWidth*1/50;
  //
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
  buttonX[1] = appWidth*(1.0/3.0)*(3.0/12.0); //Section 1; subsection 1, numerator is 1
  buttonY[1] = appHeight*(3.0/12.0); //Section 1; subsection 2, numerator is 1
  buttonWidth[1] = appWidth*(1.0/3.0)*(3.0/6.0); //widthDenominator count = 9 ... 1/9
  buttonHeight[1] = appHeight*(1.0/3.0)*(1.0/5.0); //heightDenominator count = 9 ... 1/9
  //
  buttonX[2] = appWidth*(6.0/15.0); //Section 2; subsection 1, numerator is 3
  buttonY[2] = appHeight*(1.0/3.0)*(1.0/5.0); //Section 2; subsection 2, numerator is 2
  buttonWidth[2] = appWidth*(1.0/3.0)*(3.0/5.0); //widthDenominator count = 6 ... 1/6
  buttonHeight[2] = appHeight*(1.0/3.0)*(1.0/5.0); //heightDenominator count = 6 ... 1/6
  //
  //in CloseFile
  CloseFileSetUp();
  //
  buttonX[4] = appWidth*(27.0/36.0); //Section 4; subsection 1, numerator is 11
  buttonY[4] = appHeight*(3.0/12.0); //Section 4; subsection 2, numerator is 13
  buttonWidth[4] = appWidth*(1.0/3.0)*(3.0/6.0); //widthDenominator count = 15 ... 1/15
  buttonHeight[4] = appHeight*(1.0/3.0)*(1.0/5.0); //heightDenominator count = 15 ... 1/15
  //
  buttonX[5] = appWidth*(1.0/3.0)*(3.0/12.0); //Section 5; subsection 1, numerator is 11
  buttonY[5] = appHeight*(7.0/12.0); //Section 5; subsection 2, numerator is 13
  buttonWidth[5] = appWidth*(1.0/3.0)*(3.0/6.0); //widthDenominator count = 15 ... 1/15
  buttonHeight[5] = appHeight*(1.0/3.0)*(1.0/5.0); //heightDenominator count = 15 ... 1/15
  //
  buttonX[6] = appWidth*(6.0/15.0); //Section 6; subsection 1, numerator is 11
  buttonY[6] = appHeight*(7.0/12.0); //Section 6; subsection 2, numerator is 13
  buttonWidth[6] = appWidth*(1.0/3.0)*(3.0/5.0); //widthDenominator count = 15 ... 1/15
  buttonHeight[6] = appHeight*(1.0/3.0)*(1.0/5.0); //heightDenominator count = 15 ... 1/15
  //
  buttonX[7] = appWidth*(27.0/36.0); //Section 7; subsection 1, numerator is 11
  buttonY[7] = appHeight*(7.0/12.0); //Section 7; subsection 2, numerator is 13
  buttonWidth[7] = appWidth*(1.0/3.0)*(3.0/6.0); //widthDenominator count = 15 ... 1/15
  buttonHeight[7] = appHeight*(1.0/3.0)*(1.0/5.0); //heightDenominator count = 15 ... 1/15
  //
  buttonX[8] = appWidth*(1.0/3.0)*(3.0/12.0); //Section 8; subsection 1, numerator is 11
  buttonY[8] = appHeight*(11.0/12.0); //Section 8; subsection 2, numerator is 13
  buttonWidth[8] = appWidth*(1.0/3.0)*(3.0/6.0); //widthDenominator count = 15 ... 1/15
  buttonHeight[8] = appHeight*(1.0/3.0)*(1.0/5.0); //heightDenominator count = 15 ... 1/15
  //
  buttonX[9] = appWidth*(6.0/15.0); //Section 9; subsection 1, numerator is 11
  buttonY[9] = appHeight*(11.0/12.0); //Section 9; subsection 2, numerator is 13
  buttonWidth[9] = appWidth*(1.0/3.0)*(3.0/5.0); //widthDenominator count = 15 ... 1/15
  buttonHeight[9] = appHeight*(1.0/3.0)*(1.0/5.0); //heightDenominator count = 15 ... 1/15
  //
  buttonX[10] = appWidth*(27.0/36.0); //Section 10; subsection 1, numerator is 11
  buttonY[10] = appHeight*(11.0/12.0); //Section 10; subsection 2, numerator is 13
  buttonWidth[10] = appWidth*(1.0/3.0)*(3.0/6.0); //widthDenominator count = 15 ... 1/15
  buttonHeight[10] = appHeight*(1.0/3.0)*(1.0/5.0); //heightDenominator count = 15 ... 1/15
  //
  printArray(buttonX);
  printArray(buttonY);
  printArray(buttonWidth);
  printArray(buttonHeight);
  //
  p1 = loadImage("pngtree-news-interview-news-report-background-picture-image_1473874.jpg");
  beginShape();
   texture(p1);
   rect(ptX[3], ptY[3], rectWidth, rectHeight*2);
  endShape(CLOSE);
  //
  p2 = loadImage("360_F_65392436_Fx6DsEnZScSCfIwo6bqiCjKcKUCB6OmB.jpg");
  p3 = loadImage("800px_COLOURBOX7561229.jpg");
  p4 = loadImage("3693386.jpg");
  //
  npFont = createFont("Bahnschrift-48", 55);
  //dEFont = createFont("Chiller-Regular-48", 55);
}//End Population
