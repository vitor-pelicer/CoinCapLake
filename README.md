
# CoinCapLake🪙
## CoinCap API ingestion

The project focuses on extracting data from CoinCap's public API, transforming the data, and storing it in a data lake and a Postgres database.

The project is powered by Docker, which is required to run it. And to check the updates made to the database, it is recommended to use PgAdmin.

If you have any questions about the API, the official documentation is at https://docs.coincap.io/


## Deploy ⚡

To run the project, you need to clone the repository

```bash
  git clone https://github.com/vitor-pelicer/CoinCapLake
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
  docker compose up
```

Open jupyter interface at http://localhost:8888/

Open the notebook "coincap_ingestion.ipynb" and run the code cells
