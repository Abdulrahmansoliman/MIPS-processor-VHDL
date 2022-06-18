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

char *IEEE_P_0774719531;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *IEEE_P_2592010699;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    ieee_p_3620187407_init();
    std_textio_init();
    work_a_1489802966_3212880686_init();
    work_a_2750190074_3212880686_init();
    work_a_0186603999_3212880686_init();
    work_a_0734482308_3212880686_init();
    work_a_2096391741_3212880686_init();
    work_a_4106131694_3212880686_init();
    work_a_0457581329_3212880686_init();
    work_a_0507509139_3212880686_init();
    work_a_3179192713_3212880686_init();
    work_a_2023191012_2204037357_init();
    work_a_2412390203_3212880686_init();
    work_a_0290344353_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_1215300100_3212880686_init();
    work_a_1991350011_3212880686_init();
    work_a_0763730103_3212880686_init();
    work_a_1415465652_3212880686_init();
    work_a_1531675454_2372691052_init();


    xsi_register_tops("work_a_1531675454_2372691052");

    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
