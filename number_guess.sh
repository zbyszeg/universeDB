#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"

NUMBER=$((1 + $RANDOM % 1000))

echo "Enter your username:"
read USERNAME

# echo $USERNAME ": " $NUMBER
GAME_ID=$($PSQL "select id from games where username='$USERNAME' limit 1")

if [[ $GAME_ID == "" ]]
then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
else
    echo "$($PSQL "select 'Welcome back, $USERNAME! You have played ' || cast(count(*) as text) || ' games, and your best game took ' || cast(min(trials) as text) || ' guesses.' from games where username='$USERNAME'")"
fi

echo "Guess the secret number between 1 and 1000:"

read USER_NUMBER
while ! [[ $USER_NUMBER =~ ^[0-9]+$ ]]; do
    echo "That is not an integer, guess again:"
    read USER_NUMBER
done

I=1
while [[ $USER_NUMBER != $NUMBER ]]; do
    if [[ $USER_NUMBER < $NUMBER ]]
    then
        echo "It's lower than that, guess again:"
        read USER_NUMBER
        I=$[I+1]
    else
        echo "It's higher than that, guess again:"
        read USER_NUMBER
        I=$[I+1]
    fi
done

$PSQL "insert into games(username,trials) values('$USERNAME',$I)" > /dev/null

echo "You guessed it in $I tries. The secret number was $NUMBER. Nice job!"
