'use strict';

var slope;
var startX = 250;
var startY = 600;
var endX = 500;
var endY = 500;
var relativeY;
var relativeX;

var start2X = 250;
var start2Y = 600;
var end2X = 500;
var end2Y = 500;
var relative2Y;
var relative2X;

var black;
var red1;



function preload() {
    red1 = loadImage('data/redEnd.png');
    black = loadImage("data/end.png");
   
}


function setup() {
    createCanvas(1000, 1000);
    strokeWeight(3);
    background(255, 255, 255);
    //cursor(GRAB);
        frameRate(40);
}


function draw() {

   background(255, 255, 255);
    image(black, 50, 250);
    image(red1, mouseX, mouseY);
    


    while ((startX < (mouseX - 100)) && (mouseX < (startX + 400)) && (700 > mouseY) && (mouseY > 100)) {


        relativeY = (mouseY - endY);
        relativeX = (mouseX - endX);
        endX = startX + random(0, 15);
        endY = startY + random(relativeY - 30, relativeY + 30);

        stroke(8, 146, 248);
        line(startX, startY, endX, endY);
        startX = endX;
        startY = endY;

        relative2Y = (mouseY - end2Y);
        relative2X = (mouseX - end2X);
        end2X = start2X + random(0, 15);
        end2Y = start2Y + random(relative2Y - 30, relative2Y + 30);


        stroke(125, 249, 255);
        line(start2X, start2Y, end2X, end2Y);
        start2X = end2X;
        start2Y = end2Y;
    }


}

    function mousePressed() {
        console.log("Hello");
        startX = 250;
        startY = 600;
        endX = 500;
        endY = 500;
        start2X = 250;
        start2Y = 600;
        end2X = 500;
        end2Y = 500;

    }

