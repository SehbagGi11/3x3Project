String OpenFile = "Open File";
void OpenFile() {
  
}//End OpenFile
//
void OpenFilemP() {
  if (mouseX>=buttonX[6] && mouseX<=buttonX[6]+buttonWidth[6] && mouseY>=buttonY[6] && mouseY<=buttonY[6]+buttonHeight[6]) {
    println("BTN 6 Activated");
    if (NewsReport==true) { //Button will turn On and Off
      NewsReport=false;
    } else {
      NewsReport=true;
    }
  }
}//End OpenFilemP
//
void OFText() {
  rect(buttonX[6], buttonY[6], buttonWidth[6], buttonHeight[6]);
  fill(grey);
  textAlign(CENTER, CENTER);
  textFont(npFont, 50);
  text(OpenFile, buttonX[6], buttonY[6], buttonWidth[6], buttonHeight[6]);
  fill(black);
}//End NewsReportText
