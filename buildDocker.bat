set PROJECT_NAME="sport-tracker"
set FILE="docker-compose.yml"

call gradlew clean bootJar

docker-compose -p %PROJECT_NAME% -f %FILE% stop
docker-compose -p %PROJECT_NAME% -f %FILE% rm -f
docker-compose -p %PROJECT_NAME% -f %FILE% build
docker-compose -p %PROJECT_NAME% -f %FILE% up -d