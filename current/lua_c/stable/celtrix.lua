module(...,package.seeall);

function distance(x2,x1,y2,y1)
d = math.sqrt(math.pow(x2-x1,2)+math.pow(y2-y1,2))
return d
end

file = {
function printhello()
print "hello"
end
}

