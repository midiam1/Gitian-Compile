# GitianCompile
 Compilar Gitian para criptomonedas

Compilación determinista dentro de una máquina virtual

Esto realiza una compilación dentro de una máquina virtual, con entradas y salidas deterministas. Si el script de compilación se encarga de todas las fuentes de no determinismo (principalmente causado por marcas de tiempo), el resultado siempre será el mismo. Esto permite que múltiples verificadores independientes firmen un binario con la seguridad de que realmente proviene de la fuente que revisaron.