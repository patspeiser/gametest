// Playground - noun: a place where people can play

import UIKit

var height: CGFloat
var velocity: CGFloat
var angle: CGFloat
var distance: CGFloat?
var time: CGFloat?
var traveled: CGFloat
var yValue: CGFloat?
var xValue:CGFloat?
let gravity: CGFloat = -9.8

height = 0
velocity = 10
angle = 0.523
let pi = CGFloat(M_PI)

// I think this is working correctly.
//gets time of flight
func getTimeOfFlight() -> CGFloat {
    
    //time = -velocity / gravity
    //var something = sin(angleInDegrees)
    time = ( 2 * velocity * sin(angleInDegrees)  ) / gravity
    
    return time!
    
}


//gets y value at a specific time. this is not working correctly
func getYValueAtTime(time:CGFloat) -> CGFloat {
    
    
    var initialYVelocity = -velocity * sin(angleInDegrees)
    yValue = (time * initialYVelocity) + ( (-gravity * (time * time)) / 2 )
    
    return yValue!
}


//gets an x value at a given time. this may or may not be working correctly...
func getXValueAtTime(time:CGFloat) -> CGFloat {
    
    xValue = velocity * time * cos(angleInDegrees)
    return xValue!

}

// gets total distance traveled
// not working
func getDistanceTraveled(time:CGFloat) -> CGFloat {
    
    distance = ( cos(angleInDegrees) * velocity ) * time
    angleInDegrees
    cos(angleInDegrees)
    return distance!
    
}

//converst the angle in radians to degrees
func convertRadiansToDegrees(angle:CGFloat) -> CGFloat {
    var angleInDegrees = angle * (180 / pi)
    return angleInDegrees
}

var angleInDegrees = convertRadiansToDegrees(0.523)
var timeOfFlight = getTimeOfFlight()
var distanceTraveled = getDistanceTraveled(getTimeOfFlight())
var index: CGFloat = 0

// draws the flight path
while index < timeOfFlight {
    index
    timeOfFlight
    getYValueAtTime(index)
    getXValueAtTime(index)
    timeOfFlight
    //getDistanceTraveled(index)
    
    index += 0.03
    
}

