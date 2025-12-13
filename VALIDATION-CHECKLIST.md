# ✅ Checklist de Validación de Consistencia

**USO:** Ejecutar DESPUÉS de CUALQUIER cambio en un itinerario.

---

## 🔍 Validación Rápida (5 minutos)

### 1. Validación de Días y Noches

```
□ Título menciona "({X} Días)"
□ Días totales = Fecha final - Fecha inicial + 1
□ Presupuesto menciona "({X-1} noches)"
□ Suma de días por base = total días del título
```

**Fórmula:**
```
NOCHES = DÍAS - 1
```

**Ejemplo:**
```
✅ Título: "Vietnam 2026 (29 Días)"
✅ Fechas: 28 Jul - 25 Ago = 29 días
✅ Presupuesto: "Alojamiento (28 noches)"
✅ Bases: 4+4+4+3+6+4+4 = 29 días
```

---

### 2. Validación de Vuelos

```
□ Precio vuelos en "Tabla de Vuelos" 
  = Precio en "Tabla de Presupuesto"
□ Vuelos internos mencionados están sumados
□ Estado (Confirmado/Estimado) es consistente
```

**Ejemplo:**
```
✅ Tabla vuelos: Turkish Airlines - 2.289€
✅ Presupuesto: Vuelos Internacionales - 2.289€
✅ Vuelo interno DAD→SGN - 150€ (en ambas tablas)
```

---

### 3. Validación de Presupuesto Total

```
□ TOTAL = Suma de TODOS los conceptos
□ Por persona = TOTAL ÷ número de viajeros
□ Si hay redondeo, está explicado
```

**Fórmula:**
```
TOTAL = Vuelos Int. + Vuelos Internos + Alojamiento + 
        Comida + Transporte + Actividades + Varios

Por Persona = TOTAL ÷ 2 (si son 2 viajeros)
```

**Validar manualmente:**
```bash
# Sumar todos los conceptos con calculadora
2289 + 150 + 1500 + 900 + 350 + 500 + 100 = 5789€
# Verificar que coincide con TOTAL en tabla
```

---

### 4. Validación de Fechas

```
□ Fechas en tabla resumen son consecutivas
□ No hay gaps entre bases
□ Rangos de días por base no se solapan
```

**Ejemplo de ERROR:**
```
❌ Base 1: Días 1-4
❌ Base 2: Días 5-8
❌ Base 3: Días 12-15  ← FALTA días 9-11
```

**Ejemplo CORRECTO:**
```
✅ Base 1: Días 1-4
✅ Base 2: Días 5-8
✅ Base 3: Días 9-12
```

---

### 5. Validación de Bases

```
□ Bases numeradas consecutivamente (1,2,3,4...)
□ Cada base tiene mínimo 3 noches (slow travel)
□ Suma de días por base = total días
```

---

### 6. Validación de Actividades con Coste

```
□ Todas las actividades mencionadas con precio 
  están en presupuesto
□ Clases de cocina presupuestadas (30-50€)
□ Cruceros/tours privados incluidos
```

**Ejemplo:**
```
Si mencionas: "Crucero Lan Ha Bay (400€)"
→ Debe aparecer en: Presupuesto > Actividades
```

---

### 7. Validación de Elementos Obligatorios

```
□ Mínimo 1 clase de cocina en itinerario
□ Mínimo 1 mercado nocturno mencionado
□ Notas éticas donde hay animales
□ Sección de clima incluida
□ Guía práctica (visados, apps, dinero)
```

---

## 🔴 Si Encuentras un Error

**PROTOCOLO:**

1. 🛑 **DETENER** el trabajo
2. 📝 **DOCUMENTAR** el error encontrado
3. 🔍 **IDENTIFICAR** todas las áreas afectadas
4. 🔧 **CORREGIR** todas las secciones
5. ✅ **RE-VALIDAR** el checklist completo

**NO continuar sin corregir.**

---

## 🤖 Script de Validación Automática

```bash
# Guardar como: validate.sh
#!/bin/bash
FILE=$1

echo "🔍 Validando: $FILE"

DIAS=$(grep -o "([0-9]\+ Días)" "$FILE" | grep -o "[0-9]\+")
NOCHES=$(grep "Alojamiento.*noches" "$FILE" | grep -o "([0-9]\+ noches)" | grep -o "[0-9]\+")
ESPERADO=$((DIAS - 1))

if [ "$NOCHES" -eq "$ESPERADO" ]; then
    echo "✅ Noches: $NOCHES = $DIAS - 1"
else
    echo "❌ ERROR: Noches $NOCHES ≠ Esperadas $ESPERADO"
fi
```

**Uso:**
```bash
chmod +x validate.sh
./validate.sh 2026/vietnam.md
```

---

## 📊 Tipos de Cambios y Áreas Afectadas

| Cambio | Actualizar |
|:---|:---|
| **Añadir/quitar días** | Título, Tabla resumen, Presupuesto (noches, comida, TOTAL), Bases |
| **Cambiar precio vuelos** | Tabla vuelos, Presupuesto (vuelos, TOTAL) |
| **Añadir actividad** | Itinerario, Presupuesto (actividades, TOTAL) |
| **Cambiar alojamiento** | Presupuesto (alojamiento, TOTAL) |
| **Añadir/quitar base** | Título, Tabla resumen, Presupuesto, Numeración |

---

**Última actualización:** Diciembre 2024  
**Referencia:** Ver `agent.md` Fase 5, Sección 7 para detalles completos.
