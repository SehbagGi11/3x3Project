void Evidence2() {
  
}//End Evidence
//
void Evidence2mP() {
  if (mouseX>=buttonX[5] && mouseX<=buttonX[5]+buttonWidth[5] && mouseY>=buttonY[5] && mouseY<=buttonY[5]+buttonHeight[5]) {
    println("BTN 5 Activated");
    if (Letter==true) { //Button will turn On and Off
      Letter=false;
    } else {
      Letter=true;
    }
  }
}//End DiaryEntry3mP
//
void Evidence2Text() {
  rect(buttonX[5], buttonY[5], buttonWidth[5], buttonHeight[5]);
  fill(grey);
  textAlign(CENTER, CENTER);
  textFont(npFont, 50);
  text(NextPage, buttonX[5], buttonY[5], buttonWidth[5], buttonHeight[5]);
  fill(black);
}//End NewsReportText
//
void Evidence2SU() {
  int p3W = 800;
  int p3H = 627;
  if ( p3W >= p3H ) { //ID Larger Dimension: Landscape and Square
    largerP3D = p3W;
    smallerP3D = p3H;
    wP3Larger = true;
  } else { //ID Larger Dimension: Portrait mode
    largerP3D = p3H;
    smallerP3D = p3W;
    hP3Larger = true;
  } //End pic3 larger dimension ID
  println (smallerP3D, largerP3D);
  if ( wP3Larger == true ) iWRatioP3 = float (largerP3D) / float (largerP3D);
  if ( wP3Larger == true ) iHRatioP3 = float (smallerP3D) / float (largerP3D);
  if ( hP3Larger == true ) iWRatioP3 = float (smallerP3D) / float (largerP3D);
  if ( hP3Larger == true ) iHRatioP3 = float (largerP3D) / float (largerP3D);
  println(iWRatioP3, iHRatioP3);
  rXP3 = ptX[9]; 
  rYP3 = ptY[9]; 
  rWP3 = rectWidth; 
  rHP3 = rectHeight;
  p3WAdjusted = rWP3 * iWRatioP3;
  p3HAdjusted = rHP3 * iHRatioP3;
  println (p3W, p3H);
  println (p3WAdjusted, p3HAdjusted);  
}//End NewsReport
//
void Evidence2Draw() {
  image(p3, rXP3, rYP3, p3WAdjusted, p3HAdjusted);
}//End NewsReportDraw
//
