#include <iostream>
#include <string>
using namespace std;

// Wall Clock Time Measurement
#include <sys/time.h>

#include "gaussFilter.h"
#include "Testbench.h"

// TIMEVAL STRUCT IS Defined ctime
// use start_time and end_time variables to capture
// start of simulation and end of simulation
struct timeval start_time, end_time;

// int main(int argc, char *argv[])
int sc_main(int argc, char **argv) {
  if ((argc < 3) || (argc > 4)) {
    cout << "No arguments for the executable : " << argv[0] << endl;
    cout << "Usage : >" << argv[0] << " in_image_file_name out_image_file_name"
         << endl;
    return 0;
  }
  Testbench tb("tb");
  gaussFilter gauss_filter("gauss_filter");
  sc_clock clk("clk", CLOCK_PERIOD, SC_NS);
  sc_signal<bool> rst("rst");
  sc_fifo<int> n;

  sc_fifo<unsigned char> r;
  sc_fifo<unsigned char> g;
  sc_fifo<unsigned char> b;
  sc_fifo<int> result1;
  sc_fifo<int> result2;
  sc_fifo<int> result3;
  tb.i_clk(clk);
  tb.o_rst(rst);
  gauss_filter.i_clk(clk);
  gauss_filter.i_rst(rst);
  tb.o_n(n);

  tb.o_r(r);
  tb.o_g(g);
  tb.o_b(b);
  tb.i_result1(result1);
  tb.i_result2(result2);
  tb.i_result3(result3);
  gauss_filter.i_n(n);

  gauss_filter.i_r(r);
  gauss_filter.i_g(g);
  gauss_filter.i_b(b);
  gauss_filter.o_result1(result1);
  gauss_filter.o_result2(result2);
  gauss_filter.o_result3(result3);

  tb.read_bmp(argv[1]);
  sc_start();
  std::cout << "Simulated time == " << sc_core::sc_time_stamp() << std::endl;
  tb.write_bmp(argv[2]);

  return 0;
}
