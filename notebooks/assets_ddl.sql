CREATE TABLE IF NOT EXISTS "Assets" (
    "id" VARCHAR(100) NOT NULL,
    "rank" INT NOT NULL,
    "symbol" VARCHAR(100) NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "supply" FLOAT,
    "maxSupply" FLOAT,
    "marketCapUsd" FLOAT,
    "volumeUsd24Hr" FLOAT,
    "priceUsd" FLOAT,
    "extracted" TIMESTAMP WITH TIME ZONE NOT NULL,
    PRIMARY KEY ("id", "extracted")
);