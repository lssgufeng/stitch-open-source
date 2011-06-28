#!/usr/bin/env lua

function distance(x2,x1,y2,y1)
d = math.sqrt(math.pow(x2-x1,2)+math.pow(y2-y1,2))
return d
end


print(distance(100,0,200,50))

