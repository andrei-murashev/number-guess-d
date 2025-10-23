# Number Guessing Game

This is a simple number guessing game written in the D programming language. It implements the model-view-controller architecture.
</br></br></br></br></br></br>



## Build
Simply clone the repo with `gi</br>t clone` and run `./build.sh`.
</br></br></br></br>


## Concerns

### Access of constant in `model` by `view`
Right now `view` import `model.MIN_GUESS_VALUE` and `model.MAX_GUESS_VALUE` in order to be able to properly format strings __ without extra hard-coding.
</br></br>