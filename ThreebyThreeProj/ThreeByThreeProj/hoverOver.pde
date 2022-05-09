void hoverOver() 
{
  //HoverOver is yellow
  if (mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]) {
    fill(yellow);
    LetterText();
    //rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  } else {
    fill(black);
    LetterText();
    //rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  } //Button 1
  //
  if (mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2]) {
    fill(yellow);
    RestartFileText();
  } else {
    fill(black);
    RestartFileText();
  } //Button 2
  //
  if (mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) {
    fill(yellow);
    CloseFileText();
  } else {
    fill(black);
    CloseFileText();
  } //Button 3
  //
  if (mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4]) {
    fill(yellow);
    NewsReportText();
  } else {
    fill(black);
    NewsReportText();
  } //Button 4
  //
  if (mouseX>=buttonX[5] && mouseX<=buttonX[5]+buttonWidth[5] && mouseY>=buttonY[5] && mouseY<=buttonY[5]+buttonHeight[5]) {
    fill(yellow);
    Evidence2Text();
  } else {
    fill(black);
    Evidence2Text();
  } //Button 5
  //
  if (mouseX>=buttonX[6] && mouseX<=buttonX[6]+buttonWidth[6] && mouseY>=buttonY[6] && mouseY<=buttonY[6]+buttonHeight[6]) {
    fill(yellow);
    OFText();
  } else {
    fill(black);
    OFText();
  } //Button 6
  //
  if (mouseX>=buttonX[7] && mouseX<=buttonX[7]+buttonWidth[7] && mouseY>=buttonY[7] && mouseY<=buttonY[7]+buttonHeight[7]) {
    fill(yellow);
    DiaryEntryText();
  } else {
    fill(black);
    DiaryEntryText();
  } //Button 7
  //
  if (mouseX>=buttonX[8] && mouseX<=buttonX[8]+buttonWidth[8] && mouseY>=buttonY[8] && mouseY<=buttonY[8]+buttonHeight[8]) {
    fill(yellow);
    EvidenceText();
  } else {
    fill(black);
    EvidenceText();
  } //Button 8
  //
  if (mouseX>=buttonX[9] && mouseX<=buttonX[9]+buttonWidth[9] && mouseY>=buttonY[9] && mouseY<=buttonY[9]+buttonHeight[9]) {
    fill(yellow);
    DiaryEntry3Text();
  } else {
    fill(black);
    DiaryEntry3Text();
  } //Button 9
  //
  if (mouseX>=buttonX[10] && mouseX<=buttonX[10]+buttonWidth[10] && mouseY>=buttonY[10] && mouseY<=buttonY[10]+buttonHeight[10]) {
    fill(yellow);
    DiaryEntry2Text();
  } else {
    fill(black);
    DiaryEntry2Text();
  } //Button 10
  //
  fill(resetWhite);
}//End hoverOver
