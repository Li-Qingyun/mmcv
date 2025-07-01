set -x
export TORCH_CUDA_ARCH_LIST=$(python -c "import torch; print(f'{torch.cuda.get_device_capability()[0]}.{torch.cuda.get_device_capability()[1]}')")

pip install -r requirements/optional.txt
pip install -e . -v