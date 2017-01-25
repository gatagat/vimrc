#!/usr/bin/env python

from __future__ import print_function, absolute_import

import logging
import os
import sys
import tempfile
import time


def setup_log(level=logging.WARNING, basename=None):
    """
    Setup logging to stderr.

    :Parameters:
    - level: logging level
    """
    logging.basicConfig()
    log = logging.getLogger()

    log.handlers = []
    formatter = logging.Formatter(
            fmt='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
            datefmt='%Y.%m.%d %H:%M:%S'
        )

    stderr_handler = logging.StreamHandler(stream=sys.stderr)
    stderr_handler.setFormatter(formatter)
    log.addHandler(stderr_handler)

    if basename is None:
        basename = os.path.basename(__file__)
    filename = os.path.join(
            tempfile.gettempdir(),
            ('%s-' % basename) + time.strftime("%Y%m%d%H%M%s") + '.log')
    file_handler = logging.FileHandler(filename)
    file_handler.setFormatter(formatter)
    log.addHandler(file_handler)

    log.setLevel(level)

    log = logging.getLogger(basename)
    log.info('Starting logger for %s', os.path.abspath(__file__))
    return log


if __name__ == '__main__':
    import argparse

    log = setup_log(logging.DEBUG)

    parser = argparse.ArgumentParser(description='Program.')
    parser.add_argument('-f', '--flag', default=None, help='Flag.')
    parser.add_argument('input', help='Input.')
    parser.add_argument('output', help='Output.')
    args = parser.parse_args()
    in_filename = args.input
    out_filename = args.output
    flag = args.flag
