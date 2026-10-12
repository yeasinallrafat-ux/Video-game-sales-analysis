# Video Game Sales Analysis (1971–2024)

An exploratory data analysis of global video game sales spanning over five decades, covering **64,016 titles** across multiple regions including North America, Japan, Europe, Africa, and the rest of the world. This repository highlights key insights extracted using SQL queries regarding global bestsellers, peak release years, and regional sales disparities.

## 📊 Dataset Overview

* **Timeframe:** 1971 – 2024

* **Total Titles Analyzed:** 64,016

* **Metrics Included:** Global and regional sales (NA, JP, PAL/Europe, and others), release years, genres, consoles, and critic scores.

## 🔍 Key SQL Findings & Insights

### 1. Which titles sold the most worldwide?

| Title | Total Global Sales (Millions) | 
| ----- | ----- | 
| **Grand Theft Auto V** | 64.29 | 
| **Call of Duty: Black Ops** | 30.99 | 
| **Call of Duty: Modern Warfare 3** | 30.71 | 
| **Call of Duty: Black Ops II** | 29.59 | 
| **Call of Duty: Ghosts** | 28.80 | 
| **Call of Duty: Black Ops 3** | 26.72 | 
| **Call of Duty: Modern Warfare 2** | 25.02 | 
| **Minecraft** | 24.01 | 
| **Grand Theft Auto IV** | 22.53 | 
| **Call of Duty: Advanced Warfare** | 21.78 | 

### 2. Which year had the highest sales?

| Release Year | Total Yearly Sales (Millions) | Total Games Released | 
| ----- | ----- | ----- | 
| **2008** | 538.11 | 1,453 | 
| **2009** | 495.36 | 1,533 | 
| **2010** | 454.02 | 1,307 | 
| **2011** | 440.32 | 1,188 | 
| **2007** | 436.39 | 1,159 | 

### 3. What are the top titles popular in one region but perform poorly in another?

| Title | Console | NA Sales (M) | JP Sales (M) | PAL Sales (M) | 
| ----- | ----- | ----- | ----- | ----- | 
| **WWF SmackDown! Just Bring It** | PS2 | 1.19 | 0.04 | 1.15 | 
| **WWF SmackDown! 2: Know Your Role** | PS | 1.76 | 0.07 | 1.21 | 
| **WWF SmackDown!** | PS | 2.01 | 0.06 | 1.35 | 
| **WWF No Mercy** | N64 | 1.20 | 0.02 | 0.27 | 
| **WWE SmackDown! vs. RAW 2006** | PS2 | 1.45 | 0.04 | 1.11 | 
| **WWE SmackDown! vs. Raw** | PS2 | 1.32 | 0.04 | 1.08 | 
| **WWE SmackDown! Shut Your Mouth** | PS2 | 1.32 | 0.04 | 1.29 | 
| **WWE SmackDown vs. RAW 2007** | PS2 | 1.40 | 0.03 | 0.88 | 
| **WCW/nWo Revenge** | N64 | 1.94 | 0.03 | 0.39 | 
| **WCW vs. nWo: World Tour** | N64 | 1.37 | 0.03 | 0.28 | 

