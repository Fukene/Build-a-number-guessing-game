#!/bin/bash
 PSQL="psql --username=freecodecamp --dbname=guessing_game --tuples-only -t --no-align -c"

echo "Enter your username:"
read USERNAME
#Comprobar si ya está en la base de datos
CHECK_USERNAME=$($PSQL "SELECT username FROM players WHERE username = '$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM players WHERE username = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(games_played) FROM players WHERE username = '$USERNAME'")
if [[ -z $CHECK_USERNAME ]]  
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi


RANDOM_NUMBER=$(( ( RANDOM % 1000 )  + 1 ))
COUNT=1
  echo "Guess the secret number between 1 and 1000:"
while read -r GUESS
do
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    if [[ $GUESS -gt $RANDOM_NUMBER ]]; then
      echo "It's lower than that, guess again:"
      COUNT=$((COUNT + 1))
    elif [[ $GUESS -lt $RANDOM_NUMBER ]]; then
      echo "It's higher than that, guess again:"
      COUNT=$((COUNT + 1))
    else
    INSERT_GAME=$($PSQL "INSERT INTO players(games_played, username) VALUES($COUNT, '$USERNAME')")
     echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
     break
    fi
  else
    echo "That is not an integer, guess again:"
  fi
done
#Ejecutar el juego
#Dar pistas
