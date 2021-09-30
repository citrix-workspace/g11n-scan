FROM citrixg11n/radar:20.12.8

ADD dist/index.js /

CMD [ "node", "/index.js" ]
# mute actione
##CMD ["/bin/true"]
