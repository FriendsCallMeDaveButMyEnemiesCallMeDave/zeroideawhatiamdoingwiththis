
FROM golang:1.11 as builder


RUN git clone --depth 1 https://github.com/SSLMate/certspotter.git /go/src/software.sslmate.com/src/certspotter/

WORKDIR /go/src/software.sslmate.com/src/certspotter/cmd/certspotter

RUN go get ./...

RUN go install

WORKDIR /root

#CMD certspotter


#You will need to go into the /root/ directory. 
# 'mkdir .certspotter'
# 'cd .certspotter'
# 'touch watchlist'
# 'apt update && apt install vim'
# 'vim watchlist'
# add in the dns for the domains you wish to watch. If you do not know how to use vim 
#there

#go to the certspotter/cmd/certspotter directory and 'go run main.go'
#the repo has arguments that can be used 