FROM gitpod/workspace-full-vnc


USER root

RUN add-apt-repository ppa:saiarcot895/chromium-beta && apt-get update

# Install dependencies
RUN apt-get update                                             \
    && apt-get install -y libgtk-3-dev firefox chromium-browser              \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*


USER gitpod


#RUN npm install -g cordova ionic qrcode @ionic/lab cordova-res native-run @capacitor/core @capacitor/cli electron  electron-packager  

    



USER root
