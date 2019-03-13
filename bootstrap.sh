set -e

echo "detecting OS ..."

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo $OSTYPE

elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
    echo $OSTYPE
elif [[ "$OSTYPE" == "cygwin" ]]; then
        # POSIX compatibility layer and Linux environment emulation for Windows
    echo $OSTYPE
elif [[ "$OSTYPE" == "msys" ]]; then
        # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    echo $OSTYPE
elif [[ "$OSTYPE" == "win32" ]]; then
        # I'm not sure this can happen.
    echo $OSTYPE
elif [[ "$OSTYPE" == "freebsd"* ]]; then
        # ...
    echo $OSTYPE
else
        # Unknown.
    echo $OSTYPE
fi
