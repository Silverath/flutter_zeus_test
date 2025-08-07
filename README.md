# Test App para Zeus

Para esta prueba se ha utilizado el framework de Flutter como se ha pedido, con su pantalla principal (lista) 
y la pantalla de detalles de los usuarios, además de la función de recargar la pantalla de la lista al deslizar
la lista hacia abajo.

Para el manejo de estados se ha usado Riverpod, en el UserController (StateNotifier) y con su provider (UserControllerProvider),
mediante el cual la UI (user_screen_list) lo consume y reacciona al estado.

He decidido que el manejo de estados solo iría en la lista de usuarios, ya que:

- Al cargarse los datos, se carga toda la información de todos los usuarios.
- Al pasar a la pantalla de detalles, se usa la información ya cargada, por lo que es irrelevante el uso de manejo de estados.

Para las versiones, mirar el archivo pubspec.yaml