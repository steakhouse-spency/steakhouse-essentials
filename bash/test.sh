
# # x=(1 2 3 4)
# declare -a x=( ['key1']=1 ['key2']=2 ['key3']=3 ['key4']=4 )
# echo "${!x[@]}" 
# for i in "${!x[@]}"; 
# do
# 	echo "key: $i value: ${x[$i]}"
# done

# echo ${x[*]}

# i=1
# declare -A x=( ["foo$i"]=bar [baz]=quux [corge]=grault ) # Initialise all at once


# for i in ${x[*]};
# do
# 	echo $i
# done