var arrayX = argument0;
var arrayY = argument1;
var valueToSet = argument2;

var rowNum = global.MapGrid[| arrayX];
rowNum[| arrayY] = valueToSet;