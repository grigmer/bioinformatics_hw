#!/bin/bash
# Предобработка парных ридов через fastp
# Удаление адаптеров, обрезка по качеству, отбрасывание коротких ридов (<50 bp)

./fastp -i /home/STUDY/FBMF/bioinformatics/genome_de_novo/7_S4_L001_R1_001.fastq \
        -I /home/STUDY/FBMF/bioinformatics/genome_de_novo/7_S4_L001_R2_001.fastq \
        -o clean_R1.fastq -O clean_R2.fastq \
        --detect_adapter_for_pe \
        --cut_front --cut_tail --cut_window_size 4 --cut_mean_quality 20 \
        --length_required 50 \
        --html fastp_report.html --json fastp_report.json
