#!/bin/bash
#set -e  # Exit on error

#set -x  # Print commands, with variables filled in

testdir=test_inputs

sam build

events=$@
if [ -z "$events" ]; then
    events=$testdir/event.json
fi

for event in $events; do
    # Execute sam and pretty print output
    output=$(sam local invoke -e $event)
    echo $event returned output:
    echo $output | \
        python -c "import json; \
        import sys; \
        js = json.load(sys.stdin); \
        print(json.dumps(js,indent=2))"
    # $output contains the statusCode - maybe
    # add some type of default checking, or
    # add expected response field to the input

done
