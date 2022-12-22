//Library: use Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup () {
  //size(500, 600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../FreeWare Music/MusicDownloads/Cycles.mp3"); //able to pass absolute path, file name & extension, and URL
  //song1.play(); //Parameter is milli-seconds from start of audio file to start playing
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {
  //Key Board Short Cuts
  //First Play Button
  //if (key=='P'|| key=='p') song1.play(); //Parameter is Parameter is number of repeats

  //Second Play Button, Loop ONCE
  if (key=='L'|| key=='l') song1.loop(1); //Parameter is Parameter is number of repeats}
  //Infinite Loop
  if (key=='F'|| key=='f') song1.loop(); //Parameter is Parameter is number of repeats}
  //M
  if (key=='M'|| key=='m') {//MUTE Button
    //Note: Mute has built-in pause button and built-in rewind if the song is near the end of the file
    if ( song1.isMuted() ) {song1.unmute();} else {song1.mute();}
  } //End MUTE Button
  //
  //Fast Forward & Fast Reverse
  //Built in Question .isPlaying(), not necessary
  if ( key=='F'|| key=='f') song1.skip(1000);//skip forward 1 second (1000 milliseconds)
  if ( key=='R'|| key=='r') song1.skip(1000);//skip backwards 1 second, notice negatively, (1000 milliseconds)
  //STOP Button
  if (key=='S' || key=='s') {
    if(song1.isPlaying()) {
    song1.pause();
    song1.rewind();// Cue SONG to play from beginning
  } else {
    song1.rewind(); //Not playing means song is paused or song position is at the end of the file
     }
  }//End STOP Button
 }//End keyPressed
//
void mouseClicked() {}//End mousePressed
//
//End Main Program
