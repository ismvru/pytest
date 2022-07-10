#!/usr/bin/env python3
from dataclasses import dataclass


## Raises flake8 alert E266
@dataclass
class wrongClass:
    WrongHttpBind="0.0.0.0"  # this raises flake8 alert E225 and bandit B104


def test_sonething():
    assert wrongClass.WrongHttpBind == "0.0.0.0"  # nosec  # Raises bandit B101,B104, ignores nosec, and raises flake8 E501 because this comment is too long
