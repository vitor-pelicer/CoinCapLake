
# CoinCapLake🪙
## CoinCap API ingestion

The project focuses on extracting data from CoinCap's public API, transforming the data, and storing it in a data lake and a Postgres database.

The tables created in the database are "Assets", "Exchanges" and "Markets".

"Assets" is a table that contains information about cryptocurrencies

"Exchanges" is a table that contains information about brokers that trade cryptocurrencies present in Assets

"Markets" is a table that contains information about brokers' trades, in the exchange between two assets.

In this way, the Markets table references an exchange and 2 assets. And the code structure is made to guarantee integrity

The project is powered by Docker, which is required to run it. And to check the updates made to the database, it is recommended to use PgAdmin.

If you have any questions about the API, the official documentation is at https://docs.coincap.io/


## Deploy ⚡

To run the project, you need to clone the repository

```bash
  git clone https://github.com/vitor-pelicer/CoinCapLake
```

go to the cloned directory

```bash
  cd CoinCapLake
```

Create a ".env" file for your repository

Add your credentials to the environment variables, I will leave a template for you to follow.

If you don't have an API key, create one at https://coincap.io/api-key

```bash
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_DB=lake
DB_URI=postgres
DB_PORT=5432
API_URI=https://api.coincap.io/v2
API_KEY=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
```


Start containers with docker

```bash
  docker-compose -f ./dockercompose.yml up
```

Open jupyter interface at http://localhost:8888/

Open the notebook "coincap_ingestion.ipynb" and run the code cells

If there is an error, check if the environment variables in the ".env" file are active. If not, try rewriting the file, stopping the containers and running docker-compose up again.
