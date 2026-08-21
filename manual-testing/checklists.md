# Manual Testing Checklists — SauceDemo

Quick-reference checklists used for exploratory and regression passes on [saucedemo.com](https://www.saucedemo.com/).

---

## Login

**Positive**
- [ ] Valid username + valid password logs in successfully
- [ ] User is redirected to the Products page after login
- [ ] Session persists on page refresh while logged in

**Negative**
- [ ] Invalid password shows an appropriate error message
- [ ] Non-existent username shows an appropriate error message
- [ ] Locked-out user is blocked with a clear error message
- [ ] Empty username and/or password shows a required-field error
- [ ] Login form does not submit with only whitespace entered

**UI**
- [ ] Username and Password fields are clearly labeled
- [ ] Error messages are visible and readable (not clipped/overlapping)
- [ ] Login button is clickable and appropriately styled/disabled where relevant

---

## Product Page

**Positive**
- [ ] All products display with name, image, description and price
- [ ] "Add to cart" adds the correct product and updates the cart badge
- [ ] "Remove" removes the correct product and updates the cart badge
- [ ] Sorting (name A–Z, Z–A, price low–high, high–low) reorders products correctly
- [ ] Clicking a product name/image opens its product detail page

**Negative**
- [ ] Rapidly clicking "Add to cart" does not add duplicate entries for the same product
- [ ] Cart badge does not show incorrect counts after repeated add/remove actions

**UI**
- [ ] Product images load correctly and are not broken/misaligned
- [ ] Prices are displayed in a consistent currency format
- [ ] Layout remains usable at different browser window sizes

---

## Shopping Cart

**Positive**
- [ ] All added products appear in the cart with correct name, price and quantity
- [ ] Cart item count matches the number of products actually added
- [ ] "Continue Shopping" returns to the Products page without losing cart contents
- [ ] "Checkout" proceeds to the Checkout Information page

**Negative**
- [ ] Removing all items from the cart displays an empty cart state (no errors)
- [ ] Cart contents do not duplicate after navigating back and forth

**UI**
- [ ] Cart icon badge is visible and updates immediately on add/remove
- [ ] Product list in the cart is clearly readable with no overlapping text

---

## Checkout

**Positive**
- [ ] Valid First Name, Last Name and Zip/Postal Code proceed to the Overview page
- [ ] Order summary on the Overview page matches items and total from the cart
- [ ] "Finish" completes the order and displays a confirmation message
- [ ] "Cancel" returns the user to the Products page or Cart as expected

**Negative**
- [ ] Empty First Name blocks checkout with a clear error message
- [ ] Empty Last Name blocks checkout with a clear error message
- [ ] Empty Zip/Postal Code blocks checkout with a clear error message
- [ ] Checkout is not possible with an empty cart

**UI**
- [ ] Checkout form fields are clearly labeled
- [ ] Error messages are displayed near the relevant field(s)
- [ ] Order total (subtotal, tax, total) is clearly presented on the Overview page
