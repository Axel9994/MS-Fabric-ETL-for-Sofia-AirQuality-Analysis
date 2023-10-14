# MS Fabric ETL for Sofia AirQuality Analysis


Utilizando el Conjunto de Datos Sofia air quality dataset.
https://www.kaggle.com/datasets/hmavrodiev/sofia-air-quality-dataset

## Flujo de Datos Principal

![Flujo de Datos Principal](https://images4.imagebam.com/65/e7/5a/MEPHEH1_o.JPG)

Cree una Flujo de Datos de Data Factory para copiar de un bucket de Google Cloud Storage
al lakehouse de un espacio de trabajo de MS Fabric y luego coordinar la ejecución de un
cuaderno de Spark para crear una Tabla Delta Limpia y por último ejecutar un Script SQL
para crear una tabla resumida más adecuada para el análisis con Power BI.


## Cuaderno de Spark

![Cuaderno de Spark](https://images4.imagebam.com/af/8d/a3/MEPHEH2_o.JPG)

Se encarga de unir los datos de contaminación y estados del tiempo en una sola tabla limpia.

## Script SQL

![Script SQL](https://images4.imagebam.com/3b/22/d2/MEPHEH3_o.JPG)

Se encarga de Crear la Tabla Resumida.

## Medida DAX

![Medida DAX](https://images4.imagebam.com/83/a3/d7/MEPHEH5_o.JPG)

Crea la medida de contaminación promedio al tiempo actual.

## Resultados Finales

![Pantalla Principal](https://images4.imagebam.com/4f/fd/13/MEPHEH6_o.JPG)

Pantalla Principal del Informe que muestra el promedio de contaminación por tiempo y estado del tiempo.

![Mapa Interactivo](https://images4.imagebam.com/11/a3/26/MEPHEH8_o.JPG)

Mapa Interactivo que muestra la contaminación por zona.