FROM alpine/git:v2.24.1

ENV WORKDIR="/check-trailing-whitespace"
WORKDIR ${WORKDIR}

RUN apk add bash
COPY ./check_whitespace.sh ${WORKDIR}/check_whitespace.sh

ENTRYPOINT bash ${WORKDIR}/check_whitespace.sh
