#include <cmath>

#include "gaussFilter.h"
using namespace std;
gaussFilter::gaussFilter(sc_module_name n) : sc_module(n) {
  SC_THREAD(do_filter);
  sensitive << i_clk.pos();
  dont_initialize();
  reset_signal_is(i_rst, false);
}

// gauss mask
const int mask[MASK_X][MASK_Y] = {{1,2,1},{2,4,2},{1,2,1}};


void gaussFilter::do_filter() {
  { wait(); }
  while (true) {
      Red = 0; Blue =0; Green = 0;
      double total = 0.0;
    int n2 =-1;
    for (unsigned int v = 0; v < MASK_Y; ++v) {
      for (unsigned int u = 0; u < MASK_X; ++u) {
          
          // if the available value is in cache
         n2++;
          int s1 = i_n.read();
          if(s1==1){
          Re = i_r.read();
          Red_prev[n2] = Re;
          Ge = i_g.read();
          Green_prev[n2] = Ge;
          Be = i_b.read();
          Blue_prev[n2] = Be;
          }
          else{
          Red_prev[n2] = Red_prev[n2+1];
          Green_prev[n2] = Green_prev[n2+1];
          Blue_prev[n2] = Blue_prev[n2+1];
          
          }
          
          Red += Red_prev[n2]* mask[u][v];
          Green += Green_prev[n2]* mask[u][v];
          Blue += Blue_prev[n2]* mask[u][v];
          
          wait();
        total += mask[u][v];
      }
    }

    int result1 = (int)(Red/total);
    int result2 = (int)(Green/total);
    int result3 = (int)(Blue/total);
    o_result1.write(result1);
    o_result2.write(result2);
    o_result3.write(result3);
  }
}
