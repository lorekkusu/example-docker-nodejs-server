FROM alpine AS base
RUN apk add --no-cache curl wget

FROM golang AS go-builder
WORKDIR /go
COPY *.go ./
RUN go build -o main main.go

FROM base 
COPY --from=go-builder /go/main /main
CMD [ "./main" ]
