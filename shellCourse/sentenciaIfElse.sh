#!/bin/bash

# https://stackoverflow.com/questions/13542832/difference-between-single-and-double-square-brackets-in-bash/31366734#31366734
# https://www.gnu.org/software/bash/manual/html_node/Bash-Conditional-Expressions.html
# OPERADORES RELACIONALES   Conditional statements, primary expressions 
# -eq: is equal to
# -ne: is not equal to
# -gt: is greater than
# -ge: is greater than or equal to
# -lt: is less than
# -le: is less than or equal to
# 
# condition utiliza
#   - Opereadores logicos
#   - Operadores condicionales
# 
# if [ condition ]; then
#    statement 1
# elif [ condition ]; then
#    statement 2
# else
#    statement 3
# fi

notaClase=0
edad=0

echo "sentencia If - Else"
read -n1 -p "Indique cual es su calificacion (1-9): " notaClase

# se coloca entre parentesis doble para hacer la operacion
if (( $notaClase>=7 )); then
    echo -e "\nAprobado\n"
else
    echo -e "\nReprobado\n"
fi


# sintaxis con corchetes
read -p "Indique cual es su edad: " edad
if [ $edad -le 18 ]; then
    echo "Menor de edad"
else
    echo "Mayor de edad"
fi


# sintaxis con corchetes If ElseIf Else
if [ $edad -le 18 ]; then
    echo "Adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "Adulto"
else
    echo "Anciano"
fi


# **Conditional statements, primary expressions **
# 
# [ STRING1 == STRING2 ] --> True if the strings are equal. “=” may be used instead of “==” for strict POSIX compliance.
# [ STRING1 != STRING2 ] --> True if the strings are not equal.
# [ STRING1 < STRING2 ] --> True if “STRING1” sorts before “STRING2” lexicographically in the current locale.
# [ STRING1 > STRING2 ] --> True if “STRING1” sorts after “STRING2” lexicographically in the current locale.
# [ -a FILE ] --> True if FILE exists.
# [ -b FILE ] --> True if FILE exists and is a block-special file.
# [ -c FILE ] --> True if FILE exists and is a character-special file.
# [ -d FILE ] --> True if FILE exists and is a directory.
# [ -e FILE ] --> True if FILE exists.
# [ -f FILE ] --> True if FILE exists and is a regular file.
# [ -g FILE ] --> True if FILE exists and its SGID bit is set.
# [ -h FILE ] --> True if FILE exists and is a symbolic link.
# [ -k FILE ] --> True if FILE exists and its sticky bit is set.
# [ -p FILE ] --> True if FILE exists and is a named pipe (FIFO).
# [ -r FILE ] --> True if FILE exists and is readable.
# [ -s FILE ] --> True if FILE exists and has a size greater than zero.
# [ -t FD ] --> True if file descriptor FD is open and refers to a terminal.
# [ -u FILE ] --> True if FILE exists and its SUID (set user ID) bit is set.
# [ -w FILE ] --> True if FILE exists and is writable.
# [ -x FILE ] --> True if FILE exists and is executable.
# [ -O FILE ] --> True if FILE exists and is owned by the effective user ID.
# [ -G FILE ] --> True if FILE exists and is owned by the effective group ID.
# [ -L FILE ] --> True if FILE exists and is a symbolic link.
# [ -N FILE ] --> True if FILE exists and has been modified since it was last read.
# [ -S FILE ] --> True if FILE exists and is a socket.
# [ FILE1 -nt FILE2 ] --> True if FILE1 has been changed more recently than FILE2, or if FILE1 exists and FILE2 does not.
# [ FILE1 -ot FILE2 ] --> True if FILE1 is older than FILE2, or is FILE2 exists and FILE1 does not.
# [ FILE1 -ef FILE2 ] --> True if FILE1 and FILE2 refer to the same device and inode numbers.
# [ -o OPTIONNAME ] --> True if shell option “OPTIONNAME” is enabled.
# [ -z STRING ] --> True of the length if “STRING” is zero.
# [ -n STRING ] or [ STRING ] --> True if the length of “STRING” is non-zero.
# [ ARG1 OP ARG2 ] --> “OP” is one of -eq, -ne, -lt, -le, -gt or -ge. These arithmetic binary operators return true if “ARG1” is equal to, not equal to, less than, less than or equal to, greater than, or greater than or equal to “ARG2”, respectively. “ARG1” and “ARG2” are integers.
