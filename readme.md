# Robot Framework Automation for Beaufort Fairmont Inventory System

This repository contains the Robot Framework automation tests for the **Beaufort Fairmont Inventory System**. These tests are designed to validate the functionality of various features on the system at [Beaufort Fairmont Inventory](http://inv.beaufortfairmont.com/#/).

## Table of Contents

- [Project Setup](#project-setup)
- [Test Case Structure](#test-case-structure)
- [Running the Tests](#running-the-tests)
- [Directory Structure](#directory-structure)
- [Contributing](#contributing)
- [License](#license)

## Project Setup

To get started with this project, you need to set up the environment and dependencies. Follow these steps:

1. **Clone the repository**:

    ```bash
    git clone https://github.com/your-username/robotframework-beaufort.git
    cd robotframework-beaufort
    ```

2. **Install Python**:

    Ensure that Python 3.7+ is installed. You can download Python from [python.org](https://www.python.org/).

3. **Install Robot Framework and Dependencies**:

    Install the required packages using `pip`:

    ```bash
    pip install -r requirements.txt
    ```

    The `requirements.txt` file includes dependencies such as Robot Framework, SeleniumLibrary, and other libraries used in the tests.

## Test Case Structure

The test cases are organized as follows:

- **`tests/`**: Contains the main Robot Framework test suite files.
- **`resources/`**: Contains reusable keywords and variables for the automation tests.
- **`page.py`**: Python file storing locators for the page elements.
- **`tasks.resource`**: Robot Framework file where the main tasks and keywords are defined.

### Key Files:

- **`tests/`**: Main folder for storing your test cases.
  - **`login_tests.robot`**: Test cases related to user login.
  - **`form_tests.robot`**: Test cases related to form submissions.

- **`resources/`**: Common resources for the tests.
  - **`keywords.robot`**: Custom Robot keywords.
  - **`variables.robot`**: Shared variables used across multiple test cases.

## Running the Tests

To run the tests, follow these steps:

1. **Run all tests**:

    ```bash
    robot tests/
    ```

    This command will execute all tests under the `tests/` directory.

2. **Run specific test cases**:

    If you want to run a specific test case, use the following command:

    ```bash
    robot tests/login_tests.robot
    ```

3. **View the Results**:

    After the tests run, you will find the results in the `output/` folder. The following files are generated:
    - `output.xml`: Raw test execution data.
    - `report.html`: A detailed test report.
    - `log.html`: A detailed log file of the test execution.

## Directory Structure

