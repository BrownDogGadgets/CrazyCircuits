#!/usr/bin/python
#
# Run this script to create a new blank module 
# or circuit kit project in a new subfolder
# from the directory where you run it.
#
# It will create a proj.json, README.md, and
# .pro, .kicad_pcb, .sch files, and fp-lib-table
# files that are ready to go. 

import os,json,subprocess,datetime

projname = raw_input("folder path name: ")
title = raw_input("title: ")
version = raw_input("version: ")

d = raw_input("ck or mod: ")

if 'ck' in d:
  description = 'A Lego-compatible Rewire Circuit Kit'
elif 'mod' in d:
  description = 'A standalone Lego-compatible Rewire module'
else:
  description = 'A Rewire Circuit'

email = 'help@browndoggadgets.com'
company = 'Brown Dog Gadgets'
website = 'http://browndoggadgets.com/'
license = 'All rights reserved.'
template = 'rewire'
now = datetime.datetime.now()
date_create = now.strftime('%B %d, %Y')
date_update = ''

dirLib = '/home/wicker/proj/Rewire-Circuits/Development/Library/'
dirTemplates = '/home/wicker/proj/Rewire-Circuits/Development/Template/'

data = {'projname':projname,
        'title':title,
        'version':version,
        'description':description,
        'company':company,
        'email':email,
        'website':website,
        'license':license,
        'template':template,
        'date_create':date_create, 
        'date_update':date_update}

if not os.path.exists(projname):
        os.makedirs(projname)

def create_README():

  filename=os.path.join(data['projname'],'README.md')

  if os.path.exists(filename) is True:
    s = raw_input("README.md exists. Do you want to overwrite it? Y/N: ")
    if 'Y' in s or 'y' in s:
      print "great, we'll overwrite."
    else:
      print "okay, closing program."
      exit()
   
  with open(filename,'w') as o:
    o.write('# '+title+' v'+version+'\n')
    o.write(description+'\n\n')
    o.write('## Introduction\n\n')
    o.write('Intro text.\n\n')
    o.write('<!--- start bom --->\n\n')
    o.write('<!--- end bom --->\n\n')
    o.write('![Assembly Diagram](assembly.png)\n\n')
    o.write('![Gerber Preview](preview.png)\n\n')

def create_proj_json():

  filename=os.path.join(data['projname'],'proj.json')
  
  if os.path.exists(filename) is True:
    s = raw_input("proj.json exists. Do you want to overwrite it? Y/N: ")
    if 'Y' in s or 'y' in s:
      print "great, we'll overwrite."
    else:
      print "okay, closing program."
      exit()

  with open(filename, 'w') as outfile:
      json.dump(data, outfile, indent=4, sort_keys=True, separators=(',', ':'))

def create_KiCad_project():

  print "\ncreating KiCad Project from template", data['template']

  templatesrc = dirTemplates+data['template']+'/'+data['template']

  newpath = os.path.join(data['projname'],data['projname'])
  subprocess.call(['cp',templatesrc+'.kicad_pcb',newpath+'.kicad_pcb'])
  subprocess.call(['cp',templatesrc+'.pro',newpath+'.pro'])
  subprocess.call(['cp',templatesrc+'.sch',newpath+'.sch'])
  subprocess.call(['cp',dirTemplates+data['template']+'/fp-lib-table',data['projname']+'/fp-lib-table'])

  # replace entire title block of .kicad_pcb file 

  f = newpath+'.kicad_pcb'
  f_temp = []
  title_flag = False

  with open(f,'r') as fixfile:
    for line in fixfile:

      if '  (title_block' in line:
        title_flag = True
      if title_flag is True:
        if '  )' in line:
          title_flag = False
          
          f_temp.append('  (title_block\n')
          f_temp.append('    (title "'+title+'")\n')
          f_temp.append('    (date "'+date_create+'")\n')
          f_temp.append('    (rev "'+version+'")\n')
          f_temp.append('    (company "'+license+'")\n')
          f_temp.append('    (comment 1 "'+email+'")\n')
          f_temp.append('    (comment 2 "'+website+'")\n')
          f_temp.append('    (comment 3 "'+company+'")\n')
          f_temp.append('  )\n')
          
      else:
        f_temp.append(line)

  with open(f,'w') as fixfile:
    for line in f_temp:
      fixfile.write(line)

  # replace entire title block of .sch file

  f = newpath+'.sch'
  f_temp = []
  title_flag = False

  with open(f,'r') as fixfile:
    for line in fixfile:

      if 'Title ""' in line:
        title_flag = True
      if title_flag is True:
        if '$EndDescr' in line:
          title_flag = False
          
          f_temp.append('Title "'+title+'"\n')
          f_temp.append('Date "'+date_create+'"\n')
          f_temp.append('Rev"'+version+'"\n')
          f_temp.append('Comp "'+license+'")\n')
          f_temp.append('Comment1 "'+email+'")\n')
          f_temp.append('Comment2 "'+website+'")\n')
          f_temp.append('Comment3 "'+company+'")\n')
          f_temp.append('Comment4 ""\n')
          f_temp.append('$EndDescr\n')
      else:
        f_temp.append(line)

  with open(f,'w') as fixfile:
    for line in f_temp:
      fixfile.write(line)


if __name__ == '__main__':

  create_proj_json()

  create_README()

  create_KiCad_project()
