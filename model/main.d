module model.main;

import std.random : uniform;



ushort GUESS_VALUE;
const ushort MIN_GUESS_VALUE = 0;
const ushort MAX_GUESS_VALUE = 1000;
ushort TO_GUESS;

static this()
{
  TO_GUESS = uniform(MIN_GUESS_VALUE, MAX_GUESS_VALUE);
}