float rXP4, rYP4, rWP4, rHP4;
PImage p4;
float iWRatioP4=0.0, iHRatioP4=0.0;
Boolean wP4Larger=false, hP4Larger=false;
int largerP4D, smallerP4D;
float p4WAdjusted, p4HAdjusted;
//
void Letter() {
  
}//End Letter
//
void LettermP() {
  if (mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]) {
    println("BTN 1 Activated");
    if (Letter==true) { //Button will turn On and Off
      Letter=false;
    } else {
      Letter=true;
    }
  }
  /*
  if (mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]) {
    println("BTN 1 Activated");
    if (turnOnYellow==true) { //Button will turn On and Off
      turnOnYellow=false;
    } else {
      turnOnYellow=true;
    }
  }
  */
}//End DiaryEntry3mP
//
void LetterText() {
  rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  fill(grey);
  textAlign(CENTER, CENTER);
  textFont(npFont, 50);
  text(NextPage, buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  fill(resetWhite);
}//End NewsReportText
//
void LetterSU() {
  int p4W = 1200;
  int p4H = 900;
  if ( p4W >= p4H ) { //ID Larger Dimension: Landscape and Square
    largerP4D = p4W;
    smallerP4D = p4H;
    wP4Larger = true;
  } else { //ID Larger Dimension: Portrait mode
    largerP4D = p4H;
    smallerP4D = p4W;
    hP4Larger = true;
  } //End pic4 larger dimension ID
  println (smallerP4D, largerP4D);
  if ( wP4Larger == true ) iWRatioP4 = float (largerP4D) / float (largerP4D);
  if ( wP4Larger == true ) iHRatioP4 = float (smallerP4D) / float (largerP4D);
  if ( hP4Larger == true ) iWRatioP4 = float (smallerP4D) / float (largerP4D);
  if ( hP4Larger == true ) iHRatioP4 = float (largerP4D) / float (largerP4D);
  println(iWRatioP4, iHRatioP4);
  rXP4 = ptX[1]; 
  rYP4 = ptY[1]; 
  rWP4 = rectWidth; 
  rHP4 = rectHeight;
  p4WAdjusted = rWP4 * iWRatioP4;
  p4HAdjusted = rHP4 * iHRatioP4;
  println (p4W, p4H);
  println (p4WAdjusted, p4HAdjusted);  
}//End NewsReport
//
void LetterDraw() {
  image(p4, rXP4, rYP4, p4WAdjusted, p4HAdjusted);
}//End NewsReportDraw
