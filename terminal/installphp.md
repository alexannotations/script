
Repositorio

```bash
sudo add-apt-repository ppa:ondrej/php

# Actualizamos los repositorios:
sudo apt update
sudo apt upgrade
sudo apt install php8.0 apache2 libapache2-mod-php8.0
```

Podemos revisar que versiones de php tenemos instaladas con
```bash
sudo dpkg --get-selections | grep php
php --version
php7.4 --version
php8.1 --version

# Para habilitar una version en especifico
sudo a2enmod php8.0
# Para deshabilitar (primero deshabilitar antes de habilitar)
sudo a2dismod php8.0
systemctl restart apache2

```
```a2enmod```: apache2 enable module
```a2dismod```: apache2 disable module

```phpenmod```: php enable module
```phpdismod```: php disable module

```php --ini```: ver módulos instalados en php

## Opciones de la línea de comandos
```-a``` Se ejecuta interactivamente.
```-c <ruta>|<fichero>``` Busca el fichero php.ini en este directorio.
```-n``` No se usará el fichero php.ini.
```-d foo[=bar]``` Define la entrada INI de foo con el valor ‘bar’
```-e``` Genera información extendida para el depurador/perfilador.
```-f <fichero>``` Analiza y ejecuta el <fichero>.
```-h``` Esta ayuda.
```-i``` Información de PHP.
```-l``` Solamente revisa la sintáxis (lint).
```-m``` Muestra lo compilado en módulos.
```-r <code>``` Ejecuta el <código> PHP sin utilizar las etiquetas del script

https://www.php.net/manual/es/features.commandline.options.php

