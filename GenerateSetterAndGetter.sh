#!/usr/bin/env bash
REG_EX='public (.*) ([a-z]{1})(.*);'
LIST_METHODS=()
A=$(grep -oP "$REG_EX"  Rating.java)
for k in "${A[@]}"
do

  # Save current IFS
  SAVEIFS=$IFS
  # Change IFS to new line.
  IFS=$'\n'
  names=($k)
  # Restore IFS
  IFS=$SAVEIFS
#echo "**********${#names[@]}*************"
  for (( i=0; i<${#names[@]}; i++ ))
  do
#    echo "${names[$i]}"
    
    if [[ ${names[$i]} =~ $REG_EX ]]; then
#      echo "${names[$i]}" "matches"
      n=${#BASH_REMATCH[*]}
        LIST_METHODS+=("public ""${BASH_REMATCH[1]}"" get""${BASH_REMATCH[2]^^}""${BASH_REMATCH[3]}""(){return ""${BASH_REMATCH[2]}""${BASH_REMATCH[3]};""}")
        LIST_METHODS+=("public void set""${BASH_REMATCH[2]^^}""${BASH_REMATCH[3]}""(""${BASH_REMATCH[1]} ${BASH_REMATCH[2]}""${BASH_REMATCH[3]}){""this.""${BASH_REMATCH[2]}""${BASH_REMATCH[3]}=${BASH_REMATCH[2]}${BASH_REMATCH[3]};}")

    fi
  done
done

echo "${#LIST_METHODS[@]}"
sed -i '$ d' Rating.java
printf "%s\n" "${LIST_METHODS[@]}" >>  Rating.java
printf "}" >>  Rating.java
