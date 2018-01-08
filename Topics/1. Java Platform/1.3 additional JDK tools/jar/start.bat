cd Calculator
@echo Compiling...
javac -sourcepath src -d bin src/com/epam/calculator/Calculator.java
@echo Compiling success!!!
@echo Generating jar...
jar cvf calculator.jar -C bin .
@echo Generating jar success!!!
cd ..
copy "Calculator\calculator.jar" "HelloWorld\lib"
@echo Generating jar success!!!
cd HelloWorld
javac -sourcepath src -d bin -classpath src/calculator.jar src/com/epam/helloworld/HelloWorld.java
java -classpath lib/calculator.jar;./bin com.epam.helloworld.HelloWorld
pause
cd ..
cd Calculator
@echo Disassembling jar...
javap -c -classpath calculator.jar com.epam.calculator.Calculator
@echo Disassembling jar success!!!
@echo We can see that class have empty constructor, method sum() in assembler code.
@echo Disassembling jar with key private...
javap -private  -classpath calculator.jar com.epam.calculator.operation.Adder
@echo Disassembling jar success!!!
@echo We can see list of variable and methods.
@echo Generating javadoc...
javadoc -d doc -charset utf-8  -sourcepath src -author -subpackages com.epam.calculator
@echo Generating javadoc success...
pause