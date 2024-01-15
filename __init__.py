from .eval import *

def eval_cod(test_datagen, name='test', save_result_path=None):
    configs = get_configs(save_result_path)
    each_results = test(test_datagen, configs, name)
    return each_results