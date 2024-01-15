# -*- coding: utf-8 -*-
import sys
import os
# get path of the dir of this file and add it to sys.path
dir_of_this_file = os.path.dirname(os.path.abspath(__file__))
sys.path.append(dir_of_this_file)
import argparse
import textwrap
import warnings

from .metrics import cal_sod_matrics
from .utils.generate_info import get_datasets_info, get_methods_info
from .utils.recorders import SUPPORTED_METRICS

from types import SimpleNamespace

def get_configs(save_each_image_reult_path=None):
    configs = {
        'dataset_json': os.path.join(dir_of_this_file,
                                     'configs/dataset.json'),
        'num_workers': 4,
        'num_bits': 3,
        # 'metric_names': ['mae', 'fmeasure', 'precision', 'recall', 'em', 'sm', 'wfm'],
        'metric_names': ['mae', 'sm', 'wfm'],
        'save_each_image_result_path': save_each_image_reult_path
    }
    configs = SimpleNamespace(**configs)

    if configs.save_each_image_result_path:
        if os.path.dirname(configs.save_each_image_result_path) != '':
            os.makedirs(os.path.dirname(configs.save_each_image_result_path), exist_ok=True)
    return configs


def test(test_datagen, configs, name='test'):
    """
    test_datagen: a dict of all test data
    """
    # 包含所有数据集信息的字典
    datasets_info = get_datasets_info(
        datastes_info_json=configs.dataset_json,
        include_datasets=[],
        exclude_datasets=[]
    )

    # 确保多进程在windows上也可以正常使用
    each_results = cal_sod_matrics.cal_image_matrics(
        sheet_name="Results",
        methods_info={name : test_datagen},
        datasets_info=datasets_info,
        num_bits=configs.num_bits,
        num_workers=configs.num_workers,
        metric_names=configs.metric_names,
        ncols_tqdm=119,
        save_each_image_result=configs.save_each_image_result_path,
    )
    return each_results


if __name__ == "__main__":
    def catch_exception(type, value, tb):
        import traceback
        traceback.print_exception(type, value, tb)
        import ipdb
        ipdb.post_mortem(tb)
    import sys
    sys.excepthook = catch_exception
    configs = get_configs()
    test()
