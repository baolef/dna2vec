# Created by Baole Fang at 10/30/23

from dna2vec.multi_k_model import MultiKModel

filepath = 'pretrained/dna2vec-20161219-0153-k3to8-100d-10c-29320Mbp-sliding-Xat.w2v'
mk_model = MultiKModel(filepath)

print(mk_model.vector('AAA'))
