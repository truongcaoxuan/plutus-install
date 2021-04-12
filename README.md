# plutus-install

**Build plutus**

docker build --force-rm -t vnpip/plutus -f dockerfile-plutus .

**Build plutus-pioneer-program**

docker build --force-rm -t vnpip/plutus-pp -f dockerfile-plutus-pioneer-program .


**Pull**

docker pull vnpip/plutus

**Push**

docker push vnpip/plutus

**Testing**

docker run -ti --privileged --rm  --name plutus1 vnpip/plutus

**Running**

docker run -dti --privileged  --name plutus1 vnpip/plutus
