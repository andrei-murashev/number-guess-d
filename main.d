module main;

import std.stdio : writeln;
import controller;



void main() @safe
{
  displayWelcomeMessage;
  do
  {
    loop;
  } while (getPlayStatus);
  displayGoodbyeMessage;
}



void loop() @safe
{
  init;
  displayNumberLoadedMessage;
  while (true)
  {
    do
    {
      getGuess;
      if (getQuitSignal) return;
    } while (!validateGuess);
    setGuess;

    if (checkGuess)
    {
      displayWinMessage;
      break;
    }
  }
}