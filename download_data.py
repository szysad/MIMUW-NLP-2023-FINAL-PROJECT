import gdown

file_id = '1DN7ClZCCXsk2KegmC6t4ClBwtAf5galI'
url = f'https://drive.google.com/uc?id={file_id}'
output = 'bert_data_cnndm_final.zip'
gdown.download(url, output, quiet=False)
