#!/usr/bin/env bash
set -ex

mvn clean install



$GRAALVM_HOME/bin/native-image -jar target/awtfont-native-image-1.0-SNAPSHOT.jar \
-H:ReflectionConfigurationFiles=src/main/resources/native-image-config/reflect-config.json \
-H:JNIConfigurationFiles=src/main/resources/native-image-config/jni-config.json \
-H:+ReportUnsupportedElementsAtRuntime \
--initialize-at-build-time=org.eclipse.jdt.internal.compiler.util.Util,org.eclipse.jdt.internal.compiler.parser.Parser \
--allow-incomplete-classpath \
-H:Name=awtfont-nativeimage \
-H:+TraceClassInitialization \
-H:+PrintClassInitialization \
-H:+ReportExceptionStackTraces \
-H:+ReportUnsupportedElementsAtRuntime  -H:+JNI