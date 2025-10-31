CREATE TABLE usuarios (
  id SERIAL PRIMARY KEY,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  registros JSONB DEFAULT '{}',
  config_salario JSONB DEFAULT '{"valorHoraAula":"50.00","valorHoraExtra":"50","descontos":[]}',
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL
);