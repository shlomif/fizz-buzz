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

        def d(src, *exes):
            return t(
                {
                    'src': src,
                    'exes': [
                        [x] if isinstance(x, str) else x
                        for x in exes
                    ]
                }
            )

        # d('fizz_buzz.nim', ['nim', '-r', 'c'])
        d('fizz-buzz.awk', ['gawk', '-f'], ['mawk', '-f'])
        d('fizz-buzz.bash', 'bash')
        d('fizz-buzz.cmake', ['cmake', '-P', '2>&1'])
        # d('fizz-buzz.csh', 'csh', 'tcsh')
        d('fizz-buzz.go', ['go', 'run'])
        # t({'src': 'fizz-buzz.gprolog.prolog', 'exes':
        #    [['gprolog', '--consult-file']]})
        d('fizz-buzz.hs', 'runhugs')
        d('fizz-buzz.lisp', 'clisp')
        d('fizz-buzz.lua', 'lua')
        d('fizz-buzz.jl', 'julia')
        d('fizz-buzz.js', 'node')
        d('fizz-buzz.ocaml', 'ocaml')
        d('fizz-buzz.php', 'php')
        d('fizz-buzz.pl', 'perl')
        # d('fizz-buzz.py', 'python2', 'python3')
        d('fizz-buzz.py', 'python3')
        d('fizz-buzz.rb', 'ruby')
        d('fizz-buzz.sh', 'bash', 'sh', 'zsh')
        d('fizz-buzz.tcl', 'tclsh')
        d('fizz-buzz.tt2', 'tpage')


if __name__ == '__main__':
    from pycotap import TAPTestRunner
    suite = unittest.TestLoader().loadTestsFromTestCase(MyTests)
    TAPTestRunner().run(suite)
