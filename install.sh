set -x
export TORCH_CUDA_ARCH_LIST=$(python -c "import torch; print(f'{torch.cuda.get_device_capability()[0]}.{torch.cuda.get_device_capability()[1]}')")

pip install -r requirements/optional.txt
MMCV_WITH_OPS=1 FORCE_CUDA=1 TORCH_CUDA_ARCH_LIST=$TORCH_CUDA_ARCH_LIST pip install -e . -v
