# Sample Bug Reports — SauceDemo

> ⚠️ **SAMPLE bug reports for portfolio demonstration purposes only.**
> These reports illustrate bug reporting format and structure. They are **not** claims of actual defects found on saucedemo.com or the result of a real testing engagement.

---

## BUG-01 (Sample): Cart badge count does not update after removing item from Cart page

- **Environment:** Chrome (latest), saucedemo.com, desktop
- **Preconditions:** User is logged in with 2 products already added to the cart
- **Steps to Reproduce:**
  1. Log in and add 2 products to the cart from the Products page.
  2. Open the Cart page via the cart icon.
  3. Click **Remove** on one of the listed products.
- **Actual Result:** Product is removed from the list, but the cart icon badge still displays the original count until the page is manually refreshed.
- **Expected Result:** Cart icon badge should update immediately to reflect the new item count after removal.
- **Severity:** Medium
- **Priority:** Medium

---

## BUG-02 (Sample): Checkout accepts whitespace-only input as a valid required field

- **Environment:** Chrome (latest), saucedemo.com, desktop
- **Preconditions:** User is logged in with at least one product in the cart, on the Checkout Information page
- **Steps to Reproduce:**
  1. Enter a single space character into the First Name field.
  2. Fill Last Name and Zip/Postal Code with valid values.
  3. Click **Continue**.
- **Actual Result:** Form accepts the whitespace-only First Name and proceeds to the Overview page.
- **Expected Result:** Form should treat a whitespace-only entry as empty and display a required-field validation error.
- **Severity:** Low
- **Priority:** Low

---

## BUG-03 (Sample): Product sort order resets unexpectedly after adding an item to the cart

- **Environment:** Firefox (latest), saucedemo.com, desktop
- **Preconditions:** User is logged in and on the Products page
- **Steps to Reproduce:**
  1. Open the sort dropdown and select "Price (high to low)".
  2. Confirm the product list re-orders correctly.
  3. Click **Add to cart** on any product.
- **Actual Result:** Product list reverts to the default sort order ("Name A to Z") after the add-to-cart action.
- **Expected Result:** Selected sort order should persist after adding a product to the cart.
- **Severity:** Low
- **Priority:** Medium
