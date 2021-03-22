#ifndef gauss_FILTER_H_
#define gauss_FILTER_H_
#include <systemc>
using namespace sc_core;

#include "filter_def.h"

class gaussFilter : public sc_module {
public:
  sc_in_clk i_clk;
  sc_in<bool> i_rst;
  sc_fifo_in<double> i_r;
  sc_fifo_in<double> i_g;
  sc_fifo_in<double> i_b;
  sc_fifo_in<int> i_n;
  sc_fifo_out<int> o_result1;
  sc_fifo_out<int> o_result2;
  sc_fifo_out<int> o_result3;

  SC_HAS_PROCESS(gaussFilter);
  gaussFilter(sc_module_name n);
  ~gaussFilter() = default;

private:
  void do_filter();
  double Red;
  double Blue;
  double Green;
  double Red_prev[MASK_Y*MASK_X];
  double Green_prev[MASK_Y*MASK_X];
  double Blue_prev[MASK_Y*MASK_X];
  double Re;
  double Blu;
  double Gre; 
};
#endif
