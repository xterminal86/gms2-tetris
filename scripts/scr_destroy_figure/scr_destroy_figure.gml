var figId = argument0;

for (var i = 0; i < array_length_1d(figId.blocks); i++)
{
  instance_destroy(figId.blocks[i]);
}

instance_destroy(figId);