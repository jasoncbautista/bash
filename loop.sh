
dir="randomDir"
if [ -d "$dir" ]
then
    echo "Directory exists.?"
    #rm -r "$dir"
else
    echo "Making directory"
    mkdir -p "$dir"
fi

# for ii in {0..20}
# do
#     echo "One two $ii"
# done



function promptUser() 
{
    read response
    echo "$response"
}

echo -n "Delete Dir [Y/N]:"
response=$(promptUser)
echo "$response"
