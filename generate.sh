brand=$1
name=$2
name+=" $3"
link=$4
echo $name

if [ -z $1 ]
then
echo "Please enter brand and model name"
exit
elif [[ $1 == "-h" || $1 == "--help" ]]
then
echo "usage:- $0 brand name link "
exit
fi

cp xda tmp.txt
sed -i -e 's/'"brandname"'/'"$brand"'/g' tmp.txt
sed -i -e 's/'"devicename"'/'"$name"'/g' tmp.txt
sed -i -e 's/'"downloadlink"'/'"$link"'/g' tmp.txt
mv tmp.txt "[RECOVERY][TWRPBuilder] TWRP For $brand $name"
