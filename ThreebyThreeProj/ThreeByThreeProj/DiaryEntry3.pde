float rXP23, rYP23;
//
void DiaryEntry3() {
  
}//End DiaryEntry3
//
void DiaryEntry3mP() {
  if (mouseX>=buttonX[9] && mouseX<=buttonX[9]+buttonWidth[9] && mouseY>=buttonY[9] && mouseY<=buttonY[9]+buttonHeight[9]) {
    println("BTN 9 Activated");
    if (Evidence1==true) { //Button will turn On and Off
      Evidence1=false;
    } else {
      Evidence1=true;
    }
  }
}//End DiaryEntry3mP
//
void DiaryEntry3Text() {
  rect(buttonX[9], buttonY[9], buttonWidth[9], buttonHeight[9]);
  fill(grey);
  textAlign(CENTER, CENTER);
  textFont(npFont, 50);
  text(NextPage, buttonX[9], buttonY[9], buttonWidth[9], buttonHeight[9]);
  fill(black);
}//End NewsReportText
//
void DiaryEntry3SU() {
  int p2W = 536;
  int p2H = 360;
  if ( p2W >= p2H ) { //ID Larger Dimension: Landscape and Square
    largerP2D = p2W;
    smallerP2D = p2H;
    wP2Larger = true;
  } else { //ID Larger Dimension: Portrait mode
    largerP2D = p2H;
    smallerP2D = p2W;
    hP2Larger = true;
  } //End pic2 larger dimension ID
  println (smallerP2D, largerP2D);
  if ( wP2Larger == true ) iWRatioP2 = float (largerP2D) / float (largerP2D);
  if ( wP2Larger == true ) iHRatioP2 = float (smallerP2D) / float (largerP2D);
  if ( hP2Larger == true ) iWRatioP2 = float (smallerP2D) / float (largerP2D);
  if ( hP2Larger == true ) iHRatioP2 = float (largerP2D) / float (largerP2D);
  println(iWRatioP2, iHRatioP2);
  rXP23 = ptX[11]; 
  rYP23 = ptY[11]; 
  rWP2 = rectWidth; 
  rHP2 = rectHeight;
  p2WAdjusted = rWP2 * iWRatioP2;
  p2HAdjusted = rHP2 * iHRatioP2;
  println (p2W, p2H);
  println (p2WAdjusted, p2HAdjusted);
}//End DiaryEntry2SU
//
void DiaryEntry3Draw() {
  image(p2, rXP2, rYP2, p2WAdjusted, p2HAdjusted);
}//End DiaryEntry2Draw
