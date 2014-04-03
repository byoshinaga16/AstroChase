/*
  MeggyJr_Blink.pde
 
 Example file using the The Meggy Jr Simplified Library (MJSL)
  from the Meggy Jr RGB library for Arduino
   
Moving Dot.
   
   
 
 Version 1.25 - 12/2/2008
 Copyright (c) 2008 Windell H. Oskay.  All right reserved.
 http://www.evilmadscientist.com/
 
 This library is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This library is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this library.  If not, see <http://www.gnu.org/licenses/>.
 	  
 */

 
 
 
 

/*
 * Adapted from "Blink,"  The basic Arduino example.  
 * http://www.arduino.cc/en/Tutorial/Blink
 */

#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
}

int xcoord = 4;            //Places dot on starting point (4,4)
int ycoord = 4;

void loop()                     // run over and over again
{ 
 DrawPx(xcoord,ycoord,1);
 DisplaySlate();
 CheckButtonsPress();       
 ClearSlate();
 if(Button_Up) {       //These statements allow the dot to be moved by buttons
   ycoord++;
 }
 if(Button_Down) {
   ycoord--;
 }
 if(Button_Left) {
   xcoord--;
 }
 if(Button_Right) {
   xcoord++;
 }
 if(xcoord > 7) {       //These statements keep the dot contained on the screen
   xcoord = 7;
 }
 if(xcoord < 0) {
   xcoord = 0;
 }
 if(ycoord > 7) {
   ycoord = 7;
 }
 if(ycoord < 0) {
   ycoord = 0;
 } 
}

