/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003635862995_1940473525_init();
    work_m_00000000004185362350_4278808104_init();
    work_m_00000000003328827814_2764620403_init();
    work_m_00000000000525434907_0410812591_init();
    work_m_00000000001638977175_0274277177_init();
    work_m_00000000003727221511_0520759566_init();
    work_m_00000000001962244781_1435565642_init();
    work_m_00000000002084593204_2850883277_init();
    work_m_00000000000651631509_1248939243_init();
    work_m_00000000002685200556_4133096117_init();
    work_m_00000000002804588867_2067668938_init();
    work_m_00000000004088879089_2889849035_init();
    work_m_00000000001836087014_3540511050_init();
    work_m_00000000001381806905_2092878769_init();
    work_m_00000000002855639076_0823565296_init();
    work_m_00000000000140089756_3272509503_init();
    work_m_00000000000047116488_1824703890_init();
    work_m_00000000003478126714_0144891941_init();
    work_m_00000000000039622309_1360888568_init();
    work_m_00000000004151184137_0200136322_init();
    work_m_00000000000641429329_3955074416_init();
    work_m_00000000003009651687_1114922909_init();
    work_m_00000000002527909560_1649133411_init();
    work_m_00000000001401364152_3114366264_init();
    work_m_00000000000260027309_3812720327_init();
    work_m_00000000003051134475_4151186793_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003051134475_4151186793");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
