//
void DiaryEntry1() {
  
}//End DiaryEntry1
//
void DiaryEntrySU() {
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
  rXP2 = ptX[7]; 
  rYP2 = ptY[7]; 
  rWP2 = rectWidth; 
  rHP2 = rectHeight;
  p2WAdjusted = rWP2 * iWRatioP2;
  p2HAdjusted = rHP2 * iHRatioP2;
  println (p2W, p2H);
  println (p2WAdjusted, p2HAdjusted);  
}//End NewsReport
//
void DiaryEntryDraw() {
  image(p2, rXP2, rYP2, p2WAdjusted, p2HAdjusted);
}//End NewsReportDraw
//
void DiaryEntry1mP() {
  if (mouseX>=buttonX[7] && mouseX<=buttonX[7]+buttonWidth[7] && mouseY>=buttonY[7] && mouseY<=buttonY[7]+buttonHeight[7]) {
    println("BTN 7 Activated");
    if (DiaryEntry2==true) { //Button will turn On and Off
      DiaryEntry2=false;
    } else {
      DiaryEntry2=true;
    }
  }
}//End DiaryEntry1mP
//
void DiaryEntryText() {
  rect(buttonX[7], buttonY[7], buttonWidth[7], buttonHeight[7]);
  fill(grey);
  textAlign(CENTER, CENTER);
  textFont(npFont, 50);
  text(NextPage, buttonX[7], buttonY[7], buttonWidth[7], buttonHeight[7]);
  fill(black);
}//End NewsReportText
