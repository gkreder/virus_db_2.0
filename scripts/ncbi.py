import sys
import os
import dataset
from aux import ncbi
scripts_dir = os.getcwd()

os.chdir('../data/')
data_path = os.path.abspath(os.getcwd())

db_path = 'sqlite:///' + data_path + '/nr/nr.sqlite'
nr_db = dataset.connect(db_path)
db_path = 'sqlite:///' + data_path + '/db/protein_db.sqlite'
protein_db = dataset.connect(db_path)
ncbi.nr_coverage(nr_db, protein_db)
