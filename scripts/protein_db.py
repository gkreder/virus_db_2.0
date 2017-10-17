from aux import isolate_viruses 
import dataset
import os

os.chdir('../data/db')
db_path = os.path.abspath(os.getcwd())
db_name = 'sqlite:///' + db_path + '/protein_db.sqlite'
if os.path.exists(db_name.replace('sqlite:///','')):
	os.system('rm ' + db_name.replace('sqlite:///', ''))
db = dataset.connect(db_name)
isolate_viruses.add_genes(db)
