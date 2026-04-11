# 📄 Wander App YAML Schema (v3.1)

Este documento define la estructura oficial para generar el archivo `wanderapp.yaml` compatible con la versión 3.1 de la aplicación (Actividades anidadas en Stops).

---

## 1. Estructura Global
El archivo debe contener las siguientes secciones principales:
- **Metadata**: Información general del viaje.
- **Stops**: Lista de paradas principales, que ahora **contienen sus actividades**.
- **Accommodations**: Lista de alojamientos vinculados a las paradas (Nivel Raíz).
- **Transports**: Lista de transportes (Nivel Raíz).

---

## 2. Definición de Campos

### Metadata
- `title`: Título del viaje.
- `start_date` / `end_date`: Fechas en formato `'YYYY-MM-DD'`.
- `description`: Bloque de texto con Markdown.
- `public`: `true` o `false`.
- `budget_total`: Número decimal.
- `local_currency`: Código de moneda (ej: `EUR`, `JPY`).

### Stops (Paradas con Actividades Anidadas)
Las paradas deben agruparse por **estancia/ubicación** (no por día).
```yaml
- name: Nombre único (ej: "Bangkok")
  location: Ciudad, País
  visit_date: 'YYYY-MM-DD' (Inicio estancia)
  arrival_date: 'YYYY-MM-DD'
  departure_date: 'YYYY-MM-DD' (Fin estancia)
  notes: 'Resumen.'
  latitude: decimal
  longitude: decimal
  activities:
    - title: Título
      content: Descripción (Markdown)
      type: activity | place | restaurant | general | tip
      rating: 1-5
      price: decimal
      duration: string
      image_urls: []
```

### Accommodations (Nivel Raíz)
Se vinculan a la parada mediante el nombre exacto del `stop`.
```yaml
- stop: Nombre exacto del stop
  name: Nombre del Hotel
  address: Dirección
  rating: 1-5
  notes: Detalles.
```

### Transports (Nivel Raíz)
Sección independiente en la raíz.
```yaml
- transport_type: flight | train | bus | boat
  origin: Ciudad Origen
  destination: Ciudad Destino
  operator: Compañía
  reference_number: Nº Vuelo/Billete
  departure_date: 'YYYY-MM-DDTHH:MM:SS+00:00'
  arrival_date: 'YYYY-MM-DDTHH:MM:SS+00:00'
  price: decimal
  notes: Detalles.
```
