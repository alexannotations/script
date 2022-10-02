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

```ps -wA | wc -l```
muestra cuantos procesos se estan ejecutando

```date; grep -r . -e nombre; date``` puedo ver cuanto tardo una orden
```grep -nr <path> -e <info_a_buscar>```
grep nos ayuda a encontrar cadenas de caracteres dentro de todos los archivos de la ruta que le demos, con expresiones regulares

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

