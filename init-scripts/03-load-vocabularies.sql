-- First truncate all vocabulary tables
TRUNCATE omopcdm.CONCEPT;
TRUNCATE omopcdm.CONCEPT_RELATIONSHIP;
TRUNCATE omopcdm.CONCEPT_ANCESTOR;
TRUNCATE omopcdm.CONCEPT_SYNONYM;
TRUNCATE omopcdm.RELATIONSHIP;
TRUNCATE omopcdm.CONCEPT_CLASS;
TRUNCATE omopcdm.DOMAIN;
TRUNCATE omopcdm.VOCABULARY;
TRUNCATE omopcdm.DRUG_STRENGTH;

-- Then load data from CSV files
COPY omopcdm.CONCEPT
FROM '/vocabularies/CONCEPT.csv'
WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

COPY omopcdm.CONCEPT_RELATIONSHIP
FROM '/vocabularies/CONCEPT_RELATIONSHIP.csv'
WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

COPY omopcdm.CONCEPT_ANCESTOR
FROM '/vocabularies/CONCEPT_ANCESTOR.csv'
WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

COPY omopcdm.CONCEPT_SYNONYM
FROM '/vocabularies/CONCEPT_SYNONYM.csv'
WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

COPY omopcdm.VOCABULARY
FROM '/vocabularies/VOCABULARY.csv'
WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

COPY omopcdm.RELATIONSHIP
FROM '/vocabularies/RELATIONSHIP.csv'
WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

COPY omopcdm.CONCEPT_CLASS
FROM '/vocabularies/CONCEPT_CLASS.csv'
WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

COPY omopcdm.DOMAIN
FROM '/vocabularies/DOMAIN.csv'
WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

COPY omopcdm.DRUG_STRENGTH
FROM '/vocabularies/DRUG_STRENGTH.csv'
WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';