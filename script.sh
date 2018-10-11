# awk '{$1=$1};1' will trim the leading/trailing spaces

diffwithline= sdiff one.ini two.ini | cat -n | grep "<" | awk '{$1=$1};1'
