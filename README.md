## Pre-requisites
- Any system that can run shell (`.sh`) scripts e.g. Ubuntu
- Docker - run `docker -v` to make sure it's working
- `javac` - run `javac -version` to make sure
- VS-Code

## Build the code
1. Give execution permissions to `run.sh`

```bash
$ sudo chmod +x ./build.sh
```
2. Run the script
```bash
$ ./build.sh
```

This does the following
- Creates `dist` directory if not found
- Builds all `.java` files inside `src` to `dist/WEB-INF/classes`
- Copies all `.html` from `src` to `dist`
- Copies the `web.xml` file to `dist/WEB-INF`

## Run the docker image

> WARNING : You need the code built first!

1. Give execution permissions to `run.sh`

```bash
$ sudo chmod +x ./run.sh
```
2. Run the script
```bash
$ ./run.sh
```
This will pull the `tomcat:latest` image from DockerHub, run it on port 8888 and bind the directory `./dist` to the internal directory `ROOT` i.e. when you change the files inside `src` and run the build command, you should see your changes live.
