# QA Portfolio

A portfolio of manual and automated QA work, created to demonstrate practical testing skills for Manual QA / QA Engineer roles.

## Skills

- Manual testing
- Functional, regression and smoke testing
- Web testing
- iOS and Android testing
- API testing with Postman and Swagger
- Chrome DevTools
- Charles Proxy
- SQL
- Jira and Confluence
- Git
- Basic test automation with Playwright and TypeScript

## Repository Contents

- [`manual-testing/`](manual-testing/) — manual testing examples: test cases, checklists and bug reports
- [`api-testing/`](api-testing/) — API testing examples
- [`sql/`](sql/) — SQL queries
- [`tests/`](tests/), [`pages/`](pages/), [`test-data/`](test-data/) — Playwright + TypeScript UI automation

## Automation

The current automation project demonstrates:

- Page Object Model
- Positive and negative login scenarios
- Test data separated from test logic
- Cross-browser testing with Chromium, Firefox and WebKit

### Running the tests

```bash
npm install
npx playwright install
npx playwright test
npx playwright show-report
```
