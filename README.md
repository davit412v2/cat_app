# 🐱 Cat Browser App

Aplicación móvil Flutter que permite visualizar razas de gatos, sus imágenes, descripción, y votar por ellas de forma positiva o negativa, usando [TheCatAPI](https://thecatapi.com/). Se ha desarrollado utilizando arquitectura **Stacked**, buenas prácticas de desarrollo, y navegación moderna con `Navigator 2.0`.

---

## ✨ Características

### 🏠 Pantalla Home
- Dropdown con selector de razas.
- Carrusel de imágenes por raza seleccionada.
- Detalles de cada raza: nombre, origen, inteligencia, descripción, esperanza de vida.
- Botón para abrir enlace de Wikipedia en una nueva pantalla (WebView).

### 💬 Pantalla Votación
- Carrusel para votar por razas.
- Se visualiza:
  - Imagen de la raza.
  - Nombre de la raza.
  - Botones "Me gusta" y "No me gusta".

---

## 📱 Tecnologías Usadas

- **Flutter** 3.8
- **Arquitectura Stacked**
- **WebView Flutter**
- **Carousel Slider**
- **Lottie (Splash)**
- **TheCatAPI**

---

## 🧱 Arquitectura

Se utiliza el paquete `stacked` con separación clara por capas:

- `views/`: pantallas y UI
- `viewmodels/`: lógica de cada pantalla
- `services/`: lógica de red y conexión con API
- `models/`: estructuras de datos (Breed, Image, etc.)
- `app/`: enrutamiento y configuración global

---

## 🧪 Buenas Prácticas

- Patrón MVVM con `Stacked`
- Responsabilidad única por clase
- Reutilización de componentes UI
- Código limpio y documentado
- Separación de lógica y presentación

---
