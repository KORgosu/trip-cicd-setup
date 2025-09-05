# 1. 공식 Jenkins 이미지를 기반으로 시작합니다.
FROM jenkins/jenkins:lts-jdk17

# 2. 사용자를 root로 전환하여 패키지를 설치할 권한을 얻습니다.
USER root

# 3. apt-get을 업데이트하고 Python과 관련 도구를 설치합니다.
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv

# 4. 보안을 위해 다시 jenkins 사용자로 전환합니다.
USER jenkins