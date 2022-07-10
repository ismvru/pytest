# pytest-docker

- [pytest-docker](#pytest-docker)
  - [Usage](#usage)
  - [Configuration](#configuration)

Docker container with:

- pytest
- pytest-cov
- flake8
- bandit

Very usable for testing and linting Python code

Builds always on fresh python:3-slim docker image

## Usage

```bash
docker run -it --rm -v $PWD:/code ismv/pytest:latest
```

## Configuration

| Variable            | Description                                             | Example                                       | Default value                                                              |
| ------------------- | ------------------------------------------------------- | --------------------------------------------- | -------------------------------------------------------------------------- |
| `SKIP_FLAKE`        | If set, Flake8 won't run                                | `SKIP_FLAKE="SomeValue"`                      | Not set                                                                    |
| `FLAKE_EXCLUDE`     | Comma-separated list of Flake8 excluded files/dirs      | `FLAKE_EXCLUDE=".venv,tests/*"`               | `.venv`                                                                    |
| `FLAKE_ARGS`        | Default Flake8 args                                     | `FLAKE_ARGS="-q"`                             | `--isolated --count --extend-exclude ${FLAKE_EXCLUDE}`                     |
| `ADD_FLAKE_ARGS`    | Additional Flake8 args that you may pass to application | `ADD_FLAKE_ARGS="-q"`                         | Not set                                                                    |
| `SKIP_BANDIT`       | If set, Bandit won't run                                | `SKIP_BANDIT="SomeValue"`                     | Not set                                                                    |
| `BANDIT_EXCLUDE`    | Comma-separated list of Bandit excluded files/dirs      | `BANDIT_EXCLUDE="./.venv,./tests/*"`          | `./.venv`                                                                  |
| `BANDIT_ARGS`       | Default Bandit args                                     | `BANDIT_ARGS="-q"`                            | `--verbose --ignore-nosec --recursive -f json --exclude ${BANDIT_EXCLUDE}` |
| `ADD_BANDIT_ARGS`   | Additional Bandit args that you may pass to applicatoin | `ADD_BANDIT_ARGS="-q"`                        | Not set                                                                    |
| `BANDIT_REPORT`     | Path to Bandit report                                   | `BANDIT_REPORT="MyReport.json"`               | `bandit_report.json`                                                       |
| `SKIP_LINT`         | If set, linters won't run                               | `SKIP_LINT="SomeValue"`                       | Not set                                                                    |
| `SKIP_TESTS`        | If set, tests won't run                                 | `SKIP_TESTS="SomeValue"`                      | Not set                                                                    |
| `REQ_FILE`          | Will install python reqs from this file                 | `REQ_FILE="req.txt"`                          | Not set                                                                    |
| `PYTEST_ARGS`       | Default Pytest args                                     | `PYTEST_ARGS="-q"`                            | `-v -o junit_family=xunit1`                                                |
| `ADD_PYTEST_ARGS`   | Additional Pytest args that you may pass to applicatoin | `ADD_PYTEST_ARGS="-q"`                        | Not set                                                                    |
| `PYTEST_COV_REPORT` | Path (and key) to Pytest coverage report                | `PYTEST_COV_REPORT="--junitxml=coverage.xml"` | `--junitxml=test-results/coverage.xml`                                     |
