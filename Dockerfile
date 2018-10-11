FROM alpine:3.8

RUN addgroup -g 1000 appuser && \
    adduser -D -u 1000 -G appuser appuser

RUN apk add --no-cache python3 && \
    apk add --no-cache vim && \
    apk add --no-cache git && \
    apk add --no-cache dos2unix && \
    apk add --no-cache sudo && \
    apk add --no-cache curl

RUN cd /tmp \
 && git clone https://github.com/powerline/fonts.git \
 && cd /tmp/fonts \
 && ./install.sh

COPY _vimrc /home/appuser/.vimrc
RUN dos2unix /home/appuser/.vimrc
RUN mkdir /data

USER appuser 
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN vim +PlugInstall +qall

