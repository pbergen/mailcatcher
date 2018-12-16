# mailcatcher

## Run it!
    docker run -d -p 80:80 --name mailcatcher pbergen/mailcatcher
    
## Use it in docker-compose
    mailcatcher:
          image: pbergen/mailcatcher
          ports:
            - "80:80"
            - "25:25"
          restart: always
    
## Ports
- SMTP 25
- HTTP 80

## PHP configuration
tbd 