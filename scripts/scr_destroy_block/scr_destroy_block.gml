var row = argument0;
var col = argument1;

if (global.BlocksRef[row, col] != noone)
{
  instance_destroy(global.BlocksRef[row, col]);
  global.BlocksRef[row, col] = noone;
}
