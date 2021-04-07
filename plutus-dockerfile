==========================
****OS Ubuntu****
==========================
FROM debian:latest
LABEL maintainer="VNPIPS Staking Team (ada.vnpips.com)"

ARG DEBIAN_FRONTEND=noninteractive
ENV \
    ENV=/etc/profile \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 
    
USER root
WORKDIR /
    
#  en_US.UTF-8 for inclusion in generation
RUN sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen \
    && locale-gen \
    && echo "export LC_ALL=en_US.UTF-8" >> ~/.bashrc \
    && echo "export LANG=en_US.UTF-8" >> ~/.bashrc \
    && echo "export LANGUAGE=en_US.UTF-8" >> ~/.bashrc
RUN sudo add-apt-repository universe \
  && sudo add-apt-repository multiverse \
  && sudo apt update \
  && sudo apt upgrade 
  
# SETUP NONEROOTUSER
ARG NONEROOTUSER=vnpip

RUN adduser --disabled-password --gecos '' $NONEROOTUSER \
    && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers \
    && adduser $NONEROOTUSER sudo \
    && chown -R $NONEROOTUSER:$NONEROOTUSER /home/$NONEROOTUSER/.*

# Run non-privileged command
USER $NONEROOTUSER
WORKDIR /home/$NONEROOTUSER

# STEP ONE: INSTALL NIX
RUN curl -L https://nixos.org/nix/install | sh
 && mkdir /etc/nix

# COPY FOLLOWING TWO LINES:
RUN echo "substituters        = https://hydra.iohk.io https://iohk.cachix.org https://cache.nixos.org/" >> /etc/nix/nix.conf \
 && echo "trusted-public-keys = hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ= iohk.cachix.org-1:DpRUyj7h7V830dp/i6Nti+NEO2/nhblbov/8MW7Rqoo= cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY=" >> /etc/nix/nix.conf

# STEP TWO: INSTALL HASKELL
RUN sudo apt-get install haskell-platform \
  && cabal update

# STEP THREE: INSTALL PLUTUS

RUN git clone https://github.com/input-output-hk/plutus.git \
 && cd plutus/ \
 && nix build -f default.nix plutus.haskell.packages.plutus-core.components.library
 
ENTRYPOINT ["/bin/bash"]
