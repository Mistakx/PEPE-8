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
    unsigned char t8;
    char *t9;
    int t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t1 = (t0 + 6603);
    t10 = xsi_mem_cmp(t1, t3, 3U);
    if (t10 == 1)
        goto LAB9;

LAB15:    t7 = (t0 + 6606);
    t11 = xsi_mem_cmp(t7, t3, 3U);
    if (t11 == 1)
        goto LAB10;

LAB16:    t12 = (t0 + 6609);
    t14 = xsi_mem_cmp(t12, t3, 3U);
    if (t14 == 1)
        goto LAB11;

LAB17:    t15 = (t0 + 6612);
    t17 = xsi_mem_cmp(t15, t3, 3U);
    if (t17 == 1)
        goto LAB12;

LAB18:    t18 = (t0 + 6615);
    t20 = xsi_mem_cmp(t18, t3, 3U);
    if (t20 == 1)
        goto LAB13;

LAB19:
LAB14:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4152);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    t1 = (t0 + 4072);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1192U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t3 = (t0 + 2288U);
    t9 = *((char **)t3);
    t3 = (t9 + 0);
    *((unsigned char *)t3) = t8;
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 2408U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    memcpy(t1, t3, 3U);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2528U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = t2;
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 2648U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((unsigned char *)t1) = t2;
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t1 = (t0 + 2768U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    memcpy(t1, t3, 3U);
    goto LAB6;

LAB9:    xsi_set_current_line(77, ng0);
    t21 = (t0 + 2288U);
    t22 = *((char **)t21);
    t2 = *((unsigned char *)t22);
    t21 = (t0 + 4152);
    t23 = (t21 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = t2;
    xsi_driver_first_trans_fast_port(t21);
    goto LAB8;

LAB10:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2648U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 4152);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = t2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB11:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2408U);
    t3 = *((char **)t1);
    t10 = (2 - 2);
    t27 = (t10 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t1 = (t3 + t29);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4152);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB12:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2408U);
    t3 = *((char **)t1);
    t10 = (1 - 2);
    t27 = (t10 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t1 = (t3 + t29);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4152);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB13:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2408U);
    t3 = *((char **)t1);
    t10 = (0 - 2);
    t27 = (t10 * -1);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t1 = (t3 + t29);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4152);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    t12 = (t9 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t2;
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
