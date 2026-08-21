# API Testing — reqres.in

This section documents API test case design against [reqres.in](https://reqres.in), a free public REST API built specifically for testing and prototyping purposes.

These are **documented test case designs**, written to demonstrate API test planning and coverage. They describe expected behavior and are intended to be executed (manually via Postman/Swagger, or automated) rather than results already captured — no actual requests have been run to produce the "Expected Result" values below.

Base URL: `https://reqres.in/api`

## Coverage

- CRUD methods: GET, POST, PUT/PATCH, DELETE
- Positive and negative scenarios
- Status code validation
- Response body validation
- Response time validation

---

### API-01: Get list of users (positive)

- **Method:** GET
- **Endpoint:** `/users?page=2`
- **Description:** Verify that a valid, existing page of users can be retrieved.
- **Request Body:** N/A
- **Expected Status Code:** 200
- **Expected Result:** Response body contains a `data` array of user objects, each with `id`, `email`, `first_name`, `last_name`. `page` field in the response equals `2`.

---

### API-02: Get single user that does not exist (negative)

- **Method:** GET
- **Endpoint:** `/users/23`
- **Description:** Verify correct handling when requesting a user ID that does not exist.
- **Request Body:** N/A
- **Expected Status Code:** 404
- **Expected Result:** Response body is empty (`{}`). No user data is returned.

---

### API-03: Register a new user (positive)

- **Method:** POST
- **Endpoint:** `/register`
- **Description:** Verify a user can register successfully when required fields are provided.
- **Request Body:**
  ```json
  {
    "email": "eve.holt@reqres.in",
    "password": "pistol"
  }
  ```
- **Expected Status Code:** 200
- **Expected Result:** Response body contains an `id` and a `token`.

---

### API-04: Register with missing password (negative)

- **Method:** POST
- **Endpoint:** `/register`
- **Description:** Verify registration is rejected when a required field is missing.
- **Request Body:**
  ```json
  {
    "email": "eve.holt@reqres.in"
  }
  ```
- **Expected Status Code:** 400
- **Expected Result:** Response body contains an `error` field with the message `"Missing password"`.

---

### API-05: Create a new user (positive)

- **Method:** POST
- **Endpoint:** `/users`
- **Description:** Verify a new user resource can be created with valid data.
- **Request Body:**
  ```json
  {
    "name": "morpheus",
    "job": "leader"
  }
  ```
- **Expected Status Code:** 201
- **Expected Result:** Response body echoes `name` and `job`, and includes a generated `id` and `createdAt` timestamp.

---

### API-06: Update user with PUT (positive)

- **Method:** PUT
- **Endpoint:** `/users/2`
- **Description:** Verify a full update of an existing user resource.
- **Request Body:**
  ```json
  {
    "name": "morpheus",
    "job": "zion resident"
  }
  ```
- **Expected Status Code:** 200
- **Expected Result:** Response body reflects the updated `name` and `job`, and includes an `updatedAt` timestamp.

---

### API-07: Partially update user with PATCH (positive)

- **Method:** PATCH
- **Endpoint:** `/users/2`
- **Description:** Verify a partial update of an existing user resource.
- **Request Body:**
  ```json
  {
    "job": "zion resident"
  }
  ```
- **Expected Status Code:** 200
- **Expected Result:** Response body reflects the updated `job` field and includes an `updatedAt` timestamp.

---

### API-08: Delete a user (positive)

- **Method:** DELETE
- **Endpoint:** `/users/2`
- **Description:** Verify an existing user resource can be deleted.
- **Request Body:** N/A
- **Expected Status Code:** 204
- **Expected Result:** Response body is empty. No content is returned.

---

### API-09: Successful login (positive)

- **Method:** POST
- **Endpoint:** `/login`
- **Description:** Verify a user can log in successfully with valid credentials.
- **Request Body:**
  ```json
  {
    "email": "eve.holt@reqres.in",
    "password": "cityslicka"
  }
  ```
- **Expected Status Code:** 200
- **Expected Result:** Response body contains a `token` field.

---

### API-10: Login with missing password (negative)

- **Method:** POST
- **Endpoint:** `/login`
- **Description:** Verify login is rejected when the password field is missing.
- **Request Body:**
  ```json
  {
    "email": "eve.holt@reqres.in"
  }
  ```
- **Expected Status Code:** 400
- **Expected Result:** Response body contains an `error` field with the message `"Missing password"`.

---

### API-11: Response time validation on list endpoint

- **Method:** GET
- **Endpoint:** `/users?page=2`
- **Description:** Verify the endpoint responds within an acceptable time threshold for a non-functional/performance check.
- **Request Body:** N/A
- **Expected Status Code:** 200
- **Expected Result:** Response time is under a defined threshold (e.g. < 1000 ms). In Postman, this is validated with a test script assertion (`pm.response.responseTime`).

---

## Validation Types Demonstrated

| Type | Example |
|---|---|
| Status code validation | API-01, API-02, API-04, API-08 |
| Response body validation | API-01, API-03, API-05, API-06, API-09, API-10 |
| Response time validation | API-11 |
| Negative scenario handling | API-02, API-04, API-10 |
