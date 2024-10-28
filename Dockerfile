FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim

# 작업 디렉토리 설정
WORKDIR /app

# JAR 파일의 위치를 설정
ARG JAR_FILE=target/*.jar

# JAR 파일 복사
COPY ${JAR_FILE} app.jar

# 외부 볼륨 설정 (필요한 경우)
VOLUME /temp

# 애플리케이션이 사용할 포트 노출
EXPOSE 8080

# 애플리케이션 실행
ENTRYPOINT ["java", "-jar", "app.jar"]
