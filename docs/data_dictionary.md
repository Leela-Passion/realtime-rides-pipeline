# Data dictionary (summary)

See `models/schema.yml` for column-level descriptions. Key entities:

## customers
- customer_id: integer (PK)
- first_name, last_name: text
- email: text
- phone_number: normalized digits
- city: text
- signup_date: date
- last_updated_timestamp: timestamp

## vehicles
- vehicle_id: integer (PK)
- license_plate, model, make
- year: integer
- vehicle_type: text
- last_updated_timestamp: timestamp

... (drivers, locations, payments, trips)
