float rXP22, rYP22;
//
void DiaryEntry2() {
  
}//End DiaryEntry2
//
void DiaryEntry2mP() {
  if (mouseX>=buttonX[10] && mouseX<=buttonX[10]+buttonWidth[10] && mouseY>=buttonY[10] && mouseY<=buttonY[10]+buttonHeight[10]) {
    println("BTN 10 Activated");
    if (DiaryEntry3==true) { //Button will turn On and Off
      DiaryEntry3=false;
    } else {
      DiaryEntry3=true;
    }
  }
}//End DiaryEntry2mP
//
void DiaryEntry2Text() {
  rect(buttonX[10], buttonY[10], buttonWidth[10], buttonHeight[10]);
  fill(grey);
  textAlign(CENTER, CENTER);
  textFont(npFont, 50);
  text(NextPage, buttonX[10], buttonY[10], buttonWidth[10], buttonHeight[10]);
  fill(black);
}//End NewsReportText
//
void DiaryEntry2SU() {
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
  rXP22 = ptX[11]; 
  rYP22 = ptY[11]; 
  rWP2 = rectWidth; 
  rHP2 = rectHeight;
  p2WAdjusted = rWP2 * iWRatioP2;
  p2HAdjusted = rHP2 * iHRatioP2;
  println (p2W, p2H);
  println (p2WAdjusted, p2HAdjusted);
}//End DiaryEntry2SU
//
void DiaryEntry2Draw() {
  image(p2, rXP2, rYP2, p2WAdjusted, p2HAdjusted);
}//End DiaryEntry2Draw
