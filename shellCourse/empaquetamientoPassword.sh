# ! /bin/bash

# ofuscar codigo bash
# https://blog.desdelinux.net/como-ofuscar-u-ocultar-codigo-de-nuestros-scripts-bash/

# crifrar archivos
# openssl enc -aes-256-cbc -e -in foo.tar.gz -out bar.tar.gz.enc
# openssl aes-256-cbc -d -in out.tar.gz.enc -out decrypted.tar.gz

# otras herramientas
# GnuPG , bcrypt, 7zip

echo "Empaquetar con zip y asignar una clave de seguridad al archivo"
zip -e shellCourseProtected.zip shellCourse/*.sh
# para descomprimir use: (pedira el password)
# unzip shellCourseProtected.zip
