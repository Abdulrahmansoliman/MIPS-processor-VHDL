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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Extra/Phase 2 final - Copy - Copy/Phase 2 final - Copy - Copy/SecondPhase (4)/SecondPhase/newdec.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_2412390203_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(17, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t10 = *((unsigned char *)t3);
    t1 = (t0 + 1032U);
    t4 = *((char **)t1);
    t1 = (t0 + 4836U);
    t11 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t4, t1);
    t12 = (t11 - 31);
    t13 = (t12 * -1);
    t14 = (1 * t13);
    t15 = (0U + t14);
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t16 = (t7 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t10;
    xsi_driver_first_trans_delta(t5, t15, 1, 0LL);
    goto LAB3;

}


extern void work_a_2412390203_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2412390203_3212880686_p_0};
	xsi_register_didat("work_a_2412390203_3212880686", "isim/newtb_isim_beh.exe.sim/work/a_2412390203_3212880686.didat");
	xsi_register_executes(pe);
}
