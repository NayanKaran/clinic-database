CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    name text NOT NULL,
    date_of_birth date NOT NULL
);


CREATE TABLE medical_histories(
    id SERIAL PRIMARY KEY,
    patient_id integer NOT NULL REFERENCES patients(id),
    admitted_at timestamp NOT NULL,
    status varchar(50) NOT NULL
);
