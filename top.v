module spi_passthrough (
	input stm32_cs_in,
	input stm32_sck_in,	
	input stm32_mosi_in,	
	output stm32_miso_out,		

	output flash_cs_out,	
	output flash_sck_out,	
	output flash_mosi_out,	
	input  flash_miso_in
);

	assign flash_cs_out = stm32_cs_in;
	assign flash_sck_out = stm32_sck_in;	

	assign flash_mosi_out = stm32_mosi_in;	
	assign stm32_miso_out = flash_miso_in;
	
endmodule	
