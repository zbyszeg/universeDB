PSQL="psql --username=freecodecamp --dbname=periodic_table --no-align --tuples-only -c"

if [[ $1 == "" ]]
then
    echo "Please provide an element as an argument."
else
    ATOMIC_NUMBER=$($PSQL "select atomic_number from elements where cast(atomic_number as text)='$1' or symbol='$1' or name='$1'")
    if [[ $ATOMIC_NUMBER == "" ]]
    then
        echo "I could not find that element in the database."
    else
        # echo $ATOMIC_NUMBER
        echo "$($PSQL "select 'The element with atomic number $ATOMIC_NUMBER is ' || e.name || ' (' || e.symbol || '). It''s a ' || t.type || ', with a mass of ' || cast(p.atomic_mass as text) || ' amu. ' || e.name || ' has a melting point of ' || cast(p.melting_point_celsius as text) || ' celsius and a boiling point of ' || cast(p.boiling_point_celsius as text) || ' celsius.' from elements e join properties p on p.atomic_number = e.atomic_number join types t on t.type_id = p.type_id where e.atomic_number=$ATOMIC_NUMBER;")"
    fi
fi
