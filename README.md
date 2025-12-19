# Optical-Flow

Acest proiect implementează algoritmi de estimare a mișcării (optical flow) între două frame-uri video utilizând Horn–Schunck și Lucas–Kanade în varianta multi-scale (piramidală), optimizat pentru Xilinx Vitis HLS.

Fluxul optic este calculat la trei niveluri de rezoluție (16×16 → 32×32 → 64×64), pentru a permite detectarea mișcărilor mari și mici.

Proiectul include:

Implementarea HLS a algoritmilor Horn–Schunck și Lucas–Kanade.

Funcții pentru downsampling și upsampling piramidal.

Testbench CSIM complet pentru simulare și verificare.

Suport pentru tipuri fixed-point (ap_fixed) pentru FPGA.

Pentru a rula programul se descarca zip-ul cu codul din branch-ul BiancaVersion2, se dezarhiveaza, si se acceseaza csim.exe din horn_schunck_demo/ respectiv lucas_kanade_demo/.
