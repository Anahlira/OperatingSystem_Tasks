#! /bin/bash

#[ $(whoami) == "root" ] || exit 1

#от /etc/passwd 6тата колонка е евентуално директорията
#1.дали е директория 2.може ли потребителя да пише в нея 
#2.1 собственик ли е потребителя => има ли write права
#2.1 ако не е - дали някоя от групите на потребилеля е като групата на директорията
#2.1 ако е, групата трябва да има write права
#2.1 и накрая дали others имат wright права
#и да се изкара кои са тези

directories="$(cat /etc/passwd)"
