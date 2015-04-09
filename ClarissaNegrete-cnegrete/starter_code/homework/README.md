# Scramble Game

Your homework for class 08 is to create another game in the Games app.

Users will see a scrambled word and then try to guess what the word is.

## Setup

First, copy the starter_code/games folder to your personal homework folder. Make sure you are working out of your homework folder!

##  Game Rules

The game works like this:

1. Show the user some letters from a word, randomly scrambled up. For example, if your word is "programming", you might display 'arpngomrmig' to the user.
2. The user can then enter their guess in a text box, and click a button that says "Guess"
3. The game then displays what the correct word was, and a message to their user if they guessed correctly or not.

## Solution Thoughts

In Rock Paper Scissors and the Secret Number game, you could calculate the answer after the user had inputted their guess. With Scramble, you'll have to determine the correct answer before the user guesses. How can you send data with the form that the user can't see?

(Hint: check out the "hidden field" in the form)

## Extra Practice

If you finish early and want more practice, these exercises will allow you to try new things. If you don't finish them, that's ok!

(in order of difficulty)

1. Allow them to guess again until they get it right
2. Allow users to choose the length of their word (hint: use a select box)
3. Store a list of all words the user guessed correctly in the database (use a model)
4. Use the [https://github.com/wordnik/wordnik-ruby/blob/master/README.md](Wordnik gem) to get random words using their API. (you will have to sign up for an account and get an API key)