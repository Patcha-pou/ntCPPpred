#### **ntCPPpred: A Non-Toxic Cell-Penetrating Peptide Prediction Tool**

---

**Brief Description:**

`ntCPPpred` is an innovative computational tool designed to predict non-toxic cell-penetrating peptides (CPPs). Integrating state-of-the-art machine learning algorithms, it provides researchers and developers an accurate method to ensure the non-toxicity of CPPs in therapeutic applications.

---

**System Requirements:**

- **Operating System:** Linux, Windows, or macOS.
- **Memory:** Minimum 4GB RAM recommended.
- **Processor:** Intel i3 or equivalent.
- **Software:** Python 3.x, pip (Python package manager).

---

**Installation Instructions:**

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/ntCPPpred/ntCPPpred.git
    ```

2. **Navigate to the Directory:**
    ```bash
    cd ntCPPpred
    ```

3. **Install the Required Libraries:**
    ```bash
    pip install -r requirements.txt
    ```

---

**How to Use the Tool:**

1. **Command Line Interface:**

    To predict non-toxic CPPs from a peptide sequence file:
    ```bash
    python ntCPPpred.py -i <input_file.fasta>
    ```

    For detailed help and options:
    ```bash
    python ntCPPpred.py -h
    ```

2. **Using the GUI (if available):**

    Launch the GUI:
    ```bash
    python ntCPPpred_gui.py
    ```
    - Load your input peptide sequences.
    - Click on "Predict".
    - View the results in the output section.

---

**Example Inputs and Outputs:**

- **Input (input_file.fasta):**
    ```fasta
    >Sample1
    GFLIRPKVLSW
    >Sample2
    ACDEFGRHIKL
    ```

- **Command:**
    ```bash
    python ntCPPpred.py -i input_file.fasta
    ```

- **Output:**
    ```text
    Sample1: Non-Toxic CPP
    Sample2: Toxic CPP
    ```
