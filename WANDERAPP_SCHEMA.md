# 📄 Wander App YAML Schema (v2.0)

Este documento define la estructura oficial para generar el archivo `wanderapp.yaml` compatible con la nueva versión de la aplicación.

---

## 1. Estructura Global
El archivo debe contener las siguientes secciones principales:
- **Metadata**: Información general del viaje.
- **Stops**: Lista de paradas diarias (una por cada día del viaje).
- **Accommodations**: Lista de alojamientos vinculados a las paradas.
- **Transports**: Lista de transportes (vuelos, trenes, buses).
- **Posts**: Experiencias, tips o lugares destacados por parada.

---

## 2. Definición de Campos

### Metadata
- `title`: Título del viaje.
- `start_date` / `end_date`: Fechas en formato `'YYYY-MM-DD'`.
- `description`: Bloque de texto (usar `|` para multilínea) con Markdown.
- `budget_total`: Número decimal.
- `local_currency`: Código de moneda (ej: `EUR`).

### Stops (Paradas Diarias)
Cada parada debe seguir este formato:
```yaml
- name: 'Día X (Ciudad): Evento'
  location: Nombre de la ubicación
  visit_date: 'YYYY-MM-DD'
  notes: |
    Bloque de texto con links y detalles.
  latitude: decimal
  longitude: decimal
```

### Accommodations (Simplificado)
Se vinculan a la parada mediante el nombre exacto del `stop`.
```yaml
- stop: 'Día X (Ciudad): Evento'
  name: Nombre del Hotel
  address: Dirección completa
  notes: 'Detalles de precio, confirmación y estado.'
```

### Transports (Universal)
Reemplaza la antigua sección de `flights`. Soporta cualquier medio de transporte.
```yaml
- transport_type: flight | train | bus | boat
  origin: Ciudad de origen
  destination: Ciudad de destino
  operator: Aerolínea o compañía
  reference_number: Número de vuelo, tren o reserva
  departure_date: 'YYYY-MM-DDTHH:MM:SS+00:00'
  arrival_date: 'YYYY-MM-DDTHH:MM:SS+00:00'
  price: decimal
  notes: |
    Detalles de clase, asientos y escalas.
```

### Posts (Experiencias)
```yaml
- stop: 'Día X (Ciudad): Evento'
  title: Título corto
  content: Descripción breve
  type: tip | place | activity
  rating: 1-5 (opcional)
```

---

## 3. Reglas de Generación (CRÍTICO)
1. **Sincronización:** El nombre del `stop` en `accommodations`, `transports` (si aplica) y `posts` debe coincidir **exactamente** con el definido en la sección `stops`.
2. **Formato de Fechas:** Usar siempre comillas para fechas `'YYYY-MM-DD'`.
3. **Bloques de Texto:** Usar el operador `|` en YAML para descripciones largas que contengan Markdown o saltos de línea.
4. **Coordenadas:** Asegurarse de incluir `latitude` y `longitude` para que la app pueda posicionar la parada en el mapa.
