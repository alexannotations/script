# Algunos comandos extra

pushd y popd: te permiten navegar entre dos directorios fácilmente (es una pila de directorios).

ls | wc: podemos contar nuevas líneas, palabras y letras de todos los archivos del directorio actual. 

.bash_profile en el caso de mac o .profile en ubuntu este archivo (.bash_profile o .profile) se encuentra en el home y contiene una serie de comandos.
Sirve para dar de alta unas variables para que siempre estén funcionando igual en la terminal.

which : indica donde esta el ejecutable de algun binario
which ls echo $PATH

https://platzi.com/clases/1276-terminal-2018/11189-streams/
muestra la ultima fila de un archivo que se esta imprmiendo infinitamente
```php streams.php > salidastd_out > error```
en este caso manda el stdout y stderror los manda al mismo archivo de salida salidastd_out
```php streams.php > salidastd_out > &1```
```tail -f salidastd_out```

```&```al colocarlo al final de un comando, ejecuta el comando y lo manda a segundo plano (background), y devuelve el control de la terminal
```;``` ejecuta un comando una vez que ha terminado el anterior
```^d```filtra solo los directorios o ```^l``` links simbolicos
```ls -lh | grep ^d```

```ps -wA | wc -l`````
muestra cuantos procesos se estan ejecutando

```date; grep -r . -e nombre; date``` puedo ver cuanto tardo una orden
```grep -inr <path> -e <info_a_buscar>```
grep nos ayuda a encontrar cadenas de caracteres con ignore case dentro de todos los archivos de la ruta que le indiquemos, con expresiones regulares

```find``` busca en los nombres de archivo y metadata
```find . -name '*.md' -type f```   f file , d directory

curl: emula un navegador. No es un browser como tal, pero este solo emula los requests (peticiones) y los trae.
```curl URL.csv``` hacer un requests al browser de algún archivo
```curl URL.csv > filename``` guardar reguests en un archivo
```curl URL.csv -o filename``` guardar reguests en un archivo

Buscar en los comentarios del commit
```git log --grep=texto```
Buscar en los cambios hechos al código
```git log -S texto```
Muestra solo los comentarios de cada commit:
```git log --oneline```

### Operadores para STDIN, STDOUT/STDERR
https://denovatoanovato.net/redireccionamientos/

#### operador | (pipe):
command_1 | command_2
Manda el STDOUT de command_1 al STDIN de command_2
#### operador >
command_1 > FILE
Manda el STDOUT de command_1 al inicio de FILE. Si FILE no existe lo crea, si existe lo
sobreescribe.
#### operador >>
command_1 >> FILE

Manda el STDOUT de command_1 al inicio de FILE. Si FILE no existe lo crea, si existe lo
concatena al fina (tras u
n _newline_).
#### operador <
command_1 < FILE
Manda al STDIN de command_1 el contenido de FILE.
#### redirección de salidas
1. command > FILE - manda el STDOUT a FILE
1. command 1> FILE 2>FILE_ERROR - manda el STDOUT a FILE y el STDERR a
FILE_ERROR
1. command > FILE 2>&1 - manda, tanto el STDOUT como el STDERR a FILE
1. command >> FILE 2>&1 - manda a concatenar las salidas de STDOUT y STDERR a FILE
### Combinación de teclas como comandos
1. [ctrl]-C - este comando termina el proceso que se esté ejecutando en la terminal, haya o no
acabado de ejecutarse.
2. [ctrl]-D - el sistema lo interpreta como _EOF_ (End Of File) y cierra el _stream_ de entrada
(STDIN) para un archivo en donde se esté escribiendo desde la terminal.

Uso del disco duro, con profundidad de 1 directorio
du -h -d 1

Estos comando son muy semejantes en su funcion
la redireccion y el pipe entre mysql y un archivo .sql
mysql -u root < all_squema.sql
cat all_squema.sql | mysql -u root

```#!``` indica que binario ejecutara el codigo, se indica en la primera linea, se pueden agregar las opciones
```#!/usr/local/bin/php```


muestra todos los procesos que se estan ejecutando
ps -wA
muestra todos los procesos y da mas info
ps aux

crontab
awk

