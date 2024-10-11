CREATE TABLE lung_cancer_predictors (
    PatientID VARCHAR(30) PRIMARY KEY NOT NULL,
    diagnosis_age INT NOT NULL,
    fraction_genome_altered FLOAT NOT NULL,
    mutation_count FLOAT NOT NULL,
    survival_status INT NOT NULL,
    tmb FLOAT NOT NULL,
    cancer_type INT NOT NULL,
    prior_diagnosis INT NOT NULL,
    smoking_history FLOAT NOT NULL,
    sex INT NOT NULL,
    ppy_value FLOAT NOT NULL
);

CREATE TABLE us_incidence (
    area VARCHAR(20) NOT NULL,
    state_fips INT NOT NULL PRIMARY KEY,
    age_rate FLOAT NOT NULL,
    lower_ci FLOAT NOT NULL,
    upper_ci FLOAT NOT NULL,
    count INT NOT NULL
);

CREATE TABLE lung_cancer_pop_by_state (
    state_id INT NOT NULL PRIMARY KEY,
    cancer_count INT NOT NULL,
    pop INT NOT NULL,
    smoking_pcg FLOAT NOT NULL
)

SELECT * FROM lung_cancer_predictors;
SELECT * FROM us_incidence;
SELECT * from lung_cancer_pop_by_state;