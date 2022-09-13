## FROM : Docker Base Image (기반이 되는 이미지, <이미지 이름>:<태그> 형식으로 설정)
FROM openjdk:11.0.10-jre-slim-buster
## ARG : Dockerfile 내부 변수
ARG JAR_FILE=build/libs/*.jar
## COPY: 파일 복사
COPY ${JAR_FILE} app.jar
## ENTRYPOINT : 컨테이너가 시작되었을 때 스크립트 실행
ENTRYPOINT ["java","-jar","/app.jar"]