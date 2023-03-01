//Global Variables 
 float buttonReferentMeasure;
 float buttonSide, spaceWidth, spaceHeight;
 float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth;
 float playX1, playY1, playX2, playY2, playX3, playY3;
//
void setup (){
   //Display
 size(700, 500); //width, height
fullScreen(); // displayWidth, displayHeight 
 //
 //Population: visual data
 buttonReferentMeasure = width * 1/18;
 buttonSide = buttonReferentMeasure;
 spaceWidth = buttonReferentMeasure * 1/8;
 spaceHeight = buttonReferentMeasure;
 //
 float centerX = width * 1/2; //Local Variable, garbage collected at end of setup(), see println in draw()
 float centerY = height * 3/4;
 float centerX2 = width * 3/7;
 float centerY2 = height * 3/4;
 print("Confirming Center X;", centerX);
 println("/t Confirming Center Y:", centerY); //Illstrates a character escape
 //
  pauseX1 = centerX - buttonReferentMeasure*1/4;
  pauseY1 = centerY - buttonReferentMeasure*1/4;
  pauseWidth = buttonReferentMeasure * 1/4;
  pauseX2 = centerX + buttonReferentMeasure*1/4;
  pauseY2 = pauseY1;
 //
 playX1 = centerX2 - buttonReferentMeasure*1/4;
 playY1 = centerY2 - buttonReferentMeasure*1/4;
 
}//End setup
 //
 void draw() {
   //
   //Button Space
   //rect( spaceX, spaceY, spaceWidth, buttonSide );
   //
 //Stop Button
 //rect( stopX, stopY, buttonSide, buttonSide); //Layout
 //rect( stopX, stopY, buttonside, buttonSide ); //Square shape
 //
 //Pause Button 
 //rect( pauseX1, pauseY1, buttonSide, buttonSide); //Layout 
 rect( pauseX1, pauseY1, pauseWidth, buttonSide);
 rect( pauseX2, pauseY2, pauseWidth, buttonSide);
 //
 //Play Button
 rect( playX1, playY1, buttonSide, buttonSide  ); //Layout
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
