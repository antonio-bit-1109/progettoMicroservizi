#istruzioni per la generazione
#di un immagine di un progetto Java

#1. scarica un immagine di una JVM versione 17
FROM openjdk:17-jdk-slim

#2. informazioni su chi sia il manutentore dell immagine docker
LABEL "org.opencontainers.image.authors"="eazybytes.com"

#3. prendi dalla cartella target il file .jar e copialo nel dockerfile
#(il nome del file è ripetuto due volte perche :
#- Il primo percorso (`target/progettoMicroservizi-0.0.1-SNAPSHOT.jar`)
# è la posizione del file **sull'host** (il tuo computer)
#- Il secondo nome (`progettoMicroservizi-0.0.1-SNAPSHOT.jar`)
# è dove vuoi che il file venga copiato **all'interno dell'immagine Docker**)
COPY target/progettoMicroservizi-0.0.1-SNAPSHOT.jar progettoMicroservizi-0.0.1-SNAPSHOT.jar

# 4. Comando che verrà eseguito quando il container sarà avviato
ENTRYPOINT ["java" , "-jar" , "progettoMicroservizi-0.0.1-SNAPSHOT.jar"]
