module model;

bool QUIT_SIGNAL;

const ushort MIN_GUESS_VALUE = 1;
const ushort MAX_GUESS_VALUE = 1000;
ushort TO_GUESS;

static this()
{
  import std.random : uniform;
  TO_GUESS = uniform(MIN_GUESS_VALUE, MAX_GUESS_VALUE);
}