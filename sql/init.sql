CREATE TABLE IF NOT EXISTS items (
  id INTEGER PRIMARY KEY,
  item TEXT,
  reuse_potential TEXT,
  reuse_demand INTEGER,
  classification TEXT
);
INSERT INTO items (item, reuse_potential, reuse_demand, classification)
VALUES ('Bunkering hose', 'High', 1, 'recycling'),
('TV', 'Medium', 1, 'recycling'),
('Table', 'Medium', 1, 'recycling'),
('Fire pump', 'Low', 0, 'wasted'),
('Chemical injection skid', 'Low', 0, 'wasted'),
('Diesel tank', 'Low', 0, 'wasted'),
('Fridge','High', 1, 'recycling'),
('Conferencing equipment', 'High', 1, 'recycling'),
('Pool Table','Medium', 1, 'recycling'),
('Smoke Detectors', 'Medium', 1, 'recycling'),
('Fluorescent tubes', 'Low', 1, 'recycling');
