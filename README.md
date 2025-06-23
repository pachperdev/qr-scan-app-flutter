# QR Scan App

Aplicación móvil desarrollada en Flutter para escanear códigos QR y gestionar el historial de escaneos. Permite visualizar detalles, almacenar resultados y acceder rápidamente a enlaces o ubicaciones.

## Características principales

- Escaneo de códigos QR usando la cámara del dispositivo.
- Historial de escaneos con opción de eliminar registros.
- Visualización de detalles de cada escaneo (tipo, valor, ID).
- Acceso rápido a enlaces web, texto o ubicaciones desde el QR.
- Perfil de usuario con enlaces a redes sociales.
- Interfaz moderna y responsiva.

## Capturas de pantalla

> (Agrega aquí capturas de pantalla de la app para mostrar su funcionamiento)

## Instalación y ejecución

1. Clona el repositorio:
   ```bash
   git clone https://github.com/pachperdev/qr-scan-app-flutter.git
   ```
2. Accede al directorio del proyecto:
   ```bash
   cd qr-scan-app-flutter
   ```
3. Instala las dependencias:
   ```bash
   flutter pub get
   ```
4. Ejecuta la aplicación:
   ```bash
   flutter run
   ```

## Dependencias principales

- flutter_barcode_scanner
- provider
- sqflite
- url_launcher
- font_awesome_flutter
- google_maps_flutter

Consulta el archivo `pubspec.yaml` para ver todas las dependencias utilizadas.

## Estructura del proyecto

- `lib/main.dart`: Punto de entrada de la aplicación.
- `lib/screens/`: Pantallas principales (Home, Historial, Detalles, Perfil, Mapa).
- `lib/provider/`: Gestión de estado con Provider.
- `lib/widgets/`: Componentes reutilizables.
- `lib/models/`: Modelos de datos.
- `lib/utils/`: Utilidades y helpers.

## Autor

- Mauricio Pacheco ([GitHub](https://github.com/pachperdev) / [LinkedIn](https://www.linkedin.com/in/pachperdev/))

## Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo LICENSE para más información.
