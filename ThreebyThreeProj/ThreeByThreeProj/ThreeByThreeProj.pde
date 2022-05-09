//Global Variables
color black=0, resetWhite=255, orange=#FCC161, brown=#985E00, green=#66D165; //Not nightMode (lots of Blue)
color red=color(255, 0, 0), yellow=color(255, 234, 0); //nightMode
Boolean turnOnYellow=false, NewsReport=false, DiaryEntry1=false, DiaryEntry2=false, DiaryEntry3=false, Evidence1=false, Evidence2=false, Letter=false;
float rectWidth, rectHeight, ptDiameter;
//Points are organized by row and actually ... hint-hint ... value
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
color grey=#E8E8E8, resetDefaultInk=#FFFFFF;
String NextPage = "Next Page";
PFont npFont;
//
float rWP2, rHP2;
PImage p2;
float iWRatioP2=0.0, iHRatioP2=0.0;
Boolean wP2Larger=false, hP2Larger=false;
int largerP2D, smallerP2D;
float p2WAdjusted, p2HAdjusted;
//
void setup()
{
  fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  //
  Population();
  //
  NewsReportSU();
  DiaryEntrySU();
  DiaryEntry2SU();
  DiaryEntry3SU();
  EvidenceSU();
  LetterSU();
}//End setup
//
void draw() {
  //Rectangles must be 3 by 3
  rect(ptX[1], ptY[1], rectWidth, rectHeight);
  //
  //if ( turnOnYellow==true ) fill(yellow); 
  //if ( turnOnOrange==true ) fill(orange); //Overwrites the yellow with orange
  //if ( turnOnBrown==true ) fill(brown); //Overwrites the yellow and orange
  //if ( turnOnYellow==true ) {fill(yellow);} else if ( turnOnOrange==true) {fill(orange);} else if ( turnOnBrown==true ) {fill(brown);}
  rect(ptX[2], ptY[2], rectWidth, rectHeight); //Buttons change the Color of RECT(#2)
  fill(resetWhite);
  //
  rect(ptX[3], ptY[3], rectWidth, rectHeight);
  rect(ptX[5], ptY[5], rectWidth, rectHeight);
  rect(ptX[6], ptY[6], rectWidth, rectHeight);
  rect(ptX[7], ptY[7], rectWidth, rectHeight);
  rect(ptX[9], ptY[9], rectWidth, rectHeight);
  rect(ptX[10], ptY[10], rectWidth, rectHeight);
  rect(ptX[11], ptY[11], rectWidth, rectHeight);
  //
  hoverOver();
  //
  NewsReportDraw();
  DiaryEntryDraw();
  DiaryEntry2Draw();
  DiaryEntry3Draw();
  EvidenceDraw();
  //Evidence2Draw();
  LetterDraw();
  //
  //Starting pts for rect() must be 1-9 & filled black
  /*
  fill(black);
  ellipse(ptX[1], ptY[1], ptDiameter, ptDiameter);
  ellipse(ptX[2], ptY[2], ptDiameter, ptDiameter);
  ellipse(ptX[3], ptY[3], ptDiameter, ptDiameter);
  ellipse(ptX[5], ptY[5], ptDiameter, ptDiameter);
  ellipse(ptX[6], ptY[6], ptDiameter, ptDiameter);
  ellipse(ptX[7], ptY[7], ptDiameter, ptDiameter);
  ellipse(ptX[9], ptY[9], ptDiameter, ptDiameter);
  ellipse(ptX[10], ptY[10], ptDiameter, ptDiameter);
  ellipse(ptX[11], ptY[11], ptDiameter, ptDiameter);
  fill(resetWhite); //Best Practice
  //
  fill(red);
  //Points for all other ellipses must be red
  ellipse(ptX[4], ptY[4], ptDiameter, ptDiameter);
  ellipse(ptX[8], ptY[8], ptDiameter, ptDiameter);
  ellipse(ptX[12], ptY[12], ptDiameter, ptDiameter);
  ellipse(ptX[13], ptY[13], ptDiameter, ptDiameter);
  ellipse(ptX[14], ptY[14], ptDiameter, ptDiameter);
  ellipse(ptX[15], ptY[15], ptDiameter, ptDiameter);
  ellipse(ptX[16], ptY[16], ptDiameter, ptDiameter);
  fill(resetWhite); //Best Practice
  */
}//End draw
//
void keyPressed() {
  CloseFilekeyPressed();
}//End keyPressed
//
void mousePressed() {
  LettermP();
  RestartFilemousePressed();
  CloseFilemousePressed();
  NewsReportmP();
  Evidence2mP();
  OpenFilemP();
  DiaryEntry1mP();
  Evidence1mP();
  DiaryEntry3mP();
  DiaryEntry2mP();
}//End mousePressed
//
//End MAIN Program
