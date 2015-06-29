FROM debian:7

RUN echo "deb http://packages.openmediavault.org/public kralizec main" > /etc/apt/sources.list.d/openmediavault.list

RUN apt-get update && apt-get install -y openmediavault-keyring postfix

# Note: You will get a warning that the package 'openmediavault-keyring' can't be authenticated. You're fine to ignore that warning and install it anyways.
RUN apt-get update && apt-get install -y openmediavault
RUN omv-initsystem

EXPOSE 80
