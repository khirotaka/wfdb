# wfdb
Docker image of [WFDB](https://archive.physionet.org/physiotools/wfdb.shtml).

![Docker Pulls](https://img.shields.io/docker/pulls/hkawashima/wfdb)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/hkawashima/wfdb)
![GitHub](https://img.shields.io/github/license/KawashimaHirotaka/wfdb)

## Usage

### Build image
```sh
docker build -t wfdb .

```

### Run Docker Image
```sh
docker run -v $PWD:/Downloads rdsamp -r ~~~~/~~~~ > samples.csv
```


