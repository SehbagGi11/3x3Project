String CF = "Close File";
String RF = "Restart File";
float TX, TY, TW, TH;
color TR=#CEB6AD;
float rXP2, rYP2;
//
void CloseFileSetUp() {
  buttonX[3] = appWidth*(6.0/15.0); //Section 3; subsection 1, numerator is 11
  buttonY[3] = appHeight*(1.0/3.0)*(3.0/5.0); //Section 3; subsection 2, numerator is 13
  buttonWidth[3] = appWidth*(1.0/3.0)*(3.0/5.0); //widthDenominator count = 15 ... 1/15
  buttonHeight[3] = appHeight*(1.0/3.0)*(1.0/5.0); //heightDenominator count = 15 ... 1/15
}//End CloseFile
//
void CloseFileDraw() {
}//End CloseFileDraw
//
void CloseFilekeyPressed() {
  if ( key=='Q' || key=='q' ) exit();
}//End CloseFilekeyPressed
//
void CloseFilemousePressed() {
  if (mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) exit();
  {
    println("BTN 3 Activated");
  }
}//End CloseFilemousePressed
void CloseFileText() {
  rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  fill(grey);
  textAlign(CENTER, CENTER);
  textFont(npFont, 50);
  text(CF, buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  fill(black);
}//End CloseFileText
//
void RestartFileSetUp() {
  
}//End RestartFileSetUp
//
void RestartFileDraw() {
  
}//End RestartFileDraw
//
void RestartFilemousePressed() {
  if (mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2]) {
    println("BTN 2 Activated");
    NewsReport=false; 
    DiaryEntry1=false; 
    DiaryEntry2=false; 
    DiaryEntry3=false; 
    Evidence1=false; 
    Evidence2=false;
    Letter=false;
  }
}//End RestartFilemousePressed
//
void RestartFileText() {
  rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  fill(grey);
  textAlign(CENTER, CENTER);
  textFont(npFont, 50);
  text(RF, buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  fill(black);
}//End CloseFileText
