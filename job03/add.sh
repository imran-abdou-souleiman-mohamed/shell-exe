if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <nombre1> <nombre2>"
    exit 1
fi

nombre1=$1
nombre2=$2

somme=$(($nombre1 + $nombre2))

echo "La somme de $nombre1 et $nombre2 est : $somme"
