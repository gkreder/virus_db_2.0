import sys
import os
import dataset
aux_dir = os.getcwd()
data_path = os.path.abspath(aux_dir + '/../data/')

def connect_protein_db():
	os.chdir(data_path + '/db/')
	db_path = 'sqlite:///' + os.path.abspath(os.getcwd()) + '/protein_db.sqlite'
	protein_db = dataset.connect(db_path)
	return protein_db
def count_proteins(protein_db = None):
	if protein_db == None:
		protein_db = connect_protein_db()
	query = 'SELECT * FROM proteins ORDER BY ID DESC LIMIT 1;'
	results = protein_db.query(query)
	results = [x for x in results]
	results = results[0]
	return results['id']
def annotation_density():
	protein_db = connect_protein_db()
	cols = protein_db['proteins'].columns
	num_proteins = count_proteins(protein_db)
	cov = []
	for i in range(num_proteins):
		cov.append([])
	atts = ['PFAM_FAMILY', 'COG', 'KOG', 'KO_ID']
	for att in atts:
		query = 'SELECT * FROM proteins WHERE ' + att + ' IS NOT NULL;'
		results = protein_db.query(query)
		results = [x for x in results]
		print(att + ':' + str(len(results)) + ' ' + str(len(results) / num_proteins * 100))
def create_viral_sqlite():
	os.chdir(data_path + '/nr/')
	if os.path.exists('viral_proteins.sqlite'):
		os.system('rm viral_proteins.sqlite')
	db_out = dataset.connect('sqlite:///viral_proteins.sqlite')
	table = db_out['proteins']
	rows = []
	line_counter = 0
	num_lines = 4279162
	with open('viral_proteins.txt', 'r') as f:
		for line in f:
			if line_counter == int(num_lines / 4):
				print('25% done...')
			elif line_counter == int(num_lines / 2):
				print('50% done...')
			elif line_counter == int(num_lines * 3 / 4):
				print('75% done...')
			r = dict(acc_num=line.strip())
			rows.append(r)
			line_counter += 1
	print('Done scraping rows....creating sqlite file....')
	table.insert_many(rows)
