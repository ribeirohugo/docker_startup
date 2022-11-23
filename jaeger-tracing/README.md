# Jaeger Tracing

Guidelines to set up Jaeger tracing tool using Docker ``run`` command.

## Setup Steps

Using Docker run command, makes possible to generate a container of Jaeger all-in-one tools.
It is also possible to configure each port to be used in host according to container mapping.

* For [Unix](run_jaeger.sh);

* For [Windows](run_jaeger.bat):

```
docker run -d --name jaeger ^
-e COLLECTOR_ZIPKIN_HOST_PORT=:9411 ^
-e COLLECTOR_OTLP_ENABLED=true ^
-p 6831:6831/udp ^
-p 6832:6832/udp ^
-p 5778:5778 ^
-p 16686:16686 ^
-p 4317:4317 ^
-p 4318:4318 ^
-p 14250:14250 ^
-p 14268:14268 ^
-p 14269:14269 ^
-p 9411:9411 ^
jaegertracing/all-in-one:1.39
```

Source: [Jaeger Documentation](https://www.jaegertracing.io/docs/1.6/getting-started/)
