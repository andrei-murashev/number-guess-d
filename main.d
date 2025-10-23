module main;

import std.stdio : writeln;
import controller.main;



void main() @safe
{
  displayWelcomeMessage();
  do
  {
    loop();
  } while (getPlayStatus());
  displayGoodbyeMessage();
}



void loop() @safe
{
  while (true)
  {
    do
    {
      getGuess();
    } while (!validateGuess());
    setGuess();

    if (checkGuess())
    {
      displayWinMessage();
      break;
    }
    else
    {
      displayRetryMessage();
    }
  }
}