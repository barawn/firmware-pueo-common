`define RACKBUS_TRIG( x ) ( x[14:0] )
`define RACKBUS_TRIG_VALID( x ) ( x[15] )
`define RACKBUS_MODE1DATA( x ) ( x[23:16] )
`define RACKBUS_MODE1TYPE( x ) ( x[25:24] )
`define RACKBUS_RUNCMD( x ) ( x[27:26] )
`define RACKBUS_PPS( x ) ( x[30] )
`define RACKBUS_IGNORE( x[31] )

`define RACKBUS_RUNCMD_BITS 2
`define RACKBUS_TRIG_BITS 15
