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
    echo "$RANDOM"
}

echo $(generateRandom)

# Echo an array:
function cleanArray() {
    # sampleArray=(one two three four)
    declare  -a sampleArray
    #sampleArray=()
    sampleArray+=("one")
    sampleArray+=("two")

    for ii in "${sampleArray[@]}"
    do
        echo "$ii"
    done
}

echo "Array:"
cleanArray



