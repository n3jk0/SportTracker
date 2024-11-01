set PROJECT_NAME="postgresql"
set FILE="database-compose.yml"

docker-compose -p %PROJECT_NAME% -f %FILE% stop
docker-compose -p %PROJECT_NAME% -f %FILE% rm -f
docker-compose -p %PROJECT_NAME% -f %FILE% build
docker-compose -p %PROJECT_NAME% -f %FILE% up -d