import sys
import os
from Bio import Entrez


def nr_coverage(nr_db, protein_db):
	nr = nr_db['proteins']
	db = protein_db['proteins']
	
	query = 'SELECT * FROM proteins ORDER BY id LIMIT 1;'
	results = nr_db.query(query)
	for r in results:
		print(r)

	

#	Entrez.email = 'gkreder@gmail.com'
#	handle = Entrez.efetch(db='protein', id='WP_003131952.1', retmode='xml')
#	records = Entrez.read(handle)
#	print(len(records))
