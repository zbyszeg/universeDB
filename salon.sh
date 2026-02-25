#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=salon --no-align --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~"

echo -e "\nWelcome to My Salon, how can I help you?\n"
echo "$($PSQL "select service_id || ') ' || name from services;")"
read SERVICE_ID_SELECTED

while [[ $($PSQL "select exists (select * from services where service_id = '$SERVICE_ID_SELECTED')") != "t" ]] ; do
    echo -e "\nI could not find that service. What would you like today?"
    echo "$($PSQL "select service_id || ') ' || name from services;")"
    read SERVICE_ID_SELECTED
done

SERVICE_NAME=$($PSQL "select name from services where service_id='$SERVICE_ID_SELECTED'")

echo -e "\nWhat's your phone number?"
read CUSTOMER_PHONE

CUSTOMER_ID=$($PSQL "select customer_id from customers where phone='$CUSTOMER_PHONE'")

if [[ $CUSTOMER_ID == "" ]]
then
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    echo $($PSQL "insert into customers (name, phone) values ('$CUSTOMER_NAME','$CUSTOMER_PHONE')") > /dev/null
    CUSTOMER_ID=$($PSQL "select max(customer_id) from customers")
else
    CUSTOMER_NAME=$($PSQL "select name from customers where phone='$CUSTOMER_PHONE'")
fi

echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME?"
read SERVICE_TIME

echo $($PSQL "insert into appointments (customer_id, service_id, time) values ($CUSTOMER_ID,$SERVICE_ID_SELECTED, '$SERVICE_TIME');") > /dev/null

echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
