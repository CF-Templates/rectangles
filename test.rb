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

# Second rectangle containment(r2)
#r2x1=4
#r2y1=4
#r2x2=6
#r2y2=5

# Second rectangle adjacent(r2)
#r2x1=7
#r2y1=3
#r2x2=10
#r2y2=4

# Second rectangle not adjacent / no contianment / no intersection (r2)
#r2x1=8
#r2y1=3
#r2x2=12
#r2y2=6

# lets make sure we have the proper ll/ur coordinates
r1lx = [r1x1, r1x2].min
r1ly = [r1y1, r1y2].min
r1ux = [r1x1, r1x2].max
r1uy = [r1y1, r1y2].max

r2lx = [r2x1, r2x2].min
r2ly = [r2y1, r2y2].min
r2ux = [r2x1, r2x2].max
r2uy = [r2y1, r2y2].max

# Here we test if "r2" is contained in "r1"
if ( r2ux <= r1ux &&
     r2lx >= r1lx &&
     r2uy <= r1uy &&
     r2ly >= r1ly )
 
 # The test passed so we know "r2" is contained in "r1"
 # Lets check if any of the sides are touching
if ( r2ux == r1ux ||
     r2lx == r1lx ||
     r2uy == r1uy ||
     r2ly == r1ly )
 puts "'r2' is contained in and touching sides with 'r1'"
 exit
else
 puts "'r2' is contained in 'r1'"
 exit
 end
end

# At this point we know 'r2' is not contained in 'r1'
# Are rectangles adjacent?
if ( r2lx > r1ux ||
     r2ly > r1uy ||
     r2ux < r1lx ||
     r2uy < r1ly )
 puts "'r2' is adjacent, no containment and no intersection 'r1'"
 exit
else
 puts "'r2' is adjacent to 'r1'"
 exit
end

# Are the rectangles intersecting?
if ( ( ( r2lx >= r1lx && r2lx <= r1ux ) && ( r2ly >= r1ly && r2ly <= r1uy ) ) ||
     ( ( r2ux >= r1lx && r2ux <= r1ux ) && ( r2uy >= r1ly && r2uy <= r1uy ) ) )
 puts "'r2' is intersecting 'r1'"
 exit
end



