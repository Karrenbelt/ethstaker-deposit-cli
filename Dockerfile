FROM python:alpine3.19

WORKDIR /app

COPY requirements.txt ./

COPY staking_deposit ./staking_deposit

RUN apk add --update gcc libc-dev linux-headers

RUN pip3 install -r requirements.txt

ARG cli_command

ENTRYPOINT [ "python3", "-m", "staking_deposit" ]

CMD [ $cli_command ]
