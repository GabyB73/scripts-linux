#!bin/bash
while true; do 
  echo "==== Menú Docker ===="
  echo "1. Mostrar contenedores activos"
  echo "2. Mostrar todos los contenedores"
  echo "3. Iniciar un contenedor"
  echo "4. Detener un contenedor"
  echo "5. Salir"
  read -p "Selecciona una opción: " opcion  

  case $opcion in 
    1) docker ps ;;
    2) cocker ps -a ;;
    3) read -p "ID o nombre del contenedor: " cont; docker start "$cont" ;;
    4) read -p "ID o nombre del contenedor: " cont; docker stop "$cont" ;;
    5) echo "¡Hasta luego!" ; break ;;
    *) echo "Opción no válida." ;;
  esac
done
