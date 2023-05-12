set-executionpolicy RemoteSigned -Scope CurrentUser
git clone https://github.com/oobabooga/text-generation-webui.git
cd text-generation-webui
python -m venv venv
venv\Scripts\Activate.ps1
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
pip install https://github.com/jllllll/bitsandbytes-windows-webui/raw/main/bitsandbytes-0.38.1-py3-none-any.whl
pip install -r requirements.txt
mkdir repositories
cd repositories
git clone https://github.com/oobabooga/GPTQ-for-LLaMa.git -b cuda
cd  GPTQ-for-LLaMa
python -m pip install -r requirements.txt
cd ..
pip install https://github.com/jllllll/GPTQ-for-LLaMa-Wheels/raw/main/quant_cuda-0.0.0-cp310-cp310-win_amd64.whl
cd ..
pip install einops
pip install -r extensions\superbooga\requirements.txt --upgrade
pip install -r extensions\api\requirements.txt --upgrade
pip install -r extensions\elevenlabs_tts\requirements.txt --upgrade
pip install -r extensions\google_translate\requirements.txt --upgrade
pip install -r extensions\silero_tts\requirements.txt --upgrade
pip install -r extensions\whisper_stt\requirements.txt --upgrade
pip install -r extensions\openai\requirements.txt --upgrade

# llama-cpp-python cuda update direct link to install the wheel gave me an error
git clone https://github.com/CapitalBeyond/win-cuda-llama-cpp-python/
cd win-cuda-llama-cpp-python
pip install llama_cpp_python-0.1.49-cp310-cp310-win_amd64.whl --upgrade
cd..

copy venv\Scripts\activate.bat .
copy activate.bat start.bat
Add-Content start.bat "`python server.py --chat"
Write-Host "Done! run start.bat in the text-generation-webui folder"
pause