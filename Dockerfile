# FROM public.ecr.aws/lambda/python:3.8
FROM frolvlad/alpine-glibc:alpine-3.14

ENV LAMBDA_TASK_ROOT=/var/task
WORKDIR ${LAMBDA_TASK_ROOT}

COPY assets/font_dir ${LAMBDA_TASK_ROOT}/font_dir

COPY assets/run.sh assets/pdf_to_png ${LAMBDA_TASK_ROOT}/
RUN chmod +x ./run.sh ./pdf_to_png

RUN ./pdf_to_png || true

ENTRYPOINT [ "/bin/sh", "/var/task/run.sh" ]