javac -g -sourcepath ./src -d bin src/com/epam/helloworld/HelloWorld.java
jdb -classpath bin -sourcepath src com.epam.helloworld.HelloWorld 
pause