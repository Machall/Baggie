# Baggie
a task list admin
Gestión de Lista de Tareas con Servlets y JSON


El objetivo de este proyecto es crear una aplicación web para la gestión de una lista de tareas. Los usuarios podrán agregar, ver, editar y eliminar tareas utilizando una interfaz web. Los datos de las tareas se almacenarán en un archivo JSON en el servidor.

Crear una aplicación web que conste de al menos 2 páginas (una para listar tareas y otra para agregar/editar tareas).Utilizar Servlets para manejar las solicitudes HTTP y las operaciones CRUD.Implementar operaciones CRUD para las tareas: Crear, Leer, Actualizar y Eliminar.Almacenar la información de las tareas en un archivo JSON en el servidor.Proporcionar una página de inicio que muestre la lista de tareas existentes y enlace a las páginas de agregar/editar tareas.Implementar validación de formularios para agregar y editar tareas (por ejemplo, campos requeridos).Agregar una funcionalidad de búsqueda para filtrar tareas por nombre o estado (pendiente/completada).Estilizar las páginas web con CSS para una presentación agradable.Utilizar Bootstrap u otro marco CSS para mejorar la interfaz de usuario.


Criterios de Aceptacion:

La aplicación debe permitir crear, modificar, consultar, completar y eliminar tareas. 
Cuando se cree una tarea, debe permitir agregar una descripción asociada a ella.
La aplicación debe permitir agregar actividades a las tareas y se deben mostrar con un CheckBox y con una descripción de la actividad.
Cuando la actividad esta con un Check quiere decir que esta completada, y se debe mostrar tachada o con su descripción en gris, pero si no esta con el Check esta pendiente por hacer y se debe mostrar su descripción con un color negro.
Cuando todas las actividades estén completadas la actividad debe de colocarse automáticamente como completada, si tiene alguna pendiente por ejecutar, debe de aparecer como no completada.
La aplicación debe mostrar el porcentaje de las actividades completadas en una Tarea.
La aplicación debe permitir filtrar las Tareas completadas y las que aún no está completadas.
Si una tarea esta completada, no se pemitira volver a modificar, ni su descripción ni sus actividades. 
Las tareas completadas, solo se podran consultar y eliminar.
