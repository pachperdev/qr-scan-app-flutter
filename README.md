# 📱 QR Scan App

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Flutter Version](https://img.shields.io/badge/Flutter-3.0+-blue.svg)](https://flutter.dev/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

*Una aplicación móvil moderna y elegante desarrollada en Flutter para escanear códigos QR con gestión inteligente del historial*

[Demo](#capturas-de-pantalla) • [Instalación](#instalación) • [Características](#características-principales) • [Documentación](#documentación)

</div>

---

## 🚀 Descripción

**QR Scan App** es una aplicación móvil multiplataforma desarrollada en Flutter que permite escanear códigos QR de manera rápida y eficiente. La aplicación incluye un sistema completo de gestión del historial de escaneos, visualización de detalles, y acceso directo a contenido web, texto o ubicaciones geográficas.

### 🎯 Objetivo

Proporcionar una herramienta intuitiva y completa para el escaneo de códigos QR, con un enfoque en la experiencia del usuario y la gestión inteligente de la información escaneada.

## ✨ Características Principales

### 📷 Escaneo Avanzado
- **Escaneo en tiempo real** usando la cámara del dispositivo
- **Detección automática** de múltiples formatos de códigos
- **Modo nocturno** con control de flash integrado
- **Precisión optimizada** para diferentes condiciones de iluminación

### 📊 Gestión del Historial
- **Almacenamiento local** con base de datos SQLite
- **Historial completo** de todos los escaneos realizados
- **Búsqueda y filtrado** por tipo de contenido y fecha
- **Eliminación selectiva** de registros individuales o masiva

### 🔍 Visualización Inteligente
- **Detalles completos** de cada escaneo (tipo, valor, timestamp)
- **Preview del contenido** antes de la acción
- **Categorización automática** por tipo de QR (URL, texto, geolocalización)
- **Acciones contextuales** según el tipo de contenido

### 🌐 Integración Externa
- **Apertura automática** de enlaces web en el navegador
- **Visualización en mapas** para coordenadas GPS
- **Compartir contenido** a través de aplicaciones nativas
- **Copia rápida** al portapapeles

### 👤 Perfil de Usuario
- **Información personal** del desarrollador
- **Enlaces directos** a redes sociales y portafolio
- **Estadísticas de uso** y métricas de escaneo

### 🎨 Interfaz de Usuario
- **Diseño moderno** siguiendo Material Design 3
- **Tema adaptativo** claro y oscuro
- **Animaciones fluidas** y transiciones naturales
- **Responsividad completa** para diferentes tamaños de pantalla

## 📱 Capturas de Pantalla

<div align="center">

| Pantalla Principal | Escáner QR | Historial | Detalles |
|:--:|:--:|:--:|:--:|
| ![Home](assets/screenshots/home.png) | ![Scanner](assets/screenshots/scanner.png) | ![History](assets/screenshots/history.png) | ![Details](assets/screenshots/details.png) |

*Nota: Las capturas de pantalla se actualizarán próximamente*

</div>

## 🛠️ Requisitos del Sistema

### Versiones Mínimas
- **Flutter**: 3.0.0 o superior
- **Dart SDK**: 2.19.0 o superior
- **Android**: API nivel 21 (Android 5.0) o superior
- **iOS**: 11.0 o superior

### Permisos Requeridos
- **Cámara**: Para el escaneo de códigos QR
- **Almacenamiento**: Para guardar el historial de escaneos
- **Internet**: Para abrir enlaces web (opcional)

## 📦 Instalación

### 1. Prerrequisitos
Asegúrate de tener instalado:
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Android Studio](https://developer.android.com/studio) o [VS Code](https://code.visualstudio.com/)
- [Git](https://git-scm.com/)

### 2. Clonar el Repositorio
```bash
git clone https://github.com/pachperdev/qr-scan-app-flutter.git
cd qr-scan-app-flutter
```

### 3. Instalar Dependencias
```bash
flutter pub get
```

### 4. Configurar Plataformas

#### Android
```bash
# Verificar configuración
flutter doctor

# Ejecutar en dispositivo/emulador Android
flutter run
```

#### iOS (Solo en macOS)
```bash
# Instalar pods (requerido para iOS)
cd ios && pod install && cd ..

# Ejecutar en dispositivo/simulador iOS
flutter run
```

#### Web
```bash
# Ejecutar en navegador web
flutter run -d chrome
```

### 5. Compilar para Producción

#### Android APK
```bash
flutter build apk --release
```

#### Android App Bundle
```bash
flutter build appbundle --release
```

#### iOS
```bash
flutter build ios --release
```

## 🎮 Uso de la Aplicación

### Primer Uso
1. **Iniciar la aplicación** desde el ícono en tu dispositivo
2. **Conceder permisos** de cámara cuando se solicite
3. **Tocar el botón de escaneo** en la pantalla principal

### Escanear un Código QR
1. **Apuntar la cámara** hacia el código QR
2. **Esperar la detección automática** (vibración/sonido)
3. **Ver los detalles** del contenido escaneado
4. **Ejecutar la acción** deseada (abrir link, ver mapa, etc.)

### Gestionar el Historial
1. **Acceder al historial** desde el menú principal
2. **Tocar cualquier elemento** para ver detalles
3. **Deslizar para eliminar** registros individuales
4. **Usar el botón de búsqueda** para filtrar contenido

## 🏗️ Arquitectura del Proyecto

```
lib/
├── 📁 models/          # Modelos de datos (Scan, Usuario)
├── 📁 provider/        # Gestión de estado con Provider
├── 📁 screens/         # Pantallas principales de la aplicación
│   ├── home_screen.dart
│   ├── scanner_screen.dart
│   ├── history_screen.dart
│   └── profile_screen.dart
├── 📁 theme/           # Configuración de temas y estilos
├── 📁 utils/           # Utilidades y helpers
│   ├── database_helper.dart
│   └── scan_utils.dart
├── 📁 widgets/         # Componentes reutilizables
└── main.dart           # Punto de entrada de la aplicación
```

### Patrones de Diseño Utilizados
- **Provider Pattern**: Gestión de estado reactivo
- **Repository Pattern**: Abstracción de acceso a datos
- **Singleton Pattern**: Base de datos y servicios únicos
- **Observer Pattern**: Notificaciones de cambios de estado

## 📚 Dependencias Principales

| Paquete | Versión | Propósito |
|---------|---------|-----------|
| `flutter_barcode_scanner` | ^2.0.0 | Escaneo de códigos QR/Barcode |
| `provider` | ^6.0.5 | Gestión de estado |
| `sqflite` | ^2.2.4+1 | Base de datos local SQLite |
| `url_launcher` | ^6.1.8 | Apertura de URLs externas |
| `google_maps_flutter` | ^2.2.3 | Integración con Google Maps |
| `font_awesome_flutter` | ^10.3.0 | Iconografía rica |
| `path_provider` | ^2.0.12 | Acceso al sistema de archivos |

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Por favor, sigue estos pasos:

### Cómo Contribuir
1. **Fork** el repositorio
2. **Crea una rama** para tu feature (`git checkout -b feature/nueva-caracteristica`)
3. **Realiza los cambios** y añade tests si es necesario
4. **Commit** tus cambios (`git commit -am 'Agregar nueva característica'`)
5. **Push** a la rama (`git push origin feature/nueva-caracteristica`)
6. **Abre un Pull Request** con descripción detallada

### Código de Conducta
- Usa **nombres descriptivos** para variables y funciones
- **Comenta el código** complejo
- Sigue las **convenciones de Dart/Flutter**
- **Añade tests** para nuevas funcionalidades
- **Actualiza la documentación** cuando sea necesario

### Reportar Bugs
Si encuentras un bug, por favor abre un [issue](../../issues) con:
- **Descripción detallada** del problema
- **Pasos para reproducir** el error
- **Capturas de pantalla** si es aplicable
- **Información del dispositivo** y versión de Flutter

## 🗺️ Roadmap

### Versión 1.1.0 (Próxima)
- [ ] **Generación de códigos QR** personalizados
- [ ] **Exportación del historial** a CSV/PDF
- [ ] **Modo batch** para escaneo múltiple
- [ ] **Themes personalizados** adicionales

### Versión 1.2.0 (Futuro)
- [ ] **Sincronización en la nube** (Firebase)
- [ ] **Categorías personalizadas** de escaneos
- [ ] **Widget para pantalla de inicio**
- [ ] **Modo sin conexión** mejorado

### Versión 2.0.0 (Largo Plazo)
- [ ] **Reconocimiento de texto** con ML Kit
- [ ] **Escaneo por lotes** con IA
- [ ] **API REST** para integración externa
- [ ] **Versión web** completa

## 📄 Licencia

Este proyecto está bajo la [Licencia MIT](LICENSE). Puedes usar, modificar y distribuir este código libremente.

```
MIT License

Copyright (c) 2023 Mauricio Pacheco

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

## 👨‍💻 Autor

**Mauricio Pacheco**
- 🌐 **GitHub**: [@pachperdev](https://github.com/pachperdev)
- 💼 **LinkedIn**: [/in/pachperdev](https://www.linkedin.com/in/pachperdev/)
- 📧 **Email**: [pachperdev@gmail.com](mailto:pachperdev@gmail.com)
- 🌍 **Portfolio**: [pachperdev.com](https://pachperdev.com)

## 🙏 Agradecimientos

- **Flutter Team** por el increíble framework
- **Comunidad de desarrolladores** por las librerías utilizadas
- **Contributors** que han mejorado este proyecto
- **Beta testers** por su feedback valioso

---

<div align="center">

**Si este proyecto te ha sido útil, ¡considera darle una ⭐ estrella!**

**¿Tienes preguntas o sugerencias? [Abre un issue](../../issues/new) o contáctame directamente.**

</div>

---

*Desarrollado con ❤️ usando Flutter | © 2023 Mauricio Pacheco*