#!/usr/bin/env python3

import os
import unittest


class MyTests(unittest.TestCase):
    def test_that_it_passes(self):
        self.assertEqual(0, 0)

    @unittest.skip("not finished yet")
    def test_that_it_skips(self):
        raise Exception("Does not happen")

    def _read_good_output(self):
        txt = None
        with open('./fizz-buzz.txt', 'r') as f:
            txt = f.read()
        self._want_output = txt

    def _my_test_source(self, spec):
        src = './' + spec['src']
        for exe in spec['exes']:
            cmd = ' '.join(exe + [src])
            output = os.popen(cmd).read()
            self.assertEqual(
                output, self._want_output,
                'The command "%s" yields good output' % (cmd))

    def test_output(self):
        self._read_good_output()
        self.assertEqual(1, 1)
        self._my_test_source({'src': 'fizz-buzz.awk',
                              'exes': [['gawk', '-f'], ['mawk', '-f']]})
        self._my_test_source({'src': 'fizz-buzz.js', 'exes': [['node']]})
        self._my_test_source({'src': 'fizz-buzz.pl', 'exes': [['perl']]})
        self._my_test_source({'src': 'fizz-buzz.py',
                              'exes': [['python2'], ['python3']]})


if __name__ == '__main__':
    from pycotap import TAPTestRunner
    suite = unittest.TestLoader().loadTestsFromTestCase(MyTests)
    TAPTestRunner().run(suite)
