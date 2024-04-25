WORKING in uppmax but throws "FATAL:   container creation failed: mount hook function failure: mount /lutra->/lutra error: while mounting /lutra: while getting stat for /lutra: stat /lutra: transport endpoint is not connected" error.
When ran again with "-resume" works properly.


To build docker and convert docker to sif file.
```bash
docker build . -t bigdatacouse
sudo singularity build bigdatacouse.sif docker-daemon:bigdatacouse
```
