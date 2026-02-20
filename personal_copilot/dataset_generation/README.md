1. Go to https://github.com/settings/tokens and create new token by clicking `Generate New Token` button. Give read access to public repositories.
2. Copy the access token and set the env variable via `export GH_ACCESS_TOKEN=<copied access token>`.
3. `cd dataset_creation` and Run `python clone_hf_repos.py`
4. The data in `gh_repo` folder in current repo should look like below:
```
accelerate          candle   datasets       diffusers               notebooks  pytorch-image-models       tokenizers    trl
alignment-handbook  chat-ui  deep-rl-class  diffusion-models-class  peft       text-generation-inference  transformers
```
5. Download nltk punkt
```python
import nltk
nltk.download('punkt')
```
6. Run Data Pipeline on a machine with 10 CPUs:
```
python pipeline.py
```
7. Collate and push to hub:
```
python prepare_hf_dataset.py
```


## Alternative using local data only
1. Git clone the repo you want to finetune on inside the `gh_repo`. You an can also place a local project inside this folder.

2. Run Data Pipeline on a machine with 10 CPU:
> Note: the number of CPUs used can be changed in the `pipeline.py` script at the top.
```bash
python pipeline.py
```

3. Now the generated data is stored in the `gh_data` folder.