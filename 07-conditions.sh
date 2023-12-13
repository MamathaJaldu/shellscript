    #!/bin/bash

    NUMBER=$1

    if [ $NUMBER -gt 100 ]
    then 
       echo "given number greater than 100"
    else
       echo "given number less than 100"
    fi    
