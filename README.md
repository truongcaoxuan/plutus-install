# plutus-install

**Build**

docker build --force-rm -t vnpip/plutus -f dockerfile-plutus .

**Pull**

docker pull vnpip/plutus

**Push**

docker push vnpip/plutus

**Testing**

docker run -ti --privileged --rm  --name plutus1 vnpip/plutus

**Running**

docker run -dti --privileged  --name plutus1 vnpip/plutus
