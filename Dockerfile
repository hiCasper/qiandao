# 基础镜像
FROM python:2.7-alpine
ADD . /usr/src/app
WORKDIR /usr/src/app
# 基础镜像已经包含pip组件
RUN apk add --no-cache bash autoconf g++ \
    && pip install --no-cache-dir -r requirements.txt
ENV PORT 80
EXPOSE $PORT/tcp
VOLUME ["/usr/src/app/"]
CMD ["python","/usr/src/app/run.py"]
