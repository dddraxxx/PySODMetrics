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
cd /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit && \
python eval.py \
        --dataset-json /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit/configs/dataset.json \
        --method-json /root/Workspace-new/qihuad/github/Datasets/cod/PySODEvalToolkit/configs/zoomnext.json
