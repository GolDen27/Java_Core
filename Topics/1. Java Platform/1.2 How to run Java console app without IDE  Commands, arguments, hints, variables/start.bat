echo Compiling *.java files...
javac -sourcepath ./src -d bin src/com/epam/helloworld/HelloWorld.java
echo Compiling success!!!
echo Running program...
java -classpath ./bin com.epam.helloworld.HelloWorld
echo Execution is completed!!!
pause