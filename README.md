# Number Guessing Game

This is a simple number guessing game written in the D programming language. It implements the model-view-controller architecture.
A random number is selected, and then one has to try and guess what it is. Currently, the number is anything from 1 to 1000.
Feedback is yet to be given as to whether the number was higher or lower than the guess.
</br></br></br></br></br></br>



## Build
Simply clone the repo with `gi</br>t clone` and run `./build.sh`.
</br></br></br></br>


## Concerns

### Access of constant in `model` by `view`
Right now `view` import `model.MIN_GUESS_VALUE` and `model.MAX_GUESS_VALUE` in order to be able to properly format strings __ without extra hard-coding.
</br></br>
