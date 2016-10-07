`timescale 1ns / 1ps
/*
Name: Harsh Shah
Roll no: 201501096
Verilog code for finding Inverse of Matrix.
*/


module Inverse_Matrix(clk);
	 
	 
input clk;
reg [31:0] matrix[49:0];
reg error_flag = 1'b0;
reg [31:0] tmp;

initial begin
matrix[0] = 1;
matrix[1] = 0;
matrix[2] = 0;
matrix[3] = 0;
matrix[4] = 1;
matrix[5] = 1;
matrix[6] = 0;
matrix[7] = 0;
matrix[8] = 0;
matrix[9] = 0;
matrix[10] = 0;
matrix[11] = 1;
matrix[12] = 3;
matrix[13] = 0;
matrix[14] = 0;
matrix[15] = 0;
matrix[16] = 1;
matrix[17] = 0;
matrix[18] = 0;
matrix[19] = 0;
matrix[20] = 0;
matrix[21] = 0;
matrix[22] = 1;
matrix[23] = 0;
matrix[24] = 0;
matrix[25] = 0;
matrix[26] = 0;
matrix[27] = 1;
matrix[28] = 0;
matrix[29] = 0;
matrix[30] = 0;
matrix[31] = 1;
matrix[32] = 0;
matrix[33] = 1;
matrix[34] = 0;
matrix[35] = 0;
matrix[36] = 0;
matrix[37] = 0;
matrix[38] = 1;
matrix[39] = 0;
matrix[40] = 0;
matrix[41] = 0;
matrix[42] = 0;
matrix[43] = 0;
matrix[44] = 1;
matrix[45] = 0;
matrix[46] = 0;
matrix[47] = 0;
matrix[48] = 0;
matrix[49] = 1;
end


//To check if all elements of first column is zero and if matrix[0] = 0 then swap row with first non-zero element in a paerticular row
always@(posedge clk)
begin
	if(matrix[0] == 0)
	begin
		if(matrix[10] == 0)
		begin
			if(matrix[20] == 0)
			begin
				if(matrix[30] == 0)
				begin
					if(matrix[40] == 0)
					begin
						error_flag = 1'b1;			//Assigning error_flag is equal to 1
					end
					
					else
					begin
						//Swap
						tmp = matrix[40];
						matrix[40]= matrix[0];
						matrix[0]=tmp;
						
						
						tmp = matrix[41];
						matrix[41]= matrix[1];
						matrix[1]=tmp;
						
						
						tmp = matrix[42];
						matrix[42]= matrix[2];
						matrix[2]=tmp;
						
						
						tmp = matrix[43];
						matrix[43]= matrix[3];
						matrix[3]=tmp;
						
						
						tmp = matrix[44];
						matrix[44]= matrix[4];
						matrix[4]=tmp;
						
						
						tmp = matrix[45];
						matrix[45]= matrix[5];
						matrix[5]=tmp;
						
						
						tmp = matrix[46];
						matrix[46]= matrix[6];
						matrix[6]=tmp;
						
						
						tmp = matrix[47];
						matrix[47]= matrix[7];
						matrix[7]=tmp;
						
						
						tmp = matrix[48];
						matrix[48]= matrix[8];
						matrix[8]=tmp;
						
						
						tmp = matrix[49];
						matrix[49]= matrix[9];
						matrix[9]=tmp;
						
					end
				end
				
				else
				begin
						tmp = matrix[30];
						matrix[30]= matrix[0];
						matrix[0]=tmp;
						
						
						tmp = matrix[31];
						matrix[31]= matrix[1];
						matrix[1]=tmp;
						
						
						tmp = matrix[32];
						matrix[32]= matrix[2];
						matrix[2]=tmp;
						
						
						tmp = matrix[33];
						matrix[33]= matrix[3];
						matrix[3]=tmp;
						
						
						tmp = matrix[34];
						matrix[34]= matrix[4];
						matrix[4]=tmp;
						
						
						tmp = matrix[35];
						matrix[35]= matrix[5];
						matrix[5]=tmp;
						
						
						tmp = matrix[36];
						matrix[36]= matrix[6];
						matrix[6]=tmp;
						
						
						tmp = matrix[37];
						matrix[37]= matrix[7];
						matrix[7]=tmp;
						
						
						tmp = matrix[38];
						matrix[38]= matrix[8];
						matrix[8]=tmp;
						
						
						tmp = matrix[39];
						matrix[39]= matrix[9];
						matrix[9]=tmp;
				end
			end
			
			else
			begin
						tmp = matrix[20];
						matrix[20]= matrix[0];
						matrix[0]=tmp;
						
						
						tmp = matrix[21];
						matrix[21]= matrix[1];
						matrix[1]=tmp;
						
						
						tmp = matrix[22];
						matrix[22]= matrix[2];
						matrix[2]=tmp;
						
						
						tmp = matrix[23];
						matrix[23]= matrix[3];
						matrix[3]=tmp;
						
						
						tmp = matrix[24];
						matrix[24]= matrix[4];
						matrix[4]=tmp;
						
						
						tmp = matrix[25];
						matrix[25]= matrix[5];
						matrix[5]=tmp;
						
						
						tmp = matrix[26];
						matrix[26]= matrix[6];
						matrix[6]=tmp;
						
						
						tmp = matrix[27];
						matrix[27]= matrix[7];
						matrix[7]=tmp;
						
						
						tmp = matrix[28];
						matrix[28]= matrix[8];
						matrix[8]=tmp;
						
						
						tmp = matrix[29];
						matrix[29]= matrix[9];
						matrix[9]=tmp;
			end
		end
		
		else
		begin
						tmp = matrix[10];
						matrix[10]= matrix[0];
						matrix[0]=tmp;
						
						
						tmp = matrix[11];
						matrix[11]= matrix[1];
						matrix[1]=tmp;
						
						
						tmp = matrix[12];
						matrix[12]= matrix[2];
						matrix[2]=tmp;
						
						
						tmp = matrix[13];
						matrix[13]= matrix[3];
						matrix[3]=tmp;
						
						
						tmp = matrix[14];
						matrix[14]= matrix[4];
						matrix[4]=tmp;
						
						
						tmp = matrix[15];
						matrix[15]= matrix[5];
						matrix[5]=tmp;
						
						
						tmp = matrix[16];
						matrix[16]= matrix[6];
						matrix[6]=tmp;
						
						
						tmp = matrix[17];
						matrix[17]= matrix[7];
						matrix[7]=tmp;
						
						
						tmp = matrix[18];
						matrix[18]= matrix[8];
						matrix[8]=tmp;
						
						
						tmp = matrix[19];
						matrix[19]= matrix[9];
						matrix[9]=tmp;
		end	
	end


//Making column 1 zero  

	
	matrix[11] = matrix[0] * matrix[11] - matrix[10] * matrix[1];
	matrix[12] = matrix[0] * matrix[12] - matrix[10] * matrix[2];
	matrix[13] = matrix[0] * matrix[13] - matrix[10] * matrix[3];
	matrix[14] = matrix[0] * matrix[14] - matrix[10] * matrix[4];
	matrix[15] = matrix[0] * matrix[15] - matrix[10] * matrix[5];
	matrix[16] = matrix[0] * matrix[16] - matrix[10] * matrix[6];
	matrix[17] = matrix[0] * matrix[17] - matrix[10] * matrix[7];
	matrix[18] = matrix[0] * matrix[18] - matrix[10] * matrix[8];
	matrix[19] = matrix[0] * matrix[19] - matrix[10] * matrix[9];
	matrix[10] = matrix[0] * matrix[10] - matrix[10] * matrix[0];
	
	
	matrix[21] = matrix[0] * matrix[21] - matrix[20] * matrix[1];
	matrix[22] = matrix[0] * matrix[22] - matrix[20] * matrix[2];
	matrix[23] = matrix[0] * matrix[23] - matrix[20] * matrix[3];
	matrix[24] = matrix[0] * matrix[24] - matrix[20] * matrix[4];
	matrix[25] = matrix[0] * matrix[25] - matrix[20] * matrix[5];
	matrix[26] = matrix[0] * matrix[26] - matrix[20] * matrix[6];
	matrix[27] = matrix[0] * matrix[27] - matrix[20] * matrix[7];
	matrix[28] = matrix[0] * matrix[28] - matrix[20] * matrix[8];
	matrix[29] = matrix[0] * matrix[29] - matrix[20] * matrix[9];
	matrix[20] = matrix[0] * matrix[20] - matrix[20] * matrix[0];

	
	matrix[31] = matrix[0] * matrix[31] - matrix[30] * matrix[1];
	matrix[32] = matrix[0] * matrix[32] - matrix[30] * matrix[2];
	matrix[33] = matrix[0] * matrix[33] - matrix[30] * matrix[3];
	matrix[34] = matrix[0] * matrix[34] - matrix[30] * matrix[4];
	matrix[35] = matrix[0] * matrix[35] - matrix[30] * matrix[5];
	matrix[36] = matrix[0] * matrix[36] - matrix[30] * matrix[6];
	matrix[37] = matrix[0] * matrix[37] - matrix[30] * matrix[7];
	matrix[38] = matrix[0] * matrix[38] - matrix[30] * matrix[8];
	matrix[39] = matrix[0] * matrix[39] - matrix[30] * matrix[9];	
	matrix[30] = matrix[0] * matrix[30] - matrix[30] * matrix[0];
	
	
	matrix[41] = matrix[0] * matrix[41] - matrix[40] * matrix[1];
	matrix[42] = matrix[0] * matrix[42] - matrix[40] * matrix[2];
	matrix[43] = matrix[0] * matrix[43] - matrix[40] * matrix[3];
	matrix[44] = matrix[0] * matrix[44] - matrix[40] * matrix[4];
	matrix[45] = matrix[0] * matrix[45] - matrix[40] * matrix[5];
	matrix[46] = matrix[0] * matrix[46] - matrix[40] * matrix[6];
	matrix[47] = matrix[0] * matrix[47] - matrix[40] * matrix[7];
	matrix[48] = matrix[0] * matrix[48] - matrix[40] * matrix[8];
	matrix[49] = matrix[0] * matrix[49] - matrix[40] * matrix[9];
	matrix[40] = matrix[0] * matrix[40] - matrix[40] * matrix[0];

//Checking if pivots are zero or not (poivots from row 2)
	if(matrix[11] == 0)
	begin
		if(matrix[21] == 0)
		begin
			if(matrix[31] == 0)
			begin
				if(matrix[41] == 0)
				begin
					error_flag = 1'b1;			//Assigning error_flag is equal to 1
				end
				
				else
				begin
						tmp = matrix[40];
						matrix[40]= matrix[10];
						matrix[10]=tmp;
						
						
						tmp = matrix[41];
						matrix[41]= matrix[11];
						matrix[11]=tmp;
						
						
						tmp = matrix[42];
						matrix[42]= matrix[12];
						matrix[12]=tmp;
						
						
						tmp = matrix[43];
						matrix[43]= matrix[13];
						matrix[13]=tmp;
						
						
						tmp = matrix[44];
						matrix[44]= matrix[14];
						matrix[14]=tmp;
						
						
						tmp = matrix[45];
						matrix[45]= matrix[15];
						matrix[15]=tmp;
						
						
						tmp = matrix[46];
						matrix[46]= matrix[16];
						matrix[16]=tmp;
						
						
						tmp = matrix[47];
						matrix[47]= matrix[17];
						matrix[17]=tmp;
						
						
						tmp = matrix[48];
						matrix[48]= matrix[18];
						matrix[18]=tmp;
						
						
						tmp = matrix[49];
						matrix[49]= matrix[19];
						matrix[19]=tmp;					
				end
			end
			
			else
			begin
					//Swap
					tmp = matrix[30];
					matrix[30]= matrix[10];
					matrix[10]=tmp;
					
					
					tmp = matrix[31];
					matrix[31]= matrix[11];
					matrix[11]=tmp;
					
					
					tmp = matrix[32];
					matrix[32]= matrix[12];
					matrix[12]=tmp;
					
					
					tmp = matrix[33];
					matrix[33]= matrix[13];
					matrix[13]=tmp;
					
					
					tmp = matrix[34];
					matrix[34]= matrix[14];
					matrix[14]=tmp;
					
					
					tmp = matrix[35];
					matrix[35]= matrix[15];
					matrix[15]=tmp;
					
					
					tmp = matrix[36];
					matrix[36]= matrix[16];
					matrix[16]=tmp;
					
					
					tmp = matrix[37];
					matrix[37]= matrix[17];
					matrix[17]=tmp;
					
					
					tmp = matrix[38];
					matrix[38]= matrix[18];
					matrix[18]=tmp;
					
					
					tmp = matrix[39];
					matrix[39]= matrix[19];
					matrix[19]=tmp;					
			end
		end
		
		else
		begin
			//Swap
			tmp = matrix[20];
			matrix[20]= matrix[10];
			matrix[10]=tmp;
			
			
			tmp = matrix[21];
			matrix[21]= matrix[11];
			matrix[11]=tmp;
			
			
			tmp = matrix[22];
			matrix[22]= matrix[12];
			matrix[12]=tmp;
			
			
			tmp = matrix[23];
			matrix[23]= matrix[13];
			matrix[13]=tmp;
			
			
			tmp = matrix[24];
			matrix[24]= matrix[14];
			matrix[14]=tmp;
			
			
			tmp = matrix[25];
			matrix[25]= matrix[15];
			matrix[15]=tmp;
			
			
			tmp = matrix[26];
			matrix[26]= matrix[16];
			matrix[16]=tmp;
			
			
			tmp = matrix[27];
			matrix[27]= matrix[17];
			matrix[17]=tmp;
			
			
			tmp = matrix[28];
			matrix[28]= matrix[18];
			matrix[18]=tmp;
			
			
			tmp = matrix[29];
			matrix[29]= matrix[19];
			matrix[19]=tmp;			
		end
	end


//Making zero in column 2
	matrix[20] = 0;
	
	matrix[22] = matrix[11] * matrix[22] - matrix[21] * matrix[12];
	matrix[23] = matrix[11] * matrix[23] - matrix[21] * matrix[13];
	matrix[24] = matrix[11] * matrix[24] - matrix[21] * matrix[14];
	matrix[25] = matrix[11] * matrix[25] - matrix[21] * matrix[15];
	matrix[26] = matrix[11] * matrix[26] - matrix[21] * matrix[16];
	matrix[27] = matrix[11] * matrix[27] - matrix[21] * matrix[17];
	matrix[28] = matrix[11] * matrix[28] - matrix[21] * matrix[18];
	matrix[29] = matrix[11] * matrix[29] - matrix[21] * matrix[19];
	matrix[21] = matrix[11] * matrix[21] - matrix[21] * matrix[11];
	
	matrix[30] = 0;
	
	matrix[32] = matrix[11] * matrix[32] - matrix[31] * matrix[12];
	matrix[33] = matrix[11] * matrix[33] - matrix[31] * matrix[13];
	matrix[34] = matrix[11] * matrix[34] - matrix[31] * matrix[14];
	matrix[35] = matrix[11] * matrix[35] - matrix[31] * matrix[15];
	matrix[36] = matrix[11] * matrix[36] - matrix[31] * matrix[16];
	matrix[37] = matrix[11] * matrix[37] - matrix[31] * matrix[17];
	matrix[38] = matrix[11] * matrix[38] - matrix[31] * matrix[18];
	matrix[39] = matrix[11] * matrix[39] - matrix[31] * matrix[19];
	matrix[31] = matrix[11] * matrix[31] - matrix[31] * matrix[11];
	
	matrix[40] = 0;
	
	matrix[42] = matrix[11] * matrix[42] - matrix[41] * matrix[12];
	matrix[43] = matrix[11] * matrix[43] - matrix[41] * matrix[13];
	matrix[44] = matrix[11] * matrix[44] - matrix[41] * matrix[14];
	matrix[45] = matrix[11] * matrix[45] - matrix[41] * matrix[15];
	matrix[46] = matrix[11] * matrix[46] - matrix[41] * matrix[16];
	matrix[47] = matrix[11] * matrix[47] - matrix[41] * matrix[17];
	matrix[48] = matrix[11] * matrix[48] - matrix[41] * matrix[18];
	matrix[49] = matrix[11] * matrix[49] - matrix[41] * matrix[19];
	matrix[41] = matrix[11] * matrix[41] - matrix[41] * matrix[11];

//Checking if pivots are zero or not(from row 3)
	if(matrix[22] == 0)
	begin
		if(matrix[32] == 0)
		begin
			if(matrix[42] == 0)
			begin
				error_flag = 1'b1;			//Assigning error_flag=1
			end
			
			else
			begin
				//Swap
				tmp = matrix[40];
				matrix[40]= matrix[20];
				matrix[20]=tmp;
				
				
				tmp = matrix[41];
				matrix[41]= matrix[21];
				matrix[21]=tmp;
				
				
				tmp = matrix[42];
				matrix[42]= matrix[22];
				matrix[22]=tmp;
				
				
				tmp = matrix[43];
				matrix[43]= matrix[23];
				matrix[23]=tmp;
				
				
				tmp = matrix[44];
				matrix[44]= matrix[24];
				matrix[24]=tmp;
				
				
				tmp = matrix[45];
				matrix[45]= matrix[25];
				matrix[25]=tmp;
				
				
				tmp = matrix[46];
				matrix[46]= matrix[26];
				matrix[26]=tmp;
				
				
				tmp = matrix[47];
				matrix[47]= matrix[27];
				matrix[27]=tmp;
				
				
				tmp = matrix[48];
				matrix[48]= matrix[28];
				matrix[28]=tmp;
				
				
				tmp = matrix[49];
				matrix[49]= matrix[29];
				matrix[29]=tmp;						
			end
		end
		
		else
		begin
		//Swap
			tmp = matrix[30];
			matrix[30]= matrix[20];
			matrix[20]=tmp;
			
			
			tmp = matrix[31];
			matrix[31]= matrix[21];
			matrix[21]=tmp;
			
			
			tmp = matrix[32];
			matrix[32]= matrix[22];
			matrix[22]=tmp;
			
			
			tmp = matrix[33];
			matrix[33]= matrix[23];
			matrix[23]=tmp;
			
			
			tmp = matrix[34];
			matrix[34]= matrix[24];
			matrix[24]=tmp;
			
			
			tmp = matrix[35];
			matrix[35]= matrix[25];
			matrix[25]=tmp;
			
			
			tmp = matrix[36];
			matrix[36]= matrix[26];
			matrix[26]=tmp;
			
			
			tmp = matrix[37];
			matrix[37]= matrix[27];
			matrix[27]=tmp;
			
			
			tmp = matrix[38];
			matrix[38]= matrix[28];
			matrix[28]=tmp;
			
			
			tmp = matrix[39];
			matrix[39]= matrix[29];
			matrix[29]=tmp;											
		end
	end

//Making zero in column 3
	matrix[30] = 0;
	matrix[31] = 0;
	
	matrix[33] = matrix[22] * matrix[33] - matrix[32] * matrix[23];
	matrix[34] = matrix[22] * matrix[34] - matrix[32] * matrix[24];
	matrix[35] = matrix[22] * matrix[35] - matrix[32] * matrix[25];
	matrix[36] = matrix[22] * matrix[36] - matrix[32] * matrix[26];
	matrix[37] = matrix[22] * matrix[37] - matrix[32] * matrix[27];
	matrix[38] = matrix[22] * matrix[38] - matrix[32] * matrix[28];
	matrix[39] = matrix[22] * matrix[39] - matrix[32] * matrix[29];
	matrix[32] = matrix[22] * matrix[32] - matrix[32] * matrix[22];
	
	matrix[40] = 0;
	matrix[41] = 0;
	
	matrix[43] = matrix[22] * matrix[43] - matrix[42] * matrix[23];
	matrix[44] = matrix[22] * matrix[44] - matrix[42] * matrix[24];
	matrix[45] = matrix[22] * matrix[45] - matrix[42] * matrix[25];
	matrix[46] = matrix[22] * matrix[46] - matrix[42] * matrix[26];
	matrix[47] = matrix[22] * matrix[47] - matrix[42] * matrix[27];
	matrix[48] = matrix[22] * matrix[48] - matrix[42] * matrix[28];
	matrix[49] = matrix[22] * matrix[49] - matrix[42] * matrix[29];	
	matrix[42] = matrix[22] * matrix[42] - matrix[42] * matrix[22];

	//Checking if pivots are zero or not
	if(matrix[33] == 0)
	begin
		if(matrix[43] == 0)
		begin
			error_flag = 1'b1;			//Assigning error_flag = 1
		end
		
		else
		begin
			//Swap
			tmp = matrix[40];
			matrix[40]= matrix[30];
			matrix[30]=tmp;
			
			
			tmp = matrix[41];
			matrix[41]= matrix[31];
			matrix[31]=tmp;
			
			
			tmp = matrix[42];
			matrix[42]= matrix[32];
			matrix[32]=tmp;
			
			
			tmp = matrix[43];
			matrix[43]= matrix[33];
			matrix[33]=tmp;
			
			
			tmp = matrix[44];
			matrix[44]= matrix[34];
			matrix[34]=tmp;
			
			
			tmp = matrix[45];
			matrix[45]= matrix[35];
			matrix[35]=tmp;
			
			
			tmp = matrix[46];
			matrix[46]= matrix[36];
			matrix[36]=tmp;
			
			
			tmp = matrix[47];
			matrix[47]= matrix[37];
			matrix[37]=tmp;
			
			
			tmp = matrix[48];
			matrix[48]= matrix[38];
			matrix[38]=tmp;
			
			
			tmp = matrix[49];
			matrix[49]= matrix[39];
			matrix[39]=tmp;						
		end
	end

	matrix[40] = 0;
	matrix[41] = 0;
	matrix[42] = 0;
	
	matrix[44] = matrix[33] * matrix[44] - matrix[43] * matrix[34];
	matrix[45] = matrix[33] * matrix[45] - matrix[43] * matrix[35];
	matrix[46] = matrix[33] * matrix[46] - matrix[43] * matrix[36];
	matrix[47] = matrix[33] * matrix[47] - matrix[43] * matrix[37];
	matrix[48] = matrix[33] * matrix[48] - matrix[43] * matrix[38];
	matrix[49] = matrix[33] * matrix[49] - matrix[43] * matrix[39];
	matrix[43] = matrix[33] * matrix[43] - matrix[43] * matrix[33];
	
	//Check pivot is zero or not
	if(matrix[44] == 0)
	begin
		error_flag = 1'b1;
	end

//Making zeros in the Column 5
	
	matrix[5] = matrix[44] * matrix[5] - matrix[4] * matrix[45];
	matrix[6] = matrix[44] * matrix[6] - matrix[4] * matrix[46];
	matrix[7] = matrix[44] * matrix[7] - matrix[4] * matrix[47];
	matrix[8] = matrix[44] * matrix[8] - matrix[4] * matrix[48];
	matrix[9] = matrix[44] * matrix[9] - matrix[4] * matrix[49];
	matrix[4] = matrix[44] * matrix[4] - matrix[4] * matrix[44];
	
	
	matrix[15] = matrix[44] * matrix[15] - matrix[14] * matrix[45];
	matrix[16] = matrix[44] * matrix[16] - matrix[14] * matrix[46];
	matrix[17] = matrix[44] * matrix[17] - matrix[14] * matrix[47];
	matrix[18] = matrix[44] * matrix[18] - matrix[14] * matrix[48];
	matrix[19] = matrix[44] * matrix[19] - matrix[14] * matrix[49];
	matrix[14] = matrix[44] * matrix[14] - matrix[14] * matrix[44];
	
	matrix[25] = matrix[44] * matrix[25] - matrix[24] * matrix[45];
	matrix[26] = matrix[44] * matrix[26] - matrix[24] * matrix[46];
	matrix[27] = matrix[44] * matrix[27] - matrix[24] * matrix[47];
	matrix[28] = matrix[44] * matrix[28] - matrix[24] * matrix[48];
	matrix[29] = matrix[44] * matrix[29] - matrix[24] * matrix[49];
	matrix[24] = matrix[44] * matrix[24] - matrix[24] * matrix[44];
	
	matrix[35] = matrix[44] * matrix[35] - matrix[34] * matrix[45];
	matrix[36] = matrix[44] * matrix[36] - matrix[34] * matrix[46];
	matrix[37] = matrix[44] * matrix[37] - matrix[34] * matrix[47];
	matrix[38] = matrix[44] * matrix[38] - matrix[34] * matrix[48];
	matrix[39] = matrix[44] * matrix[39] - matrix[34] * matrix[49];
	matrix[34] = matrix[44] * matrix[34] - matrix[34] * matrix[44];
	
//making zeros in Column 4
	matrix[4] = 0;
	matrix[5] = matrix[33] * matrix[5] - matrix[3] * matrix[35];
	matrix[6] = matrix[33] * matrix[6] - matrix[3] * matrix[36];
	matrix[7] = matrix[33] * matrix[7] - matrix[3] * matrix[37];
	matrix[8] = matrix[33] * matrix[8] - matrix[3] * matrix[38];
	matrix[9] = matrix[33] * matrix[9] - matrix[3] * matrix[39];
	matrix[3] = matrix[33] * matrix[3] - matrix[3] * matrix[33];
	
	matrix[14] = 0;
	matrix[15] = matrix[33] * matrix[15] - matrix[13] * matrix[35];
	matrix[16] = matrix[33] * matrix[16] - matrix[13] * matrix[36];
	matrix[17] = matrix[33] * matrix[17] - matrix[13] * matrix[37];
	matrix[18] = matrix[33] * matrix[18] - matrix[13] * matrix[38];
	matrix[19] = matrix[33] * matrix[19] - matrix[13] * matrix[39];
	matrix[13] = matrix[33] * matrix[13] - matrix[13] * matrix[33];
	
	matrix[24] = 0;
	matrix[25] = matrix[33] * matrix[25] - matrix[23] * matrix[35];
	matrix[26] = matrix[33] * matrix[26] - matrix[23] * matrix[36];
	matrix[27] = matrix[33] * matrix[27] - matrix[23] * matrix[37];
	matrix[28] = matrix[33] * matrix[28] - matrix[23] * matrix[38];
	matrix[29] = matrix[33] * matrix[29] - matrix[23] * matrix[39];
	matrix[23] = matrix[33] * matrix[23] - matrix[23] * matrix[33];
	
//making zeros in Columnn 3
	matrix[3] = 0;
	matrix[4] = 0;
	matrix[5] = matrix[22] * matrix[5] - matrix[2] * matrix[25];
	matrix[6] = matrix[22] * matrix[6] - matrix[2] * matrix[26];
	matrix[7] = matrix[22] * matrix[7] - matrix[2] * matrix[27];
	matrix[8] = matrix[22] * matrix[8] - matrix[2] * matrix[28];
	matrix[9] = matrix[22] * matrix[9] - matrix[2] * matrix[29];
	matrix[2] = matrix[22] * matrix[2] - matrix[2] * matrix[22];
	
	matrix[13] = 0;
	matrix[14] = 0;
	matrix[15] = matrix[22] * matrix[15] - matrix[12] * matrix[25];
	matrix[16] = matrix[22] * matrix[16] - matrix[12] * matrix[26];
	matrix[17] = matrix[22] * matrix[17] - matrix[12] * matrix[27];
	matrix[18] = matrix[22] * matrix[18] - matrix[12] * matrix[28];
	matrix[19] = matrix[22] * matrix[19] - matrix[12] * matrix[29];
	matrix[12] = matrix[22] * matrix[12] - matrix[12] * matrix[22];
	
//making zeros in Column 2
	matrix[2] =0;
	matrix[3] =0;
	matrix[4] = 0;
	matrix[5] = matrix[11] * matrix[5] - matrix[1] * matrix[15];
	matrix[6] = matrix[11] * matrix[6] - matrix[1] * matrix[16];
	matrix[7] = matrix[11] * matrix[7] - matrix[1] * matrix[17];
	matrix[8] = matrix[11] * matrix[8] - matrix[1] * matrix[18];
	matrix[9] = matrix[11] * matrix[9] - matrix[1] * matrix[19];
	matrix[1] = matrix[11] * matrix[1] - matrix[1] * matrix[11];
	
end

endmodule
