export TRANSFORMERS_NO_TF_IMPORT=1
export TF_ENABLE_ONEDNN_OPTS=0
export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True
export WANDB_DISABLED=true
CUDA_VISIBLE_DEVICES=0 WANDB_PROJECT=personal-code-copilot python train.py \
--model_name_or_path "Qwen/Qwen2.5-Coder-7B" \
--dataset_name "gh_data" \
--splits "train" \
--max_seq_length 1024 \
--max_steps 2000 \
--save_steps 500 \
--eval_steps 100 \
--logging_steps 5 \
--log_level "info" \
--logging_strategy "steps" \
--eval_strategy "steps" \
--save_strategy "steps" \
--bf16 True \
--learning_rate 3e-4 \
--lr_scheduler_type "cosine" \
--weight_decay 0.1 \
--warmup_ratio 0.1 \
--max_grad_norm 1.0 \
--output_dir "results" \
--per_device_train_batch_size 2 \
--per_device_eval_batch_size 2 \
--gradient_accumulation_steps 32 \
--gradient_checkpointing True \
--use_reentrant True \
--dataset_text_field "text" \
--test_size 0.1 \
--fim_rate 0.5 \
--fim_spm_rate 0.5 \
--use_peft_lora True \
--lora_r 32 \
--lora_alpha 64 \
--lora_dropout 0.1 \
--lora_target_modules "all-linear" \
--use_4bit_quantization True \
--use_nested_quant True \
--bnb_4bit_compute_dtype "bfloat16" \
--use_flash_attn False 