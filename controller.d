module controller;

import std.stdio : write, writeln;
import std.typecons : Nullable;
private static import model, view; 



void init() @safe
{
  import std.random : uniform;
  model.TO_GUESS = uniform(model.MIN_GUESS_VALUE, model.MAX_GUESS_VALUE);
  model.QUIT_SIGNAL = false;
}



void displayWelcomeMessage() @safe
{
  writeln(view.WELCOME_MESSAGE);
}



void displayGoodbyeMessage() @safe
{
  writeln(view.GOODBYE_MESSAGE);
}



void displayWinMessage() @safe
{
  writeln(view.WIN_MESSAGE);
}

void displayNumberLoadedMessage() @safe
{
  writeln(view.RANDOM_NUMBER_LOADED_MESSAGE);
  writeln(model.TO_GUESS);
}


private Nullable!ushort maybe_guess_value;
void getGuess() @trusted
{
  import std.stdio : readln;
  import std.string : strip;
  import std.uni : toUpper;
  import std.conv : to;

  write(view.GUESS_PROMPT);
  string input = readln.strip;
  try {
    ushort tmp = to!ushort(input);
    maybe_guess_value = tmp;
  }
  catch (Exception e) {
    if (input.length == 1 && input[0].toUpper == view.QUIT_CHAR)
    {
      model.QUIT_SIGNAL = true;
    }
    
    maybe_guess_value = Nullable!ushort.init;
  }
}



private ushort guess_value;
void setGuess() @safe
{
  guess_value = maybe_guess_value.get;
}



bool validateGuess() @safe
{
  bool valid = true
    && !maybe_guess_value.isNull
    && model.MIN_GUESS_VALUE <= maybe_guess_value.get
    && model.MAX_GUESS_VALUE >= maybe_guess_value.get;

  if (!valid) writeln(view.INVALID_GUESS_MESSAGE);
  return valid;
}



bool checkGuess() @safe
{
  if (guess_value < model.TO_GUESS) writeln(view.GUESS_HIGHER_MESSAGE);
  if (guess_value > model.TO_GUESS) writeln(view.GUESS_LOWER_MESSAGE);
  return model.TO_GUESS == guess_value;
}



bool getPlayStatus() @trusted
{
  import std.uni : toUpper;
  import std.stdio : readln;
  import std.string : strip;

  write(view.PLAY_AGAIN_PROMPT);
  string input = readln.strip;
  if (input.length != 1) {
    return false;
  }

  return input[0].toUpper == view.YES_CHAR;
}

bool getQuitSignal() @safe
{
  return model.QUIT_SIGNAL;
}