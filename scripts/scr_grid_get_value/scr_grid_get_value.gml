var arrayX = argument0;
var arrayY = argument1;

arrayX %= CupHeight;
arrayY %= CupWidth;

var rowNum = global.MapGrid[| arrayX];
return rowNum[| arrayY];