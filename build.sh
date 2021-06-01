#!/bin/bash
# Create dist if not found
if [ ! -d dist ]; then
    mkdir dist;
fi;

# Build
javac -cp lib/javax/servlet/servlet-api/2.5/servlet-api-2.5.jar -d dist/WEB-INF/classes src/*.java;

# Copy html files
cp -r src/*.html dist;

# Copy java classes
cp web.xml dist/WEB-INF/web.xml;