This Project is NoName
===
<p align="left">
    <!-- <img src="https://img.shields.io/github/stars/hironeko/projectX.svg"> -->
    <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="GitHub license">
</p>

## Requirements
- Git
- Docker
- Docker-Compose


## Installation

```shell
$ git clone https://github.com/hironeko/projectX.git
$ cd projectX
$ cp env.example .env

## use php + nginx
$ docker-compose -f docker-compose.php.yml up -d php nginx

## use elixir + node v8.9.4
$ docker-compose -f docker-compose.elixir up -d elixir

# use host mysql
# DB host name (case mac)
# host naem is "docker.for.mac.localhost"
```

## Where working directory?

The working directory is the folder for each language in the workspace derectory.

```shell
├── README.md
├── db
│   └── data
├── docker
│   ├── database
│   ├── language
│   └── middleware
├── docker-compose.elixir.yml
├── docker-compose.php.yml
├── docker-compose.yml
├── env-example
└── workspace
    ├── elixir
    ├── php
    └── ruby
```



## Influenced by 
- [laradock](https://github.com/laradock/laradock/)
- [mastodon](https://github.com/tootsuite/mastodon)


## Author

[hironeko](https://twitter.com/hiro_n3k0)