# 🚀 HERMES V8 - Sistema Avanzado de Automatización para WhatsApp

![HERMES Logo](logo_left.png)

## 📋 Descripción

HERMES V8 es un sistema avanzado de automatización para WhatsApp que permite el envío masivo de mensajes a través de dispositivos Android conectados por USB. La aplicación cuenta con una interfaz gráfica moderna y múltiples modos de operación.

### ✨ Características Principales

- 📱 **Multi-dispositivo**: Soporta múltiples dispositivos Android simultáneamente
- 📊 **Procesamiento de datos**: Lee archivos Excel/CSV y genera mensajes personalizados
- 🔄 **Modo Fidelizado**: Envío en bucles con rotación de mensajes
- 📈 **Seguimiento en tiempo real**: Estadísticas y progreso visual
- 🎨 **Interfaz moderna**: Diseñada con CustomTkinter
- ⚡ **Optimizado**: Versión limpia y optimizada del código

## 🛠️ Requisitos del Sistema

### Software Requerido
- **Python 3.8+** (recomendado 3.11)
- **Windows 10/11** (compatible con Linux/Mac con ajustes)
- **ADB (Android Debug Bridge)** - incluido en el proyecto

### Hardware Requerido
- Dispositivos Android con **Depuración USB activada**
- Cables USB funcionales
- WhatsApp y/o WhatsApp Business instalados

## 📦 Instalación

### Instalación Automática (Recomendada)

1. **Clona el repositorio:**
   ```bash
   git clone https://github.com/bernabe05rodriguez-stack/HERMES-V8.git
   cd HERMES-V8
   ```

2. **Ejecuta el instalador:**
   ```bash
   # En Windows
   INSTALAR.bat
   
   # En Linux/Mac
   pip install -r requirements.txt
   ```

### Instalación Manual

```bash
# 1. Instalar Python dependencies
pip install customtkinter openpyxl Pillow

# 2. Verificar ADB
adb --version
```

## 🚀 Uso Rápido

### 1. Preparación

1. **Conecta tu(s) dispositivo(s) Android**
2. **Activa la Depuración USB** en Configuración > Opciones de desarrollador
3. **Autoriza la conexión** cuando aparezca el diálogo en el teléfono

### 2. Ejecutar la aplicación

```bash
# Método 1: Usar el ejecutor
EJECUTAR.bat

# Método 2: Python directo
python Hermes.py
```

### 3. Pasos en la aplicación

1. **🔍 Detectar Dispositivos** - Verifica que tus dispositivos estén conectados
2. **📄 Cargar Excel/CSV** - Sube tu archivo con datos de contactos
3. **▶️ Iniciar Envío** - Comienza el proceso automatizado

## 📁 Estructura del Proyecto

```
HERMES-V8/
├── Hermes.py                    # Aplicación principal (original)
├── Hermes_optimized.py          # Versión optimizada
├── requirements.txt             # Dependencias originales
├── requirements_optimized.txt   # Dependencias limpias
├── INSTALAR.bat                # Instalador automático
├── EJECUTAR.bat                # Ejecutor de la aplicación
├── VERIFICAR_PYTHON.bat        # Verificador de Python
├── Grupos.txt                  # Mensajes predeterminados
├── logo_left.png               # Logo izquierdo
├── logo_right.png              # Logo derecho
└── scrcpy-win64-v3.2/          # Herramientas ADB
    └── adb.exe
```

## 🎯 Modos de Operación

### Modo Tradicional (Excel/CSV)
- Carga archivos con datos de contactos
- Procesa columnas de teléfonos automáticamente
- Genera mensajes personalizados con plantillas
- Soporte para múltiples modos de envío

### Modo Fidelizado
- **Modo Números**: Envío a números específicos
- **Modo Grupos**: Envío a grupos de WhatsApp
- **Modo Mixto**: Combinación de números y grupos
- Rotación automática de mensajes
- Configuración de bucles y repeticiones

## ⚙️ Configuración Avanzada

### Configuración de Tiempo
- **Delay**: Pausa entre mensajes (10-15 seg por defecto)
- **Espera Abrir**: Tiempo de espera al abrir WhatsApp (15 seg)
- **Espera Enter**: Tiempo antes de enviar mensaje (10 seg)

### Configuración de WhatsApp
- Soporte para WhatsApp Normal y Business
- Cambio automático de cuentas
- Gestión de múltiples aplicaciones

## 🔧 Solución de Problemas

### Problemas Comunes

**❌ "ADB no encontrado"**
- Ejecuta `INSTALAR.bat`
- Verifica que `scrcpy-win64-v3.2/adb.exe` exista

**❌ "No se encontraron dispositivos"**
- Activa Depuración USB en el teléfono
- Autoriza la conexión ADB
- Prueba con otro cable USB

**❌ "Error al leer Excel"**
- Asegúrate de que el archivo tenga columnas "Telefono" o "Celular"
- Verifica que el formato sea .xlsx, .xls o .csv

**❌ "Fallo al enviar mensaje"**
- Verifica que WhatsApp esté instalado
- Comprueba que el dispositivo tenga conexión a internet
- Aumenta los tiempos de espera en configuración

### Logs y Depuración

La aplicación genera logs detallados en tiempo real. Los mensajes incluyen:
- ✅ Éxito (verde)
- ❌ Error (rojo)
- ⚠️ Advertencia (amarillo)
- ℹ️ Información (azul)

## 🆕 Mejoras en V8

### Optimizaciones de Código
- ✅ Refactorización completa del código
- ✅ Separación modular de componentes
- ✅ Mejora en el manejo de errores
- ✅ Optimización de recursos y memoria
- ✅ Limpieza de dependencias

### Mejoras de UI
- ✅ Interfaz más responsiva
- ✅ Mejor organización visual
- ✅ Tooltips informativos mejorados
- ✅ Modo oscuro optimizado

### Mejoras de Rendimiento
- ✅ Threading optimizado
- ✅ Gestión eficiente de recursos
- ✅ Reducción de tiempo de respuesta
- ✅ Mejor manejo de múltiples dispositivos

## 🤝 Contribución

Las contribuciones son bienvenidas. Para contribuir:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📝 Licencia

Este proyecto es de código abierto. Desarrollado por Bernabé Gabriel Rodriguez y Francisco José Rodriguez.

## ⚠️ Descargo de Responsabilidad

- Este software es solo para uso educativo y personal
- Respeta los términos de servicio de WhatsApp
- Los desarrolladores no se hacen responsables del mal uso
- Úsalo de manera responsable y ética

## 📞 Soporte

Para soporte técnico:
- 📧 Abre un issue en GitHub
- 📋 Incluye logs de error y pasos para reproducir
- 🔧 Especifica tu sistema operativo y versión de Python

---

**HERMES V8** - Llevando la automatización de WhatsApp al siguiente nivel 🚀
