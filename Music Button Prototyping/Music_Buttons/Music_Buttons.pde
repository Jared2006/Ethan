//Global Variables 
 float buttonReferentMeasure;
 float buttonSide, spaceWidth, spaceHeight;
 float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth;
 float playX1, playY1, stopX, stopY, muteX, muteY, loopIX, loopIY;
 float ffX, ffY, rrX, rrY, nextX, nextY, prevX, prevY, loop1X, loop1Y;
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
 spaceWidth = buttonReferentMeasure * 1/8;
 //
 float centerX = width * 1/2; //Local Variable, garbage collected at end of setup(), see println in draw()
 float centerY = height * 3/4;
 int buttonPositionColum*6, buttonPositionRow*1/8;
 print("Confirming Center X;", centerX);
 println("/t Confirming Center Y:", centerY); //Illstrates a character escape
 //
 pauseX1 = centerX - buttonReferentMeasure*1/4;
 pauseY1 = centerY - buttonReferentMeasure*1/4;
 pauseWidth = buttonReferentMeasure * 1/4;
 pauseX2 = centerX + buttonReferentMeasure*1/4;
 pauseY2 = pauseY1;
  playX = pauseX1;
  playY = pauseY1;
 //
 buttonPositionRow = 1;
 muteX = pauseX1;
 muteY = pauseY1 + ( buttonPositionRow * buttonReferentMeasure ); 
 //
 loopIX = pauseX1;
 loopIY = pauseY1; + ( buttonPositionRow * buttonReferentMeasure );
 //
 buttonPositionColum = 1;
  ffX = pauseX1 + ( buttonPositionColum*buttonReferentMeasure );
  ffY = pauseY1;
  //
  rrX = pauseX1 - ( buttonPositionColum*buttonReferentMeasure );
  rrY = pauseY1;
  //
  buttonPositionColum = 2; 
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
  buttonPositionRow = 2;
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
 //rect( pauseX2, pauseY2, pauseWidth, buttonSide);
 //
 //Play Button
 //rect( playX1, playY1, buttonSide, buttonSide  ); //Layout
 //triangle (playX1, playY1, playX2, playY2, playX3, playY3);
 //
 //MUTE Button
 //rect( muteX, muteY, buttonSide, buttonSide ); //Layout
 //Students to develop
 //
 //Fast Forward in the song
 //rect( X, Y, Width, Height ); //Layout
 //triangle(X1, Y1, X2, Y2, X3, Y3);
 //triangle(X1, Y1, X2, Y2, X3, Y3);
 //
 //Reverse in the song
 //rect( X, Y, Width, Height ); //Layout
 //triangle(X1, Y1, X2, Y2, X3, Y3);
 //triangle(X1, Y1, X2, Y2, X3, Y3);
 //
 //Next button, skip file 
  //rect( X, Y, Width, Height ); //Layout 
 //triangle(X1, Y1, X2, Y2, X3, Y3);
 //rect(X, Y, Width, Height); 
 //
 //Previous Button
  //rect( X, Y, Width, Height );
   //rect( X, Y, Width, Height );
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Loop the Song Once
  //Students to Develop
  ///ellipse( X, Y, WidthDiameter, HeightDiameter );
  //ellipse( X, Y, WidthDiameter, HeightDiameter );
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Loop the Song Infinitely
  //Students to Develop
  //ellipse( X, Y, WidthDiameter, HeightDiameter );
  //ellipse( X, Y, WidthDiameter, HeightDiameter );
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //Loop the Playlist (infinitely)
  //Students to Develop
  //ellipse( X, Y, WidthDiameter, HeightDiameter );
  //ellipse( X, Y, WidthDiameter, HeightDiameter );
  //triangle( X1, Y1, X2, Y2, X3, Y3 );
  //
  //OPTIONAL Shuffle 
  //rect(X, Y, Width, Height); //Layout
  //2-D Shapes
  //
 } //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
