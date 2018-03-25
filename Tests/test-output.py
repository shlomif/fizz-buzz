#!/usr/bin/env python3

import os
import unittest


class MyTests(unittest.TestCase):
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

        def t(case):
            return self._my_test_source(case)
        t({'src': 'fizz-buzz.awk', 'exes': [['gawk', '-f'], ['mawk', '-f']]})
        t({'src': 'fizz-buzz.bash', 'exes': [['bash']]})
        t({'src': 'fizz-buzz.cmake', 'exes': [['cmake', '-P', '2>&1']]})
        t({'src': 'fizz-buzz.go', 'exes': [['go', 'run']]})
        t({'src': 'fizz-buzz.hs', 'exes': [['runhugs']]})
        t({'src': 'fizz-buzz.lisp', 'exes': [['clisp']]})
        t({'src': 'fizz-buzz.lua', 'exes': [['lua']]})
        t({'src': 'fizz-buzz.js', 'exes': [['node']]})
        t({'src': 'fizz-buzz.php', 'exes': [['php']]})
        t({'src': 'fizz-buzz.pl', 'exes': [['perl']]})
        t({'src': 'fizz-buzz.py', 'exes': [['python2'], ['python3']]})
        t({'src': 'fizz-buzz.rb', 'exes': [['ruby']]})
        t({'src': 'fizz-buzz.sh', 'exes': [['bash'], ['sh'], ['zsh']]})


if __name__ == '__main__':
    from pycotap import TAPTestRunner
    suite = unittest.TestLoader().loadTestsFromTestCase(MyTests)
    TAPTestRunner().run(suite)
