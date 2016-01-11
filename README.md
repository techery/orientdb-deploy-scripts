# orientdb-deploy-scripts
Bash scripts for deploy automation

## Usage

* create and edit .env configuration file from .env.sample

Set database host and credentials

Set path to schema.json and console.sh scripts

* script ```./bin/orientdb-import-schema```

Imports schema specified by path in .env

* script ```./bin/orientdb-migrate path/to/dir```

Executes all *.sql scripts located in specified dir

**Example** ```./bin/orientdb-migrate database/migrations/11-01-2016/comments-as-edge/```