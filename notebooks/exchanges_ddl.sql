CREATE TABLE IF NOT EXISTS "Exchanges" (
    "exchangeId" VARCHAR(100) NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "rank" INT NOT NULL,
    "percentTotalVolume" FLOAT,
    "volumeUsd" FLOAT,
    "exchangeUrl" VARCHAR(200),
    "updated" TIMESTAMP WITH TIME ZONE,
    "extracted" TIMESTAMP WITH TIME ZONE NOT NULL,
    PRIMARY KEY ("exchangeId", "extracted")
);