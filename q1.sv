///UVM code to know field macros and print function 
///

import uvm_pkg::*;
`include "uvm_macros.svh"


class packet extends uvm_sequence_item;
rand bit a,b,c;

`uvm_object_utils_begin(packet)
`uvm_field_int(a,UVM_ALL_ON)
`uvm_field_int(b,UVM_ALL_ON)
`uvm_field_int(c,UVM_ALL_ON)
`uvm_object_utils_end

function new(string name="packet");
super.new(name);
endfunction

endclass


module tb;
packet p=new();
initial
begin
p.randomize();
p.print();
end
endmodule 
