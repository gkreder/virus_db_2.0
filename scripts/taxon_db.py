import sys
import os
import dataset
top_dir = os.getcwd()
os.chdir('../data')
data_dir = os.getcwd()
os.chdir('./isolate_viruses/')
data_path = os.path.dirname(os.getcwd())
with open('taxon.tsv', 'r') as f:
	lines = [x.strip().split('\t') for x in f.readlines()]
	header = lines[0]
	lines = lines[1 : ]
db_name = 'sqlite:///' + data_path + '/db/taxon_db.sqlite'
if os.path.exists(db_name.replace('sqlite:///', '')):
	os.system('rm ' + db_name.replace('sqlite:///', ''))
db = dataset.connect(db_name)
table = db['proteins']
line_count = 0
for l in lines:
	p = {}
	for i, att_val in enumerate(l):
		att = header[i]	
		p[att] = att_val
	line_count += 1
	table.insert(p)
	print(str(line_count) + ' of ' + str(len(lines)))
#table.insert(dict(name='p1',age='42'))


