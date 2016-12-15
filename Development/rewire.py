#!/usr/bin/python

name = 'LegoLED-Button-Battery'
version = '1.3'

filename='README.md'

with open(filename,'w') as o:
  o.write('---\n')
  o.write('title: '+name+'\n')
  o.write('version: '+version+'\n')
  o.write('---\n')
  o.write('Intro text.\n')
  o.write('&nbsp;\n')
  o.write('<!--- start bom --->\n')
  o.write('&nbsp;\n')
  o.write('<!--- end bom --->\n')
  o.write('&nbsp;\n')
  o.write('![Assembly Diagram](assembly.png){width=60%}\n')
  o.write('&nbsp;\n')
  o.write('![Gerber Preview](preview.png)\n')

