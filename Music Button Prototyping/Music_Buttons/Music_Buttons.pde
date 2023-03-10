//Global Variables 
 float buttonReferentMeasure;
 float buttonSide, spaceWidth, spaceHeight;
 float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth;
 float playX1, playY1, playX2, playY2, playX3, playY3;
 float stopX, stopY, muteX, muteY, loopIX, loopIY;
 float ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A;
 float ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B;
 float rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A; 
 float rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B;
 float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3, nextXR2, nextYR2, nextWidth;
 float prevX1, prevY1, prevX2, prevY2, prevX3, prevY3, prevXR, prevYR, prevWidth;
 float rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
 float loopPlaylistX, loopPlaylistY;
//
void setup (){
   //Display
 size(700, 500); //width, height
//fullScreen(); // displayWidth, displayHeight 
 //
 //Population: visual data
 buttonReferentMeasure = width * 1/18;
 buttonSide = buttonReferentMeasure;
 spaceWidth = buttonReferentMeasure * 1/18;
 //
 float centerX = width * 1/2; //Local Variable, garbage collected at end of setup(), see println in draw()
 float centerY = height * 3/4;
 int buttonPositionColum, buttonPositionRow;
 print("Confirming Center X;", centerX);
 println("/t Confirming Center Y:", centerY); //Illstrates a character escape
 //
 pauseX1 = centerX - buttonReferentMeasure*1/2;
 pauseY1 = centerY - buttonReferentMeasure*1/2;
 pauseWidth = buttonReferentMeasure * 1/4;
 pauseX2 = centerX + buttonReferentMeasure*1/4;
 pauseY2 = pauseY1;
  playX1 = pauseX1;
  playY1 = pauseY1;
  playX3 = playX1;
  playY3 = pauseY1 + buttonReferentMeasure; 
  playX2 = playX1 + buttonReferentMeasure;
  playY2 = playY1 + (playY3-playY1)*1/2;
 //
 buttonPositionRow = 2;
 muteX = pauseX1;
 muteY = pauseY1 + ( buttonPositionRow * buttonReferentMeasure ); 
 //
 loopIX = pauseX1;
 loopIY = pauseY1 + ( buttonPositionRow * buttonReferentMeasure );
 //
 buttonPositionColum =1;
  ffX1A = pauseX1 + ( buttonPositionColum*buttonReferentMeasure );
  ffY1A = pauseY1;
  ffX3A = ffX1A;
  ffY3A = ffY1A + buttonReferentMeasure;
  ffX2A = ffX1A + buttonReferentMeasure*1/2;
  ffY2A = ffY1A + (ffY3A-ffY1A)*1/2;
  ffX1B = ffX2A;
  ffY1B = ffY1A;
  ffX2B = ffX2A + buttonReferentMeasure*1/2;
  ffY2B = ffY2A;
  ffX3B = ffX2A;
  ffY3B = ffY3A;
  //
  rrX = pauseX1 - ( buttonPositionColum*buttonReferentMeasure );
  rrY = pauseY1;
  rrX1A = pauseX1;
  rrY1A = pauseY1;
  rrX3A = rrX1A;
  rrY3A = rrY1A + buttonReferentMeasure;
  rrX2A = rrX1A - ( buttonPositionColum*buttonReferentMeasure )*1/2;
  rrY2A = rrY1A + ( rrY3A - rrY1A )*1/2;
  rrX1B = rrX2A;
  rrY1B = rrY1A;
  rrX2B = rrX2A - ( buttonPositionColum*buttonReferentMeasure )*1/2;
  rrY2B = rrY2A;
  rrX3B = rrX2A;
  rrY3B = rrY3A;
  //
  buttonPositionColum = 2; //can increment with +=1
  nextX = pauseX1 + ( buttonPositionColum*buttonReferentMeasure );
  nextY = pauseY1;
  nextY = nextX;
  nextY = nextX;
  nextY = nextX;
  nextY = nextY + buttonReferentMeasure;
  nextX = nextX + buttonReferentMeasure*1/8;
  nextY = nextY + (nextY - nextY)*1/8;
  nextX = nextX + buttonReferentMeasure*1/8;
  nextY = nextX;
  nextWidth = buttonReferentMeasure; 
  //
  prevY = pauseY1 = ( buttonPositionColum*buttonReferentMeasure ); 
  prevY = pauseY1;
  prevY = prevX; //backward from previous button
  prevY = prevX;
  prevY = prevX;
  prevY = prevX + buttonReferentMeasure;
  prevX = prevX - buttonReferentMeasure*1/8;
  prevY = prevX + ( prevY - prevX )*1/8;
  prevY = prevX;
  prevWidth = buttonReferentMeasure*1/8;
  //
  buttonPositionColum = 4; 
  nextX = pauseX1 + ( buttonPositionColum*buttonReferentMeasure );
  nextY = pauseY1;
  //
  prevX = pauseX1 - ( buttonPositionColum*buttonReferentMeasure );
  prevY = pauseY1;
  //
  buttonPositionColum = 3;
  loop1X = pauseX1 + ( buttonPositionColum*buttonReferentMeasure );
  loop1Y = pauseY1;
  //
  stopX = pauseX1 - ( buttonPositionColum*buttonReferentMeasure );
  stopY = pauseY1;
  //
  buttonPositionRow = 1;
  loopPlaylistX = pauseX1;
  loopPlaylistY = pauseY1 + ( buttonPositionRow*buttonReferentMeasure );
  //
 }//End setup
 //
 void draw() {
   //
   //Button Space
   //rect( spaceX, spaceY, spaceWidth, buttonSide );
   //
 //Stop Button
 rect( stopX, stopY, buttonSide, buttonSide); //Layout
 //rect( stopX, stopY, buttonside, buttonSide ); //Square shape
 //
 //Pause Button 
 //rect( pauseX1, pauseY1, buttonSide, buttonSide); //Layout 
 rect( pauseX1, pauseY1, pauseWidth, buttonSide);
 rect( pauseX2, pauseY2, pauseWidth, buttonSide);
 //
 //Play Button
 //rect( playX1, playY1, buttonSide, buttonSide  ); //Layout
 triangle (playX1, playY1, playX2, playY2, playX3, playY3);
 //
 //MUTE Button
 rect( muteX, muteY, buttonSide, buttonSide ); //Layout
 //Students to develop
 //
 //Fast Forward in the song
 //rect( ffX, ffY, buttonSide, buttonSide ); //Layout
 triangle(ffX1A, ffY1A, ffX2A, ffY2A, ffX3A, ffY3A);
 triangle(ffX1B, ffY1B, ffX2B, ffY2B, ffX3B, ffY3B);
 //
 //Reverse in the song
 //rect( rrX, rrY, buttonSide, buttonSide ); //Layout
 triangle(rrX1A, rrY1A, rrX2A, rrY2A, rrX3A, rrY3A);
 triangle(rrX1B, rrY1B, rrX2B, rrY2B, rrX3B, rrY3B);
 //
 //Next button, skip file 
  rect( nextX, nextY, buttonSide, buttonSide ); //Layout 
 //triangle(nextX1, nextY1, nextX2, nextY2, nextX3, nextY3);
 //rect(nextX, nextY, nextWidth, nextHeight); 
 //
 //Previous Button
  rect( prevX, prevY, buttonSide, buttonSide );
  //triangle( prevX1, prevY1, prevX2, prevY2, prevX3, prevY3 );
  //rect( prevX, prevY, prevWidth, prevHeight );
  //
  //Loop the Song Once
  //Students to Develop
  rect( loop1X, loop1Y, buttonSide, buttonSide ); 
  ///ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //ellipse( loop1X, loop1Y, loop1WidthDiameter, loop1HeightDiameter );
  //triangle( loop1X1, loop1Y1, loop1X2, loop1Y2, loop1X3, loop1Y3 );
  //
  //Loop the Song Infinitely
  //Students to Develop
  rect( loopIX, loopIY, buttonSide, buttonSide ); //Layout
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //ellipse( loopIX, loopIY, loopIWidthDiameter, loopIHeightDiameter );
  //triangle( loopIX1, loopIY1, loopIX2, loopIY2, loopIX3, loopIY3 );
  //
  //Loop the Playlist (infinitely)
  //Students to Develop
  rect( loopPlaylistX, loopPlaylistY, buttonSide, buttonSide ); //Layout 
  //ellipse( loopPlaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPLaylistHeightDiameter );
  //ellipse( loopPLaylistX, loopPlaylistY, loopPlaylistWidthDiameter, loopPlaylistHeightDiameter );
  //triangle( loopPlaylistX1, loopPlaylistY1, loopPlaylistX2, loopPlaylistY2, loopPlaylistX3, loopPlaylistY3 );
  //
  //OPTIONAL Shuffle 
  //rect(shuffleX, shuffleY, buttonSide, buttonSide ); //Layout
  //2-D Shapes
  //
 } //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
