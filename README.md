# Proyecto Base: Contador Flutter

Este es el proyecto base para la práctica **PE-2.4: Pipeline CI/CD**.

## Descripción

Una aplicación simple de contador en Flutter que servirá como base para implementar un pipeline de Integración y Despliegue Continuo (CI/CD) utilizando GitHub Actions.

## Estructura Inicial

```
app-contador/
├── lib/
│   └── main.dart          # Código fuente de la aplicación
├── test/
│   └── widget_test.dart   # Tests unitarios pre-configurados
├── pubspec.yaml           # Dependencias del proyecto
└── .gitignore             # Archivos ignorados por Git
```

## Instrucciones Rápidas

Para comenzar con este proyecto, sigue las instrucciones detalladas en [GUIA_PRACTICA.md](../GUIA_PRACTICA.md).

### 1. Preparación

Necesitas agregar el soporte para plataformas Android y Web:

```bash
flutter create --platforms=android,web .
```

### 2. Ejecución Local

```bash
flutter run
```

### 3. Ejecución de Tests

```bash
flutter test
```
