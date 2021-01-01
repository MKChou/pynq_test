#include "ap_int.h"

void add(int a, int b, int& c) {
    // 定義介面為 s_axilite，這樣 CPU (Python) 才能透過暫存器讀寫這些變數
    #pragma HLS INTERFACE s_axilite port=a bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=b bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=c bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=return bundle=CTRL

    c = a + b;
}
