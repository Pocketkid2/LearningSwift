//: Playground - noun: a place where people can play

import UIKit


// Represents a (X, Y) coordinate pair
struct Point {
    var x = 0.0, y = 0.0
}

// Represents vertical and horizontal dimensions of a rectangle
struct Size {
    var width = 0.0, height = 0.0
}

// Represents a rectangle on a 2D plane
struct Rect {
    // The bottom left corner of the rectangle
    var origin = Point()
    // The size of the rectangle
    var size = Size()
    // A Computed property that gets and sets the center position of the rectangle
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        
        set (newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
    // A read-only computed property that gives the area of the rectangle
    var area: Double {
        return size.width * size.height
    }
}

// Represents a circle on a 2D plane
struct Circle {
    // The center position of the circle
    var center = Point()
    // The radius of the circle
    var radius = 0.0
    // A read-only computed property that gives the area of the circle
    var area: Double {
        return 3.14159 * radius * radius
    }
}

var box1 = Rect()
println("Center X: \(box1.center.x)   Center Y: \(box1.center.y)")
box1.center = Point(x: 37, y: 46)
println("Center X: \(box1.center.x)   Center Y: \(box1.center.y)")

var ball = Circle()
ball.center = Point(x: 26, y: 75)
ball.radius = 5.9
println("Radius: \(ball.radius)   Area: \(ball.area)")