# Trip Planning Agent - Metodología

**Versión:** 1.1 | **Actualizado:** Diciembre 2024

Proceso sistemático para planificar viajes "slow travel" con enfoque anti-masificación.

---

## Filosofía

1. **Slow Travel:** Bases de 3-5 noches mínimo
2. **Anti-Crowd:** Reemplazar destinos masificados por alternativas auténticas
3. **Turismo Ético:** Respeto a animales, culturas y medio ambiente

---

## Flujo de Trabajo (5 Fases)

```
1️⃣ LEER SOURCES → {destino}-sources.md (30-45 min)
2️⃣ EXTRAER FEATURES → Resumen según preferences.md (30-45 min)
3️⃣ CREAR ITINERARIO → {destino}.md draft (2-3h)
4️⃣ VALIDAR → Checklist + ajustes (20-30 min)
5️⃣ ANTI-CROWD → Optimización final (1h)
```

**Total: 4-6 horas por destino**

---

## Fase 1: Investigación

### Crear `preferences.md` (fuente única de verdad)

Capturar: perfil viajeros, presupuesto, intereses, alojamiento, logística vuelos.

**Preguntas clave:**
- ¿Tiempo máximo en transporte/día?
- ¿Pocos destinos en profundidad o muchos superficiales?
- ¿Precio bajo o comodidad alta?

### Crear `{destino}-sources.md`

**Prioridad de fuentes:**
1. Blogs españoles (Todo Bien Mama, Mundo Nómada, Viajeros Callejeros)
2. Foros (Los Viajeros, Reddit r/travel)
3. Oficiales (turismo, embajadas, NOAA clima)

**Estructura:**
```markdown
# Recursos sobre {Destino}
## [Rating X/5] Nombre Blog
* [Título](URL)
```

---

## Fase 2: Extracción de Features

### Matriz de búsqueda según intereses

| Interés | Palabras Clave | Buscar |
|---------|----------------|--------|
| Buceo | snorkel, dive, reef | Spots, operadores, temporada |
| Escalada | climbing, boulder, rock | Zonas, dificultad, guías |
| Cocina | cooking class, food tour | Clases, mercados, platos |
| Naturaleza | trekking, national park | Parques, rutas, fauna |
| Anti-Crowd | crowded, touristy | Qué evitar, alternativas |

### Validación Climática

Clasificar mes del viaje (⭐ a ⭐⭐⭐⭐⭐). Si ≤⭐⭐: advertir y adaptar itinerario.

---

## Fase 3: Template de Itinerario

```markdown
# [Bandera] {País} {Año}: "{Tagline}" (Slow & Deep)

{Párrafo intro con filosofía}

---

## Resumen del Viaje

| Destinos | Fechas | Vuelos |
|----------|--------|--------|
| **{Ciudad}** | DD Mes - DD Mes | IDA/VUELTA/INTERNO |

---

## Detalle de Vuelos

| Tipo | Fecha | Ruta | Aerolínea | Escalas | Precio (2 pax) | Estado |
|------|-------|------|-----------|---------|----------------|--------|

---

## Itinerario Detallado ({X} Días)

### **Base 1: [{Ciudad}](URL) - {Tagline} (Días 1-X)**
*Nota estratégica sobre alojamiento*

* **Día 1 ({Fecha}):** {Actividad}
  * {Detalle con emoji}
* **Día 2:** **{Tema}:**
  * [Mercado] Descripción
  * [Clase Cocina] Detalles
  * [Nota Ética] Si aplica

---

## Guía Práctica

### Visado
* Requisitos, web oficial, coste, plazo

### Transporte (Apps)
* {App}: Descripción

### Dinero
* Moneda, efectivo, tarjetas, cajeros

### Salud y Ética
* Riesgos, normas animales

### Clima en {Mes}
* Temperatura, lluvias, ropa

---

## Presupuesto (2 Personas)

| Concepto | Coste | Notas |
|----------|-------|-------|
| Vuelos Int. | X € | Aerolínea (Estado) |
| Vuelos Internos | X € | Rutas |
| Alojamiento (X noches) | X € | ~X€/noche |
| Comida | X € | ~X€/día |
| Transporte | X € | Detalles |
| Actividades | X € | Entradas, tours |
| Varios | X € | Visados, SIMs |
| **TOTAL** | **X €** | **~X € por persona** |
```

### Checklist Obligatorio

- [ ] Bandera + tagline
- [ ] Tabla resumen + tabla vuelos
- [ ] Bases ≥3 noches
- [ ] Enlaces blog por ciudad
- [ ] Sección clima
- [ ] Mercados (nocturno + arquitectónico)
- [ ] Clase cocina
- [ ] Notas éticas animales
- [ ] Presupuesto con vuelos
- [ ] Guía práctica completa

---

## Fase 4: Validación

### Checklist de Validación

1. **Ritmo slow:** ≥3 noches/base, ≤1 cambio/semana, transporte <4h
2. **Intereses:** Todos los de preferences.md incluidos
3. **Presupuesto:** Dentro límite (±10%), vuelos incluidos
4. **Clima:** Sección incluida, adaptaciones si necesario
5. **Anti-features:** Evita lo que NO gusta

### Validación de Consistencia (CRÍTICO)

Verificar después de CUALQUIER cambio:

| Validación | Regla |
|------------|-------|
| Días | Título = suma días por base |
| Noches | Presupuesto = días - 1 |
| Vuelos | Precio en tabla = precio en presupuesto |
| Total | Suma exacta de conceptos |
| Fechas | Consecutivas, sin gaps |
| Bases | Numeración consecutiva |

**Protocolo post-cambio:**
```
CAMBIO → RE-VALIDAR (5 min) → CORREGIR TODAS las secciones afectadas
```

---

## Fase 5: Anti-Crowd Challenge

### Identificar Puntos Negros

- ¿Buses turísticos constantes?
- ¿Filas >1h?
- ¿Precios inflados?
- ¿Horarios pico? (10-16h, fines de semana)

### Estrategias

| Estrategia | Descripción | Ejemplo |
|------------|-------------|---------|
| **Periférica** | Dormir fuera, visitar centro temprano | Hoi An: Cam Thanh, visitar 6:30 AM |
| **Sustitución** | Reemplazar por alternativa | Tam Coc → Van Long (atardecer) |
| **Profundización** | Menos lugares, más tiempo | 6 templos vs 12 en Angkor |

### Ejemplos Anti-Crowd

| Masivo | Alternativa | Estrategia |
|--------|-------------|------------|
| Tam Coc | Van Long (16:30) | Timing |
| Nusa Penida | Menjangan Island | Sustitución |
| Angkor amanecer | Angkor atardecer | Timing |
| Hoi An 12PM | Hoi An 6:30 AM | Timing |
| Ubud centro | Sidemen Valley | Sustitución |

---

## Estructura de Archivos

```
/trips/
├── agent.md
├── 2026/
│   ├── preferences.md
│   ├── resumen.md
│   ├── vietnam.md
│   ├── vietnam-sources.md
│   └── ...
```

---

## Comparativa (`resumen.md`)

```markdown
# Resumen {Año}

## Tabla General

| Característica | Vietnam | Camboya | Japón | Bali |
|----------------|---------|---------|-------|------|
| Estilo | | | | |
| Ritmo Slow (⭐) | | | | |
| Clima ({Mes}) | | | | |
| Masificación | | | | |
| Comida (⭐) | | | | |

## Comparativa Económica

| Concepto | Vietnam | Camboya | Japón | Bali |
|----------|---------|---------|-------|------|
| Vuelos | | | | |
| Alojamiento | | | | |
| Vida destino | | | | |
| **TOTAL** | | | | |

## Pros/Contras por Destino

## Recomendación Final
```

---

## Ética en Turismo

### Animales - NUNCA:
- Montar elefantes/búfalos
- Selfies con animales sedados
- Alimentar fauna salvaje
- Souvenirs de marfil/coral

### Animales - SIEMPRE:
- Observar a distancia (3m+)
- Santuarios éticos (sin cadenas/shows)
- Protector solar biodegradable

### Formato Nota Ética:
```markdown
[Emoji] **Nota Ética:** Observación desde {medio}.
Distancia {X}m. **NO {acción prohibida}**.
```

### Culturas Locales:
- Vestir con respeto en templos
- Pedir permiso para fotos
- Comprar directo a artesanos
- NO dar dinero a niños

### Impacto Ambiental:
- Botella reutilizable
- No recoger conchas/coral
- Mantenerse en senderos

---

## Herramientas

### Fuentes Prioritarias

| Tier | Fuentes |
|------|---------|
| 1 | Todo Bien Mama, Mundo Nómada, Viajeros Callejeros |
| 2 | Los Viajeros, Reddit r/travel, TripAdvisor Foros |
| 3 | Webs turismo oficiales, Embajadas, NOAA |

### Vuelos

**Google Flights Multi-City** para open-jaw (Norte→Sur).

Aerolíneas recomendadas Asia: Turkish Airlines, Qatar Airways, Emirates, ANA.

### Fórmula Presupuesto

```
TOTAL = Vuelos + (Noches × €/Noche) + (Días × €Comida) + Transporte + Actividades + Varios
Noches = Días - 1
```

### Matriz Climática Agosto

| Destino | Rating |
|---------|--------|
| Bali | ⭐⭐⭐⭐⭐ IDEAL |
| Vietnam Sur | ⭐⭐ Aceptable |
| Vietnam Norte | ⭐ Lluvioso |
| Camboya | ⭐ Lluvias |
| Japón | ⭐ Calor extremo |

---

## Resumen Ejecutivo

| # | Fase | Output | Tiempo |
|---|------|--------|--------|
| 1 | Leer Sources | `{destino}-sources.md` | 30-45 min |
| 2 | Extraer Features | Resumen interno | 30-45 min |
| 3 | Crear Itinerario | `{destino}.md` draft | 2-3h |
| 4 | Validar | `{destino}.md` validado | 20-30 min |
| 5 | Anti-Crowd | `{destino}.md` optimizado | 1h |

### Regla de Oro

```
CAMBIO → RE-VALIDAR → CONFIRMAR
```

Verificar SIEMPRE:
1. Días título = suma bases
2. Noches = días - 1
3. Precio vuelos consistente
4. Total = suma conceptos
5. Fechas consecutivas
6. Por persona = Total ÷ viajeros

---

*Última actualización: Diciembre 2024*
