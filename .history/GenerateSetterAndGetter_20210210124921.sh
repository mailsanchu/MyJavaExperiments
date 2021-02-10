#!/usr/bin/env bash
REG_EX='public (.*) ([a-z]{1})(.*)(;)$'
File_NAME="Rating.java"
LIST_METHODS=()
A=$(grep -oP "$REG_EX"  "$File_NAME")
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
    if [[ ${names[$i]} =~ $REG_EX ]]; then
      #      echo "${names[$i]}" "matches"
      n=${#BASH_REMATCH[*]}
      GET_METHOD="public ""${BASH_REMATCH[1]}"" get""${BASH_REMATCH[2]^^}""${BASH_REMATCH[3]}""()";
      SET_METHOD="public void set""${BASH_REMATCH[2]^^}""${BASH_REMATCH[3]}""(""${BASH_REMATCH[1]} ${BASH_REMATCH[2]}""${BASH_REMATCH[3]}";
      
      GET_METHOD_FOUND=$(grep -F -c "$GET_METHOD" "$File_NAME")
      if [ "$GET_METHOD_FOUND" -eq 0 ]; then
        LIST_METHODS+=("    public ""${BASH_REMATCH[1]}"" get""${BASH_REMATCH[2]^^}""${BASH_REMATCH[3]}""(){return ""${BASH_REMATCH[2]}""${BASH_REMATCH[3]};""}")
      fi
      
      SET_METHOD_FOUND=`fgrep -c "$SET_METHOD" "$File_NAME"`
      if [ $SET_METHOD_FOUND -eq 0 ]; then
        LIST_METHODS+=("    public void set""${BASH_REMATCH[2]^^}""${BASH_REMATCH[3]}""(""${BASH_REMATCH[1]} ${BASH_REMATCH[2]}""${BASH_REMATCH[3]}){""this.""${BASH_REMATCH[2]}""${BASH_REMATCH[3]}=${BASH_REMATCH[2]}${BASH_REMATCH[3]};}")
      fi
    fi
  done
done

if [ "${#LIST_METHODS[@]}" != 0 ]; then
  echo "${#LIST_METHODS[@]}"
  sed -i '$ d' "$File_NAME"
  printf "%s\n" "${LIST_METHODS[@]}" >>  "$File_NAME"
  printf "}" >>  "$File_NAME"
fi

java -jar /home/svarkey/Downloads/google-java-format-1.5-all-deps.jar --replace "$File_NAME"
