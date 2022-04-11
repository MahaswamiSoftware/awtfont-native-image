# AWT font, native image build

For [GraalVM's issue #2729](https://github.com/oracle/graal/issues/2729)

First, run the application in standard JVM to generate the native-image configuration files:

	mvn compile exec:exec

Then, to build the native image, run:

	mvn package

To run the generated native executable, e.g. in Linux:

	./target/native-image/awtfont-native-image

or in Windows:

	target\native-image\awtfont-native-image.exe -Djava.home="%JAVA_HOME%"

