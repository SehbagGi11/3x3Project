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
