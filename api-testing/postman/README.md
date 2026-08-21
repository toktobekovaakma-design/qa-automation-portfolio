# Postman Collection & Environment

This folder is intended to hold the Postman assets for the API test cases documented in [`../README.md`](../README.md):

- A **Postman Collection** (`.json`) implementing the requests and test scripts for each documented API test case (status code, response body and response time assertions).
- A **Postman Environment** (`.json`) defining variables such as `baseUrl`, so the collection can be reused across environments without hardcoded values.

## Adding the files

1. Build and run the requests in Postman, with test scripts covering the assertions described in the API test cases.
2. Export the collection: **Collection → ⋮ → Export** → save as `reqres-api-collection.json` in this folder.
3. Export the environment: **Environment → ⋮ → Export** → save as `reqres-environment.json` in this folder.

## Running the collection

Once the files are added, the collection can be run either:

- In the Postman UI, by importing both the collection and environment files, or
- Via the command line using [Newman](https://www.npmjs.com/package/newman):
  ```bash
  newman run reqres-api-collection.json -e reqres-environment.json
  ```
