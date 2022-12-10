# How to build a client to conduct performance test

1. Modify the performance.py file. E.g., Add the host ip (PLC IP) in the line 45:

   ```console
   host = 'autoserver'
   ```

2. Build the new docker image. E.g.:

   ```console
   docker build -t username/registry:tag .
   ```

3. Modify the image field of all docker compose files, adding the built image for each `clientperf`.
