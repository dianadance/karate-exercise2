# Pruebas API Demoblaze con Karate

Este repositorio contiene pruebas automatizadas de los servicios REST `Signup` y `Login` de la API utilizando Karate Framework.

## Descripción

Las pruebas cubren los siguientes escenarios:

- **Crear un nuevo usuario en Signup**: Registra un nuevo usuario en la API.
- **Intentar crear un usuario ya existente**: Verifica que la API maneja el caso cuando un usuario intenta registrarse con un nombre de usuario que ya existe.
- **Usuario y contraseña correctos en Login**: Verifica que el inicio de sesión es exitoso con credenciales correctas.
- **Usuario y contraseña incorrecta en Login**: Verifica que el inicio de sesión falle con credenciales incorrectas.

## Requisitos previos

Asegúrate de tener las siguientes herramientas instaladas:

- **Java 8 o superior**: Karate está basado en Java.
- **Maven**: Para compilar y ejecutar las pruebas.
- **IDE de tu preferencia** (opcional): Recomendamos usar un editor de texto como VSCode, IntelliJ IDEA o Eclipse.

## Instalación

1. **Clona el repositorio:**

   ```bash
   git clone https://github.com/dianadance/karate-exercise2

**2. Instala las dependencias usando Maven:**

Si no tienes Maven instalado, puedes descargarlo desde aquí. Luego ejecuta:
   
```bash 
  mvn install
```
**3. Ejecuta las pruebas:**

Las pruebas están ubicadas en el directorio src\test\resources\com\exercise2\tests y puedes ejecutarlas de la siguiente manera:

```bash 
   mvn test
```

## Datos de prueba

Para que el escenario de creación de usuario sea exitoso, se debe modificar el valor del username en el request. En la línea 5 del archivo ```login.feature``` se debe cambiar ```exerciseUser17``` por otro nombre de usuario.