float rXP3, rYP3, rWP3, rHP3;
PImage p3;
float iWRatioP3=0.0, iHRatioP3=0.0;
Boolean wP3Larger=false, hP3Larger=false;
int largerP3D, smallerP3D;
float p3WAdjusted, p3HAdjusted;
//
void Evidence1() {
  
}//End Evidence
//
void EvidenceSU() {
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
void EvidenceDraw() {
  image(p3, rXP3, rYP3, p3WAdjusted, p3HAdjusted);
}//End NewsReportDraw
//
void Evidence1mP() {
  if (mouseX>=buttonX[8] && mouseX<=buttonX[8]+buttonWidth[8] && mouseY>=buttonY[8] && mouseY<=buttonY[8]+buttonHeight[8]) {
    println("BTN 8 Activated");
    if (Evidence2==true) { //Button will turn On and Off
      Evidence2=false;
    } else {
      Evidence2=true;
    }
  }
}//End DiaryEntry3mP
//
void EvidenceText() {
  rect(buttonX[8], buttonY[8], buttonWidth[8], buttonHeight[8]);
  fill(grey);
  textAlign(CENTER, CENTER);
  textFont(npFont, 50);
  text(NextPage, buttonX[8], buttonY[8], buttonWidth[8], buttonHeight[8]);
  fill(black);
}//End NewsReportText
