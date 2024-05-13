FROM alpine/git:v2.34.1

ENV WORKDIR="/check-trailing-whitespace"
WORKDIR ${WORKDIR}

RUN apk add bash
COPY ./entrypoint.sh ${WORKDIR}/entrypoint.sh

ENTRYPOINT bash ${WORKDIR}/entrypoint.sh
