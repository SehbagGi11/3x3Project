String T = "Restart File";
float TX, TY, TW, TH;
PFont TFont;
color TR=#CEB6AD, TresetDefaultInk=#FFFFFF;
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
  rect(TX, TY, TW, TH); 
  fill(TR); 
  textAlign(CENTER, CENTER); 
  textFont(TFont, 120); 
  text(T, TX, TY, TW, TH);
  fill(TresetDefaultInk);
}//End CloseFileText
