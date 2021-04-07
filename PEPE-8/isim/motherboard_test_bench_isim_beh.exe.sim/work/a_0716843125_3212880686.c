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
static const char *ng0 = "C:/Users/Mistakx/Desktop/PEPE-8/PEPE-8/Registo_de_Flags.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0716843125_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(58, ng0);
    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    t3 = (t0 + 5570);
    t9 = xsi_mem_cmp(t3, t7, 3U);
    if (t9 == 1)
        goto LAB9;

LAB15:    t10 = (t0 + 5573);
    t12 = xsi_mem_cmp(t10, t7, 3U);
    if (t12 == 1)
        goto LAB10;

LAB16:    t13 = (t0 + 5576);
    t15 = xsi_mem_cmp(t13, t7, 3U);
    if (t15 == 1)
        goto LAB11;

LAB17:    t16 = (t0 + 5579);
    t18 = xsi_mem_cmp(t16, t7, 3U);
    if (t18 == 1)
        goto LAB12;

LAB18:    t19 = (t0 + 5582);
    t21 = xsi_mem_cmp(t19, t7, 3U);
    if (t21 == 1)
        goto LAB13;

LAB19:
LAB14:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(60, ng0);
    t22 = (t0 + 1192U);
    t23 = *((char **)t22);
    t24 = *((unsigned char *)t23);
    t22 = (t0 + 3552);
    t25 = (t22 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = t24;
    xsi_driver_first_trans_fast_port(t22);
    goto LAB8;

LAB10:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3552);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = t2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB11:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t9 = (2 - 2);
    t29 = (t9 * -1);
    t30 = (1U * t29);
    t31 = (0 + t30);
    t1 = (t3 + t31);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3552);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB12:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t9 = (1 - 2);
    t29 = (t9 * -1);
    t30 = (1U * t29);
    t31 = (0 + t30);
    t1 = (t3 + t31);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3552);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB13:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t9 = (0 - 2);
    t29 = (t9 * -1);
    t30 = (1U * t29);
    t31 = (0 + t30);
    t1 = (t3 + t31);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 3552);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB20:;
}


extern void work_a_0716843125_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0716843125_3212880686_p_0};
	xsi_register_didat("work_a_0716843125_3212880686", "isim/motherboard_test_bench_isim_beh.exe.sim/work/a_0716843125_3212880686.didat");
	xsi_register_executes(pe);
}
