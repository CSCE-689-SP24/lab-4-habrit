// © 2015 Synopsys, Inc.
// This Synopsys ZeBu Lab source code and all associated documentation are proprietary and
// confidential to Synopsys, Inc. and may only be used pursuant to the terms and conditions
// of a written license agreement with Synopsys, Inc. All other use, reproduction,
// modification, or distribution of the Synopsys ZeBu Lab source code or the associated
// documentation is strictly prohibited.

// Standard C libraries
#include <svdpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <iomanip>
#include <string>
//readenable, write enable, q_o and d_i are the arguments passed to the function
extern "C" void fifo_usage_spy_notify(int readenable, int writeenable, int q_o, int d_i)
{
    //If readenable is 1, then pass q_o into file called dataout.txt
    if(readenable == 1)
    {
        FILE *fp;
        fp = fopen("dataout.txt", "w");
        fprintf(fp, "%d\n", q_o);
        fclose(fp);
    }
    //If writeenable is 1, then pass d_i into file called datain.txt
    if(writeenable == 1)
    {
        FILE *fp;
        fp = fopen("datain.txt", "w");
        fprintf(fp, "%d\n", d_i);
        fclose(fp);
    }

}
{
//Function needs to read the value of read enable and write enable.



}







