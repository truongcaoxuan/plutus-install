# plutus-install

**Build**

docker build --force-rm -t truongcx/plutus:1.0 -f plutus-dockerfile .

**Pull**

docker pull truongcx/plutus:1.0

**Push**

docker push truongcx/plutus:1.0

**Testing**

docker run -ti --privileged --rm  --name plutus1 truongcx/plutus:1.0

**Running**

docker run -dti --privileged  --name plutus1 truongcx/plutus:1.0
