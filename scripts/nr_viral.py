import sys
import os
import dataset
from Bio import Entrez
start = int(sys.argv[1])
end = int(sys.argv[2])
os.chdir('../data/nr/')
nr_path = os.path.abspath(os.getcwd())
db_path = 'sqlite:///' + nr_path + '/nr.sqlite'
viral_db_path = 'sqlite:///' + nr_path + '/nr_viral.sqlite'
nr_db = dataset.connect(db_path)
viral_db = dataset.connect(viral_db_path)
Entrez.email = 'gkreder@gmail.com'
no_records = 0
one_record = 0
multi_records = 0

for i in range(start, end + 1):
	query = 'SELECT * FROM proteins WHERE ID=' + str(i) + ';'
	results = nr_db.query(query)
	row = [x for x in results]
	row = row[0]
	pid = row['protein_id']
	handle = Entrez.efetch(db='protein', id=pid, retmode='xml')
	records = Entrez.read(handle)
	if len(records) < 1 or ('GBSeq_taxonomy' not in records[0].keys()):
		no_records += 1
	elif len(records) == 1:
		one_record += 1
	else:
		multi_records += 1
	records = [x for x in records]
	record = records[0]
	tax = records[0]['GBSeq_taxonomy'].split('; ')
	domain = tax[0]
	if domain.lower() == 'viruses':
		viral_db['proteins'].insert(row)	
print('No Records: ' + str(no_records))
print('One Record: ' + str(one_record))
print('Multi Records: ' + str(multi_records))

#        query = 'SELECT * FROM proteins ORDER BY id LIMIT 1;'
#        results = nr_db.query(query)
#        for r in results:
#                print(r)
#

