module controller.main;

import std.stdio : write, writeln, readf;
import std.typecons : Nullable;
private static import model = model.main, view = view.main;



void displayWelcomeMessage() @safe
{
  writeln(view.WELCOME_MESSAGE);
  writeln(model.TO_GUESS);
}



void displayGoodbyeMessage() @safe
{
  writeln(view.GOODBYE_MESSAGE);
}



void displayWinMessage() @safe
{
  writeln(view.WIN_MESSAGE);
}



void displayRetryMessage() @safe
{
  writeln(view.RETRY_MESSAGE);
}


private Nullable!ushort maybe_guess_value;
void getGuess() @trusted
{
  import std.conv : ConvException;

  write(view.GUESS_PROMPT);
  ushort tmp;
  // Get user input for `tmp`.
  maybe_guess_value = tmp;
}



private ushort guess_value;
void setGuess() @safe
{
  guess_value = maybe_guess_value.get;
}



bool validateGuess() @safe
{
  return true
    && !maybe_guess_value.isNull
    && model.MIN_GUESS_VALUE < maybe_guess_value.get
    && model.MAX_GUESS_VALUE > maybe_guess_value.get;
}



bool checkGuess() @safe
{
  return model.TO_GUESS == guess_value;
}



bool getPlayStatus() @trusted
{
  import std.uni : toUpper;

  write(view.PLAY_AGAIN_PROMPT);
  char answer;
  // Get user input for `answer`.

  return answer.toUpper == view.YES_CHAR;
}