#**********************************************************************************************
#  @Nombre: Ciclismo Urbano
#  @Autor: Sebastian Burgos
#  @Fecha: 2021-05-15
#  @Cambios: 
#  @Ayudas: 
#**********************************************************************************************

# Cargue de Librerias -------------------------------------------------------------------------
library(tidyverse)    # Transformaciones de datos
library(data.table)   # Transformaciones de datos
library(lubridate)    # Tratamiento de fechas
library(Hmisc)         # Publicacion de notificaciones
library(xlsx)


# Cargue documentos de referencia EMB2019---- 

# Base con los códigos usados para los diferentes municipios
AuxCodidgoMunicipios <- fread(paste0("C:/Users/PLANEACION/Desktop/TO-DO/PROYECTO PERSONAL/", 
                                     "Encuesta de Movilidad 2019/BD EODH2019 FINAL v14022020/", 
                                     "Archivos CSV/Aux_CódigoMunipios.csv"), encoding = "UTF-8")

# Base auxiliar con la duracion de los viajes (Relacionar ID de viaje y ID de Persona)
Aux_DuracionEODH2019 <- fread(paste0("C:/Users/PLANEACION/Desktop/TO-DO/PROYECTO PERSONAL/", 
                                     "Encuesta de Movilidad 2019/BD EODH2019 FINAL v14022020/", 
                                     "Archivos CSV/Aux_DuraciónEODH2019.csv"), encoding = "UTF-8")

# Base con las etapas de viaje por Hogar y Persona.
EtapasEODH2019 <- fread(paste0("C:/Users/PLANEACION/Desktop/TO-DO/PROYECTO PERSONAL/", 
                                     "Encuesta de Movilidad 2019/BD EODH2019 FINAL v14022020/", 
                                     "Archivos CSV/EtapasEODH2019.csv"), encoding = "UTF-8")

# Base de datos con la información de los Hogares.
HogaresEODH2019 <- fread(paste0("C:/Users/PLANEACION/Desktop/TO-DO/PROYECTO PERSONAL/", 
                                     "Encuesta de Movilidad 2019/BD EODH2019 FINAL v14022020/", 
                                     "Archivos CSV/HogaresEODH2019.csv"), encoding = "UTF-8")

# Base de datos con la información de las Personas
PersonasEODH2019 <- fread(paste0("C:/Users/PLANEACION/Desktop/TO-DO/PROYECTO PERSONAL/", 
                                     "Encuesta de Movilidad 2019/BD EODH2019 FINAL v14022020/", 
                                     "Archivos CSV/PersonasEODH2019.csv"), encoding = "UTF-8")

# Base de datos con la información de los vehículos
VehiculosEODH2019 <- fread(paste0("C:/Users/PLANEACION/Desktop/TO-DO/PROYECTO PERSONAL/", 
                                     "Encuesta de Movilidad 2019/BD EODH2019 FINAL v14022020/", 
                                     "Archivos CSV/VehículosEODH2019.csv"), encoding = "UTF-8")

