mission_name= $1
#read -p "Enter the mission name: " mission_name 

mkdir $mission_name
rocket-add $mission_name
rocket-start-power $mission_name
rocket-internal-power $mission_name
rocket-start-sequence $mission_name
rocket-start-engine $mission_name
rocket-lift-off $mission_name
rocket-status $mission_name

rocket_status=$(rocket-status $mission_name)

if [$rocket_status = 'failed']
then
    rocket-debug $mission_name
elif [ $rocket_status = 'success' ]
    echo "This is successful"
then
    echo "Something went wrong."
fi

