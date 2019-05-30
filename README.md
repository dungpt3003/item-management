## Decommission Items Management

### 1. Assumptions:
  - You have `python` installed in your machine
  - Your 8080 port is free.
  - You run the application on Linux-based operating system.
  - The schema and sample provided in `sql/init.sql` is in correct format.

### 2. Installation:

```
  pip install --requirements.txt
```

### 3. Usage:
To start the application:
```
  Go to project folder
  python server.py
```

To show the 'recycling' items:
```
  Go to http://localhost:8080/items/recycling
```
### 4. User-centred design:
  The design is provided in the `design.pdf` file.

### 5. Technology to integrate backend and frontend.
  For backend service, we are using Bottle service, it allow us to serve content in many different formats. For frontend side, we can use ReactJS and communicate with backend via RestfulAPI. 
