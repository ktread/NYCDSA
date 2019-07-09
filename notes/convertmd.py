import os
import glob
import sys
import re

import io_handler as io

def main():
  arguments = sys.argv

  notes_dir = '/Users/ktread/NYCDSA/notes/notes'
  output_dir = '/Users/ktread/NYCDSA/notes/lecture_notes'

  current_dir = os.getcwd()

  files = glob.glob('%s/*.cson' % notes_dir)

  for i, file in enumerate(files):
    file_data = io.open_file(file)
    title_start = file_data.find('title: ')+8
    title_end = file_data.find("\"",file_data.find('title: ')+8)
    title = file_data[title_start:title_end]
    regex = r"(content: '''\n*)(.*\n)(''')"
    matches = re.finditer(regex, file_data, re.DOTALL | re.MULTILINE)

    for match in matches:
      content = match.groups()[1]
      io.write_to_file(output_dir, file, content)
      name_start = file.find('/notes/notes/')+13
      old_file_name = output_dir + '/' + file[name_start:69] + '.md'
      new_file_name = output_dir + '/' + title + '.md'
      os.rename(old_file_name,new_file_name)
  print('All found files were processed.')

if __name__ == '__main__':
  main()