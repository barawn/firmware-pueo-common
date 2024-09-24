`timescale 1ns / 1ps
`include "rackbus.vh"
// this is just the version for the TURFIO, we ignore the mode1-y stuff which won't
// come from the TURF anyway (at least probably not)
module pueo_turfio_command_decoder(
        input sysclk_i,
        input [31:0] command_i,
        input command_valid_i,
        
        output sync_o,
        output reset_o,
        output stop_o,
        
        output pps_o,
        
        output [`RACKBUS_TRIG_BITS-1:0] trig_time_o,
        output trig_time_valid_o
    );
    
    wire rackbus_ignore = `RACKBUS_IGNORE( command_i ) || !command_valid_i;

    assign sync_o = !rackbus_ignore && (`RACKBUS_RUNCMD( command_i ) == `RACKBUS_RUNCMD_SYNC);
    assign reset_o = !rackbus_ignore && (`RACKBUS_RUNCMD( command_i ) == `RACKBUS_RUNCMD_RESET);
    assign stop_o = !rackbus_ignore && (`RACKBUS_RUNCMD( command_i ) == `RACKBUS_RUNCMD_STOP);
    
    assign pps_o = `RACKBUS_PPS( command_i ) && command_valid_i;

    assign trig_time_o = `RACKBUS_TRIG( command_i );
    assign trig_time_valid_o = `RACKBUS_TRIG_VALID( command_i ) && command_valid_i;
        
endmodule
