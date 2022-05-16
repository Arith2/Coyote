`timescale 1ns / 1ps

import lynxTypes::*;

module data_queue_credits_src #(
	parameter integer 		DATA_BITS = AXI_DATA_BITS	
) (
	input  logic 			aclk,
	input  logic 			aresetn,
	
	AXI4S.s 				s_axis,
	AXI4S.m 				m_axis
);

if(DATA_BITS == 512) begin
    axis_data_fifo_512 inst_data (
        .s_axis_aresetn(aresetn),
        .s_axis_aclk(aclk),
        .s_axis_tvalid(s_axis.tvalid),
        .s_axis_tready(s_axis.tready),
        .s_axis_tdata(s_axis.tdata),
        .s_axis_tkeep(s_axis.tkeep),
        .s_axis_tlast(s_axis.tlast),
        .m_axis_tvalid(m_axis.tvalid),
        .m_axis_tready(m_axis.tready),
        .m_axis_tdata(m_axis.tdata),
        .m_axis_tkeep(m_axis.tkeep),
        .m_axis_tlast(m_axis.tlast)
    );
end
else if(DATA_BITS == 1024) begin
    axis_data_fifo_1k inst_data (
        .s_axis_aresetn(aresetn),
        .s_axis_aclk(aclk),
        .s_axis_tvalid(s_axis.tvalid),
        .s_axis_tready(s_axis.tready),
        .s_axis_tdata(s_axis.tdata),
        .s_axis_tkeep(s_axis.tkeep),
        .s_axis_tlast(s_axis.tlast),
        .m_axis_tvalid(m_axis.tvalid),
        .m_axis_tready(m_axis.tready),
        .m_axis_tdata(m_axis.tdata),
        .m_axis_tkeep(m_axis.tkeep),
        .m_axis_tlast(m_axis.tlast)
    );
end
else if(DATA_BITS == 2048) begin
    axis_data_fifo_2k inst_data (
        .s_axis_aresetn(aresetn),
        .s_axis_aclk(aclk),
        .s_axis_tvalid(s_axis.tvalid),
        .s_axis_tready(s_axis.tready),
        .s_axis_tdata(s_axis.tdata),
        .s_axis_tkeep(s_axis.tkeep),
        .s_axis_tlast(s_axis.tlast),
        .m_axis_tvalid(m_axis.tvalid),
        .m_axis_tready(m_axis.tready),
        .m_axis_tdata(m_axis.tdata),
        .m_axis_tkeep(m_axis.tkeep),
        .m_axis_tlast(m_axis.tlast)
    );
end

endmodule
