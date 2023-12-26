# seem pred
cd /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit && \
python eval.py \
        --dataset-json /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit/configs/dataset.json \
        --method-json /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit/configs/seem.json

# gptsam
cd /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit && \
python eval.py \
        --dataset-json /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit/configs/dataset.json \
        --method-json /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit/configs/gptsam.json

#lisa
cd /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit && \
python eval.py \
        --dataset-json /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit/configs/dataset.json \
        --method-json /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit/configs/lisa.json

# zoomnext
python eval.py \
        --dataset-json PySODEvalToolkit/configs/dataset.json \
        --method-json PySODEvalToolkit/configs/zoomnext.json

# cogvlm
python PySODMetrics/eval.py \
        --dataset-json PySODMetrics/configs/dataset.json \
        --method-json PySODMetrics/configs/cogvlm.json \
        --save-each-image-path 'PySODMetrics/camo_cogvlm.csv'

python PySODMetrics/eval.py \
        --dataset-json PySODMetrics/configs/dataset.json \
        --method-json PySODMetrics/configs/cogvlm_half.json \
        --save-each-image-path 'PySODMetrics/camo_cogvlm-half.csv'

# gptsam
python PySODMetrics/eval.py \
        --dataset-json PySODMetrics/configs/dataset.json \
        --method-json PySODMetrics/configs/gptsam.json \
        --save-each-image-path 'PySODMetrics/camo_gptsam.csv'

python PySODMetrics/eval.py \
        --dataset-json PySODMetrics/configs/dataset.json \
        --method-json PySODMetrics/configs/gptsam.json \
        --save-each-image-path 'PySODMetrics/camo_gptsam_5.csv'
