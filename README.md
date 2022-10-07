# Bash script
aprendiendo shell sh
https://bioinf.comav.upv.es/courses/unix/scripts_bash.html
https://devhints.io/bash
https://atareao.es/tutorial/scripts-en-bash/

## Ejecucion
 - Para ejecutar los archivos sh, deben tener permisos de ejecucion. --x
 - #! (shebang) y lo que sigue, indica la ruta completa al intérprete de las órdenes contenidas en el mismo para ejecutar el script.
 - Los binarios se ubican normalmente en /bin/ o /usr/bin
 - para ejecutar el script ingresamos ```sh ``` o ```bash ``` seguido del nombre del script. O bien con el nombre del archivo precedido de ```./```

```
    sh ./shellCourse/firstExample.sh

    bash ./shellCourse/firstExample.sh
    
    ./shellCourse/firstExample.sh
```

## Argumentos

|Identificador|Descripción|
|-|-|
|```$0```| Nombre del Script|
|```$1``` al ```${10}```| El número de argumento. Si es más de uno lo colocamos dentro de llaves.|
|```$#```| Para conocer el número de argumentos enviados.|
|```$*```| Conocer todos los argumentos enviados.|

Como ejecutar un script con paso de argumentos
```
    ./shellCourse/firstExample.sh argumento1 "argumento N"
```

