#getting the base image

FROM openjdk:26-slim-bullseye

#setting the workdir 

WORKDIR /app

#copying the code 

COPY src/Main.java /app/Main.java

COPY quotes.txt quotes.txt

#run it i mean compile the code 

RUN javac Main.java 

EXPOSE 8000

# serving it using cmd 

CMD ["java","Main"]
