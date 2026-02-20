## Train with PEFT
`run_peft.sh` loads data from `dataset_generation/gh_data` and executes the LoRA fine-tuning pipeline utilizing the PEFT library.
```bash
./run_peft.sh
```

## Train with Unsloth
`run_unsloth_peft.sh` loads data from `dataset_generation/gh_data` and runs the LoRA fine-tuning pipeline using the Unsloth framework to optimize VRAM usage and increase training speed.

```bash
./run_unsloth_peft.sh
```