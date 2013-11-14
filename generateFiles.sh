#! /usr/bin/env bash

echo "hello world"


function generateFiles(){
    echo "Generating files.."
}


function addToFile(){
    echo "Adding to files.."
}


function stringConcat(){
    echo "Hi"
  
}


function returningExample() {
    local someStuff='One two'
    echo "$someStuff"
}

result=$(returningExample)
echo $result

function generateRandom() {

    echo "$RANDOM $1"
}

echo $(generateRandom ":testing")

# Echo an array:
function cleanArray() {
    # sampleArray=(one two three four)
    declare  -a sampleArray
    #sampleArray=()
    sampleArray+=("one")
    sampleArray+=("two")
    sampleArray+=("three")
    sampleArray+=("three")

    unset sampleArray[1]
    unset sampleArray[2]
    for ii in "${sampleArray[@]}"
    do
        echo "$ii"
    done
    # So how to return an array? Seems hard in bash.. odd.
}

echo "Array:"
cleanArray


echo $(($RANDOM / 10))


