set -e

function getProjectName()
{
if [[ $# != 0 ]]
then
local fileName=$1
reg='(project\()(.*)(\))'
 while read line
 do
  if [[ $line =~ $reg ]] 
   then
    PROJECT_NAME=${BASH_REMATCH[2]}
  fi
 done < $filename
else
 echo "No file for parsing prodject name"
fi
}

BUILD_PATH=$(pwd)/build
echo "BUILD_PATH=${BUILD_PATH}"

cmake -B ${BUILD_PATH} 
cmake --build ${BUILD_PATH} -j16

filename=$(pwd)/CMakeLists.txt

# function
getProjectName $filename

if [[ $PROJECT_NAME != "" ]]
then
echo " "
echo " "
valgrind --leak-check=yes ./build/$PROJECT_NAME
echo " "
echo " "
fi



