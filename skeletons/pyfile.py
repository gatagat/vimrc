from __future__ import (
        division, print_function, unicode_literals, absolute_import)

import logging


def function(arg):
    """
    Looks at the arg, maybe...
    """
    log = logging.getLogger('function')
    pass


class Class(object):
    """
    Class is classy.
    """

    def __init__(self, arg):
        log = logging.getLogger(type(self).__name__)
        pass


def test_function():
    pass


def test_class():
    pass
