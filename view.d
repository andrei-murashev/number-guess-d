module view;

import std.format : format;
import model : MIN_GUESS_VALUE, MAX_GUESS_VALUE;

const char YES_CHAR = 'Y';
const char QUIT_CHAR = 'Q';

const string WELCOME_MESSAGE =
  "Welcome to the Number Guessing Game!";

const string GOODBYE_MESSAGE =
  "Goodbye.";

const string WIN_MESSAGE =
  "That's right! You won.";

const string GUESS_HIGHER_MESSAGE =
  "Guess higher. Your guess is lower than the actual number.";

const string GUESS_LOWER_MESSAGE =
  "Guess lower. Your guess is higher than the actual number.";

const string INVALID_GUESS_MESSAGE = format(
  "Guess value must be a number from %u to %u. Try again.",
  MIN_GUESS_VALUE,
  MAX_GUESS_VALUE
);

const string RANDOM_NUMBER_LOADED_MESSAGE =
  "Random number loaded.";


const string GUESS_PROMPT = format(
  "Guess the number (from %u to %u). : ",
  MIN_GUESS_VALUE,
  MAX_GUESS_VALUE
);

const string PLAY_AGAIN_PROMPT =
  "Would you like to play again? : ";
