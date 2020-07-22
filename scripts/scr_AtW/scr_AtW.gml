var ax = argument0;
var ay = argument1;

var res = [];

res[0] = LeftmostSquare + ax * BlockSize;
res[1] = UpmostSquare + ay * BlockSize;

return res;