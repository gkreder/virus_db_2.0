import sys
import os
import dataset
top_dir = os.getcwd()
scripts_path = os.path.abspath(top_dir)

def add_genes(protein_db):
	table = protein_db['proteins']
	gene_dir = os.path.abspath(scripts_path + '/../data/isolate_viruses/gene/')
	os.chdir(gene_dir)
	files = [x for x in os.listdir() if '.tsv'in x and x[0] != '.']
	for file_count,x in enumerate(files):
		print(str(file_count + 1) + ' of ' + str(len(files)))
		sys.stdout.flush()
		with open(x, 'r') as f:
			lines = [l.strip().split('\t') for l in f.readlines()]
			header = lines[0]
			lines = lines[1 : ]
		for l in lines:
			p = {}
			for i, att_val in enumerate(l):
				att = header[i]
				p[att] = att_val
			table.insert(p)	
def generic_add(db, gene_dir):
	print('Working on directory ' + gene_dir)
	sys.stdout.flush()
	table = db['proteins']
	os.chdir(gene_dir)
	files = [x for x in os.listdir() if '.tsv'in x and x[0] != '.']
	for file_count,x in enumerate(files):
#		print(str(file_count + 1) + ' of ' + str(len(files)))
		sys.stdout.flush()
		if file_count == int(len(files) / 4):
			print('\t25% done...')
			sys.stdout.flush()
		elif file_count == int(len(files)*2 / 4):
			print('\t50% done...')
			sys.stdout.flush()
		elif file_count == int(len(files)*3 / 4):
			print('\t75% done...')
			sys.stdout.flush()
		
		with open(x, 'r') as f:
			lines = [l.strip().split('\t') for l in f.readlines()]
			header = lines[0]
			lines = lines[1 : ]
		if len(lines) == 0:
			continue
		for l in lines:
			p = {}
			for i, att_val in enumerate(l):
				att = header[i]
				p[att] = att_val
			table.update(p, ['GENE_OID'])
def add_gene_cog_groups(db):
	gene_dir = os.path.abspath(scripts_path + '/../data/isolate_viruses/gene_cog_groups/')
	generic_add(db, gene_dir)
def add_gene_ko_enzymes(db): 
	gene_dir = os.path.abspath(scripts_path + '/../data/isolate_viruses/gene_ko_enzymes/')
	generic_add(db, gene_dir)
def add_gene_ko_terms(db): 
	gene_dir = os.path.abspath(scripts_path + '/../data/isolate_viruses/gene_ko_terms/')
	generic_add(db, gene_dir)
def add_gene_kog_groups(db):
	gene_dir = os.path.abspath(scripts_path + '/../data/isolate_viruses/gene_kog_groups/')
	generic_add(db, gene_dir)
def add_gene_pfam_families(db):
	gene_dir = os.path.abspath(scripts_path + '/../data/isolate_viruses/gene_pfam_families/')
	generic_add(db, gene_dir)
def add_gene_tigrfams(db):
	gene_dir = os.path.abspath(scripts_path + '/../data/isolate_viruses/gene_tigrfams/')
	generic_add(db, gene_dir)
