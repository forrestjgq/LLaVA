from llava.model.builder import load_pretrained_model
from llava.mm_utils import get_model_name_from_path
from llava.eval.run_llava import eval_model
import os
from llava import LlavaEval, LlavaLlamaForCausalLM

model_path="/home/gqjiang/llava-v1.5-7b"

lv = LlavaEval(model_path)

prompt = "What are the things I should be cautious about when I visit here?"
image_file = "https://llava-vl.github.io/static/images/view.jpg"
output = lv.generate(prompt, image_file)
print(f'q:\n{promt}\na:\n{output}')

prompt = "What did you see in this image? and how are you feeling?"
image_file = "https://a.zdmimg.com/202311/24/65606515c70142420.jpg_fo742.jpg"
output = lv.generate(prompt, image_file)
print(f'q:\n{promt}\na:\n{output}')
