#/bin/bash
name="matrix_multiply"

echo "JNI Time"
time java -Xms512M -Xmx512M -Djava.library.path=. "native$name" $@
echo ""

echo "C++ time"
time "./$name" $@
echo ""

echo "Java time"
time java "$name" $@
echo ""

echo "Done!"
