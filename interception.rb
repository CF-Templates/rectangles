#!/usr/bin/env ruby

# First rectangle (r1)
r1x1=3
r1y1=3
r1x2=7
r1y2=6

# Second rectangle intersection(r2)
r2x1=5
r2y1=4
r2x2=9
r2y2=7

# First lets make sure we have the proper ll/ur coordinates
r1lx = [r1x1, r1x2].min
r1ly = [r1y1, r1y2].min
r1ux = [r1x1, r1x2].max
r1uy = [r1y1, r1y2].max

r2lx = [r2x1, r2x2].min
r2ly = [r2y1, r2y2].min
r2ux = [r2x1, r2x2].max
r2uy = [r2y1, r2y2].max

# Are the rectangles intersecting?
if ( ( ( r2lx >= r1lx && r2lx <= r1ux ) && ( r2ly >= r1ly && r2ly <= r1uy ) ) ||
     ( ( r2ux >= r1lx && r2ux <= r1ux ) && ( r2uy >= r1ly && r2uy <= r1uy ) ) )
 puts "'r2' is intersecting 'r1'"
 exit
end