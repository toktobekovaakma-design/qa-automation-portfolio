# Manual Test Cases — SauceDemo

Application under test: [saucedemo.com](https://www.saucedemo.com/)
These test cases are portfolio examples demonstrating manual QA test case design.

---

### TC-01: Successful login with valid credentials

- **Preconditions:** User is on the SauceDemo login page. A valid standard user account exists (`standard_user` / `secret_sauce`).
- **Steps:**
  1. Enter a valid username in the Username field.
  2. Enter the correct password in the Password field.
  3. Click the **Login** button.
- **Expected Result:** User is redirected to the Products page (`inventory.html`). Page title displays "Products".
- **Priority:** High

---

### TC-02: Login fails with invalid password

- **Preconditions:** User is on the SauceDemo login page. Username exists but password used is incorrect.
- **Steps:**
  1. Enter a valid username.
  2. Enter an incorrect password.
  3. Click the **Login** button.
- **Expected Result:** Login is rejected. An error message is displayed stating the username and password do not match. User remains on the login page.
- **Priority:** High

---

### TC-03: Login fails for locked out user

- **Preconditions:** User is on the SauceDemo login page. Account used (`locked_out_user`) is in a locked state.
- **Steps:**
  1. Enter the locked-out username.
  2. Enter the correct password for that account.
  3. Click the **Login** button.
- **Expected Result:** Login is rejected. An error message is displayed indicating the user has been locked out. User remains on the login page.
- **Priority:** High

---

### TC-04: Add product to cart

- **Preconditions:** User is logged in and on the Products page.
- **Steps:**
  1. Select any product from the product list.
  2. Click **Add to cart** for that product.
- **Expected Result:** Cart icon badge updates to show 1 item. Button label for the product changes to **Remove**.
- **Priority:** High

---

### TC-05: Remove product from cart

- **Preconditions:** User is logged in and has at least one product added to the cart.
- **Steps:**
  1. On the Products page (or Cart page), locate a product currently marked as added to cart.
  2. Click **Remove** for that product.
- **Expected Result:** Cart icon badge decreases by 1 (or disappears if cart becomes empty). Button label reverts to **Add to cart**. Product no longer appears in the cart.
- **Priority:** Medium

---

### TC-06: Cart contents display correctly

- **Preconditions:** User is logged in and has added multiple products to the cart.
- **Steps:**
  1. Add 2–3 different products to the cart from the Products page.
  2. Click the cart icon to open the Cart page.
- **Expected Result:** All added products are listed with correct name, price and quantity. Cart badge count matches the number of items shown.
- **Priority:** High

---

### TC-07: Complete checkout process with valid data

- **Preconditions:** User is logged in and has at least one product in the cart.
- **Steps:**
  1. Open the Cart page and click **Checkout**.
  2. Enter valid First Name, Last Name and Zip/Postal Code.
  3. Click **Continue**.
  4. Review the order summary on the Overview page.
  5. Click **Finish**.
- **Expected Result:** Order completes successfully. A confirmation page is displayed with a "Thank you for your order" message.
- **Priority:** High

---

### TC-08: Required field validation at checkout

- **Preconditions:** User is logged in, has at least one product in the cart, and is on the Checkout Information page.
- **Steps:**
  1. Leave the First Name field empty.
  2. Fill in Last Name and Zip/Postal Code.
  3. Click **Continue**.
- **Expected Result:** Checkout is blocked. An error message is displayed indicating First Name is required. User remains on the Checkout Information page.
- **Priority:** Medium

---

### TC-09: Sort products by price (low to high)

- **Preconditions:** User is logged in and on the Products page with multiple products visible.
- **Steps:**
  1. Open the sort dropdown.
  2. Select "Price (low to high)".
- **Expected Result:** Product list re-orders so items are displayed in ascending price order. Product names and prices remain correctly paired.
- **Priority:** Low

---

### TC-10: Logout from the application

- **Preconditions:** User is logged in and on any page within the application.
- **Steps:**
  1. Click the hamburger menu icon (top left).
  2. Click **Logout**.
- **Expected Result:** User is redirected to the login page. Attempting to navigate back to the Products page without logging in again does not grant access.
- **Priority:** Medium
