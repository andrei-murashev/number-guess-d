module controller.main;

import std.stdio;
import std.typecons;
import model.main, view.main;



void displayWelcomeMessage() @safe
{
  writeln(WELCOME_MESSAGE);
}



void displayGoodbyeMessage() @safe
{
  writeln(GOODBYE_MESSAGE);
}



void displayWinMessage() @safe
{
  writeln(WIN_MESSAGE);
}



void displayRetryMessage() @safe
{
  writeln(RETRY_MESSAGE);
}


private ushort guess_value_store;
void getGuess() @safe
{
}



void setGuess() @safe
{
}



bool validateGuess() @safe
{
  return true;
}



bool checkGuess() @safe
{
  return true;
}



bool getPlayStatus() @safe
{
  return true;
}