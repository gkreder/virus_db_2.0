import sys
import os
scripts_dir = os.getcwd()
import dataset

os.chdir('../data/nr/')
def grab_word(element, line, top = False):
	if element.find('>') != element.rfind('>'):
		print('''***Warning: found multiple '>' characters in this element...''' +
		'''\n ELEMENT: ''' + element)
		sys.stdout.flush() 
	first_space = element.find(' ')
	protein_name = element[0 : first_space]
	if '>' in protein_name:
		protein_name = protein_name.replace('>', '')
	if element.rfind('[') > element.find(']'):
		species_start = int(element.rfind('[') + 1)
		species_end = int(element.rfind(']'))
	else:
		species_start = int(element.find('[') + 1)
		species_end = int(element.rfind(']'))
	species = element[species_start : species_end]
	if '.' not in protein_name:
		print('''WARNING: Theres no '.' character in this protein name...is this right?''' +
		'''\n SPECIES: ''' + species + 
		'''\n ELEMENT: ''' + element) 
#		'''\n LINE: ''' + line.decode('utf-8')) 
		sys.stdout.flush()
	info = element[first_space : species_start - 1]
	if len(info) > 0:
		if info[0] == ' ':
			info = info[1 : ]
	if len(info) > 0:
		if info[-1] == ' ':
			info = info[ : -1]
	if element.find('[') != element.rfind('['):
		msg = '''Error: found multiple '[' characters in this element...''' +\
		'''\n ELEMENT: ''' + element +\
		'''\n USING SPECIES TERM - ''' + species
		print(msg.replace('Error', 'Warning'))
		sys.stdout.flush()


	return(protein_name, species, info)
	

if os.path.exists('nr.sqlite'):
	print('Found old nr.sqlite file...removing')
	sys.stdout.flush()
	os.system('rm nr.sqlite')
db = dataset.connect('sqlite:///nr.sqlite')
table = db['proteins']
num_lines = 0
#with open('nr', 'rb') as f:
#	print('Counting lines...')
#	sys.stdout.flush()
#	for line in f:
#		num_lines += 1
with open('nr', 'rb') as f:
	chunk = []
	for line_counter, line in enumerate(f):
#		print(str(line_counter + 1) + ' of ' + num_lines)
		print(str(line_counter + 1))
		sys.stdout.flush() 		
		elements_bytes = line.split(b'\x01')
		elements = [e.decode('utf-8') for e in elements_bytes]
		top_element = elements[0]
		elements = elements[1 : ]
		if top_element[0] != '>':
			row['sequence'] = row['sequence'] + top_element.strip()
			if len(elements) > 0:
				sys.exit('''There are extra elements in this sequence row...''' + 
				'''\n TOP_ELEMENT: ''' + top_element + 
				'''\n LINE: ''' + line)
		else:
			if len(chunk) == 1000:
				table.insert_many(chunk)
				chunk = []
			p_main, species_main, info_main = grab_word(top_element, line, top = True)
			row = dict(protein_id=p_main,species=species_main,info=info_main, \
				p_aliases=[],\
				species_aliases=[],\
				info_aliases=[],\
				sequence = '')
			for i, e in enumerate(elements):
				alias_key = 'a' + str(i)
				p, species, info = grab_word(e, line)	
				# row['species_' + alias_key] = species
				row['p_aliases'].append(p.replace(',', ''))
				# row['protein_id_' + alias_key] = p
				row['species_aliases'].append(species.replace(',', ''))
				# row['info_' + alias_key] = info
				row['info_aliases'].append(info.replace(',', ''))
			row['p_aliases'] = ','.join(row['p_aliases']) 
			row['species_aliases'] = ','.join(row['species_aliases']) 
			row['info_aliases'] = ','.join(row['info_aliases']) 
			chunk.append(row)
	if len(chunk) > 0:
		print(len(chunk))
		table.insert_many(chunk)
		chunk = []	

