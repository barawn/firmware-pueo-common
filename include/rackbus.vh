`define RACKBUS_TRIG( x ) ( x[14:0] )
`define RACKBUS_TRIG_VALID( x ) ( x[15] )
`define RACKBUS_MODE1DATA( x ) ( x[23:16] )
`define RACKBUS_MODE1TYPE( x ) ( x[25:24] )
`define RACKBUS_RUNCMD( x ) ( x[27:26] )
`define RACKBUS_PPS( x ) ( x[30] )
`define RACKBUS_IGNORE( x ) ( x[31] )

`define RACKBUS_PACK( ignore, pps, runcmd, mtype, mdata, trigvalid, trig )  \
        ( { ignore, pps, 2'b00, runcmd, mtype, mdata, trigvalid, trig } )

`define RACKBUS_RUNCMD_BITS 2
`define RACKBUS_RUNCMD_NOOP (2'b00)
`define RACKBUS_RUNCMD_SYNC (2'b01)
`define RACKBUS_RUNCMD_RESET (2'b10)
`define RACKBUS_RUNCMD_STOP (2'b11)

`define RACKBUS_TRIG_BITS 15

`define RACKBUS_MODE1_NOOP (8'h00)
`define RACKBUS_MODE1_RESET (8'h01)
`define RACKBUS_MODE1_MARK_FWU (8'h02)

`define RACKBUS_MODE1_SPECIAL (2'b00)
`define RACKBUS_MODE1_NORMAL (2'b01)
`define RACKBUS_MODE1_LAST (2'b10)
`define RACKBUS_MODE1_FWU (2'b11)