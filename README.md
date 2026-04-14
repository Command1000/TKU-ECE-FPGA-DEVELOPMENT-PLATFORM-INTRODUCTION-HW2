# TKU-ECE-FPGA-DEVELOPMENT-PLATFORM-INTRODUCTION-HW2

Verilog implementation of cascaded logic gates and 5-to-1 MUX on Terasic DE0.
**Coursework for TKU ECE: FPGA Development Platform Introduction.**

Notice: For reference only. Direct copying is not recommended for academic integrity.

---

## License & Copyright

* **Hardware Template**: The top-level design is based on the official hardware template provided by **Terasic Technologies Inc.**
* **Logic Design**: All custom logic (gate cascaded design and MUX selection) is implemented by **TSENG SHENG YU**.
* **Usage**: This repository is for academic and educational purposes only.

---

<details>
<summary><strong>Documentation (English / Click to expand)</strong></summary>

### Simulation and Verification (VWF)

If the hardware development board is unavailable, follow these steps to perform a Functional Simulation using the Vector Waveform File (.vwf):

#### Step 1: Create a New Waveform File
1. Go to File -> New.
2. Select University Program VWF under the Verification/Debugging Files category.
3. Click OK to open the waveform editor.

#### Step 2: Import Nodes
1. Right-click in the left pane and select Insert -> Insert Node or Bus.
2. Click Node Finder -> Set Filter to Pins: all -> Click List.
3. Click the >> button to add SW and LEDG signals. Click OK twice.

#### Step 3: Configure Input (Binary Sequence for Truth Table)
To cover all 8 combinations (000-111), you must set different count intervals for each bit:
1. Select **SW[0]**: Click Overwrite Count Value -> Set to **10ns**.
2. Select **SW[1]**: Click Overwrite Count Value -> Set to **20ns**.
3. Select **SW[2]**: Click Overwrite Count Value -> Set to **40ns**.

#### Step 4: Run Functional Simulation
1. Navigate to Simulation -> Run Functional Simulation.
2. Save the file when prompted.
3. Wait for the simulation report window to appear.

#### Step 5: Verify Truth Table (LEDG 9 & 8)
Observe the LEDG output waveforms to verify your logic:
1. **LEDG[9]**: Represents the High Bit (M[1]).
2. **LEDG[8]**: Represents the Low Bit (M[0]).

**Example for verification:**
If the expected output for a specific input is **2'b10**:
* **LEDG[9]** must be **High (1)**.
* **LEDG[8]** must be **Low (0)**.

---

### Generating the RTL Viewer Diagram

1. **Preparation**: Ensure DE0_TOP.v is the Top-Level Entity and run Analysis & Synthesis (Ctrl+K).
2. **Launch**: Tools -> Netlist Viewers -> RTL Viewer.
3. **Capture**: Screenshot the full interconnected circuit (SW -> Gates -> MUX -> LEDG).

#### Important Notes
* Simulation Troubleshooting: Ensure Simulation Mode is set to Functional in Simulation Settings.
* File Inclusion: Ensure all .v files are included in the project.

</details>

<details>
<summary><strong>教學 (中文說明文件 / 點擊展開)</strong></summary>

### 使用向量波形檔 (VWF) 進行模擬驗證

若無硬體開發板，可透過 Quartus 內建的模擬工具執行功能模擬 (Functional Simulation) 來驗證真值表：

#### 步驟 1：建立波形檔案
1. 於 Quartus 選單點選 File -> New。
2. 選擇 Verification/Debugging Files 類別中的 University Program VWF，點選 OK。

#### 步驟 2：匯入訊號節點
1. 在左側空白處右鍵選 Insert -> Insert Node or Bus -> Node Finder。
2. Filter 設定 Pins: all -> List -> 點選 >> 加入 SW 與 LEDG，連點 OK。

#### 步驟 3：設定輸入訊號 (產生 000-111 序列)
若要完整覆蓋 8 種組合，必須分別設定不同頻率：
1. 選取 **SW[0]**：Overwrite Count Value -> 設定 **10ns**。
2. 選取 **SW[1]**：Overwrite Count Value -> 設定 **20ns**。
3. 選取 **SW[2]**：Overwrite Count Value -> 設定 **40ns**。

#### 步驟 4：執行功能模擬
1. 點選 Simulation -> Run Functional Simulation 並儲存檔案。
2. 系統將自動開啟模擬結果報告視窗。

#### 步驟 5：對照真值表驗證 (解讀 LEDG 9 與 8)
觀察 LEDG 輸出波形來驗證邏輯是否正確：
1. **LEDG[9]**：代表二進位高位元 (M[1])。
2. **LEDG[8]**：代表二進位低位元 (M[0])。

**驗證範例：**
若根據真值表，某組輸入對應的輸出應為 **2'b10**：
* **LEDG[9]** 應顯示為 **高電位 (1)**。
* **LEDG[8]** 應顯示為 **低電位 (0)**。

---

### 產生 RTL Viewer 電路圖

1. **前期準備**：確保 DE0_TOP.v 為頂層實體，執行分析與合成 (Ctrl+K)。
2. **開啟方式**：Tools -> Netlist Viewers -> RTL Viewer。
3. **截圖要求**：請截取包含 SW、邏輯閘模組、MUX 以及 LEDG 的完整連接圖。

#### 重要注意事項
* 模擬失敗排除：請檢查 Simulation Settings 中的 Simulation Mode 是否設定為 Functional。
* 原始碼確認：確保 gate.v 與 MUX5to1.v 等檔案皆已加入專案。

</details>
