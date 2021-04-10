# plutus-install

**Build**

docker build --force-rm -t truongcx/plutus -f plutus-dockerfile .

**Pull**

docker pull truongcx/plutus

**Push**

docker push truongcx/plutus

**Testing**

docker run -ti --privileged --rm  --name plutus1 truongcx/plutus

**Running**

docker run -dti --privileged  --name plutus1 truongcx/plutus
