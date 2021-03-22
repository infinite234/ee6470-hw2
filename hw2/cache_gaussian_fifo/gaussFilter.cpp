#include <cmath>

#include "gaussFilter.h"

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
 
      int total = 0;
    int n1 =-1;
    for (unsigned int v = 0; v < MASK_Y; ++v) {
      for (unsigned int u = 0; u < MASK_X; ++u) {
          n1++;
          // if the available value is in cache
          if(i_n.read()==0){
               Red = Red_prev[n1+1];
               Green = Green_prev[n1+1];
               Blue = Blue_prev[n1+1];
          }
          else{
          	Red = i_r.read();
               Green = i_g.read();
               Blue = i_b.read();
          
          }
          Re += Red* mask[u][v];
          Gre += Green* mask[u][v];
          Blu += Blue* mask[u][v];
          Red_prev[n1] = Red;
          Green_prev[n1] = Green;
          Blue_prev[n1] = Blue;
          wait();
        total += mask[u][v];
      }
    }

    int result1 = (int)(Re/total);
    int result2 = (int)(Gre/total);
    int result3 = (int)(Blu/total);
    o_result1.write(result1);
    o_result2.write(result2);
    o_result3.write(result3);
  }
}
