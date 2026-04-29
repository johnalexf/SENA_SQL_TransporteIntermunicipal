## Diccionario de Datos

### Tabla: Oficinas

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_oficina | INT | 10 | NO | SI | SI | |
| | cod_oficina | STRING | 10 | NO | SI | NO | depende si el cod interno es alfanumerico o solo numerico |
| FK | id_ciudad_oficina | INT | 10 | NO | NO | NO | |
| FK | id_departamento_oficina | INT | 10 | NO | NO | NO | |
| | dir_completa_oficina | STRING | 100 | NO | SI | NO | Se plantea manejar toda la dir en un solo campo para evitar confundir direcciones como: Calle 55 # 126 -34 con Carrera 126 # 55 - 34, ademas pueden existir direcciones mas complejas como: Diagonal 32B bis A (sur) n.º 6-32 (este) |
| | cod_postal_oficina | STRING | 6 | NO | NO | NO | |
| | telefono_oficina | STRING | 10 | NO | SI | NO | |


> **Nota:** Si el dato almacenar no se va operar matematicamente y no es un id, entonces **NO** guardarlo como entero sino como String, como el numero de telefono. 

### Tabla: Ciudades

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_ciudad | INT | 10 | NO | SI | SI | |
| | nombre_ciudad | STRING | 50 | NO | SI | NO | |

### Tabla: Departamentos

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_departamento | INT | 10 | NO | SI | SI | |
| | nombre_departamento | STRING | 50 | NO | SI | NO | |

### Tabla: Coches

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_coche | INT | 10 | NO | SI | SI | |
| | placa_coche | STRING | 10 | NO | SI | NO | |
| FK | id_grupo_coche | INT | 10 | NO | NO | NO | |
| FK | id_tipo_vehiculo_coche | INT | 10 | NO | NO | NO | |
| FK | id_tipo_servicio_coche | INT | 10 | NO | NO | NO | |
| FK | id_marca_coche | INT | 10 | NO | NO | NO | |
| | modelo_coche | INT | 4 | NO | NO | NO | |
| | num_pasajeros_coche | INT | 2 | NO | NO | NO | |
| FK | id_tipo_combustible_coche | INT | 10 | NO | NO | NO | |
| FK | id_oficina_coche | INT | 10 | NO | NO | NO | |

### Tabla: Grupo_Coches

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_grupo | INT | 10 | NO | SI | SI | |
| | nombre_grupo | STRING | 50 | NO | SI | NO | |

### Tabla: Tipo_vehiculo

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_tipo_vehiculo | INT | 10 | NO | SI | SI | |
| | nombre_tipo_vehiculo | STRING | 50 | NO | SI | NO | |

### Tabla: Tipo_servicio

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_tipo_servicio | INT | 10 | NO | SI | SI | |
| | nombre_tipo_servicio | STRING | 50 | NO | SI | NO | |

### Tabla: marca

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_marca | INT | 10 | NO | SI | SI | |
| | nombre_marca | STRING | 50 | NO | SI | NO | |

### Tabla: tipo_combustible

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_tipo_combustible | INT | 10 | NO | SI | SI | |
| | nombre_tipo_combustible | STRING | 50 | NO | SI | NO | |

### Tabla: Recorridos

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_recorrido | INT | 10 | NO | SI | SI | |
| FK | id_coche_recorrido | INT | 10 | NO | NO | NO | |
| FK | id_conductor_recorrido | INT | 10 | NO | NO | NO | |
| FK | id_lugar_salida_recorrido | INT | 10 | NO | NO | NO | Relacion con el id_oficina de la tabla oficina |
| FK | id_lugar_destino_recorrido | INT | 10 | NO | NO | NO | Relacion con el id_oficina de la tabla oficina |
| | km_recorridos | INT | 4 | SI | NO | NO | |
| FK | id_tipo_recorrido | INT | 10 | NO | NO | NO | |

### Tabla: conductor

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_conductor | INT | 10 | NO | SI | SI | |
| | primer_nombre_conductor | STRING | 30 | NO | NO | NO | |
| | segundo_nombre_conductor | STRING | 30 | SI | NO | NO | |
| | primer_apellido_conductor | STRING | 30 | NO | NO | NO | |
| | segundo_apellido_conductos | STRING | 30 | SI | NO | NO | |
| FK | id_tipo_documento_conductor | INT | 10 | NO | NO | NO | |
| | documento_identidad_conductor | STRING | 11 | NO | SI | NO | |
| | direccion_conductor | STRING | 100 | NO | SI | NO | |
| | telefono_conductor | STRING | 10 | NO | SI | NO | |

### Tabla: tipo_documento

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_tipo_documento | INT | 10 | NO | SI | SI | |
| | nombre_tipo_documento | STRING | 50 | NO | SI | NO | |

### Tabla: tipo_recorrido

| Llave | Nombre | Tipo Variable | tamaño Variable | Null | Unico | Auto Incremen | Observaciones |
|---|---|---|---|---|---|---|---|
| PK | id_tipo_recorrido | INT | 10 | NO | SI | SI | |
| | nombre_tipo_recorrido | STRING | 50 | NO | SI | NO | |

---

## Tablas Fijas (Catálogos)

### Tabla: Ciudades

| id_ciudad | nombre_ciudad |
|---|---|
| 1 | Bogota |
| 2 | Medellin |

### Tabla: Departamentos

| id_departamento | nombre_departamento |
|---|---|
| 1 | Cundinamarca |
| 2 | Antioquia |

### Tabla: Grupo Coches

| id_grupo | nombre_grupo |
|---|---|
| 1 | A |
| 2 | B |
| 3 | C |
| 4 | D |
| 5 | E |

### Tabla: Tipo_vehiculo

| id_tipo_vehiculo | nombre_tipo_vehiculo |
|---|---|
| 1 | Vans |
| 2 | Mini bus |
| 3 | Buseta |
| 4 | Bus |

### Tabla: Tipo_servicio

| id_tipo_servicio | nombre_tipo_servicio |
|---|---|
| 1 | GOLD |
| 2 | DUO bus |
| 3 | Vans |
| 4 | Directo |

### Tabla: marca

| id_marca | nombre_marca |
|---|---|
| 1 | chevrolet |
| 2 | toyota |
| 3 | kia |
| 4 | mazda |
| 5 | Renault |

### Tabla: tipo_combustible

| id_tipo_combustible | nombre_tipo_combustible |
|---|---|
| 1 | diesel |
| 2 | gasolina |

### Tabla: tipo_documento

| id_documento | nombre_documento |
|---|---|
| 1 | cedula ciudadania |
| 2 | cedula extranjera |
| 3 | registro civil |
| 4 | pasaporte |

### Tabla: tipo_recorrido

| id_tipo_recorrido | nombre_tipo_recorrido |
|---|---|
| 1 | Departamental (Nacional) |
| 2 | Interdepartamental (Urbano) |