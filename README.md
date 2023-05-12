# win-cuda-llama-cpp-python
Compiled cuda wheels for windows for abetlen/llama-cpp-python
You need the cuda toolkit 11.8 installed and working (PATH).

Old quant, it is only working with the "old" ggml files.  

Feel free to use the powershell script to make your own wheel.

use
download or git clone (direct link was not working)

git clone https://github.com/CapitalBeyond/win-cuda-llama-cpp-python.git

cd win-cuda-llama-cpp-python

pip install llama_cpp_python-0.1.49-cp310-cp310-win_amd64.whl --upgrade

