CREATE TABLE IF NOT EXISTS "Markets" (
    "exchangeId" VARCHAR(100) NOT NULL,
    "baseId" VARCHAR(100) NOT NULL,
    "quoteId" VARCHAR(100) NOT NULL,
    "priceUsd" FLOAT,
    "updated" TIMESTAMP WITH TIME ZONE,
    "extracted" TIMESTAMP WITH TIME ZONE NOT NULL,
    PRIMARY KEY ("exchangeId", "baseId", "quoteId", "extracted")
);