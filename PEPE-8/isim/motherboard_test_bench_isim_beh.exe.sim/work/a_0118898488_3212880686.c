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
static const char *ng0 = "C:/Users/Mistakx/Desktop/PEPE-8/PEPE-8/Memoria_de_Instrucoes.vhd";



static void work_a_0118898488_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 10576);
    t4 = xsi_mem_cmp(t1, t2, 8U);
    if (t4 == 1)
        goto LAB3;

LAB7:    t5 = (t0 + 10584);
    t7 = xsi_mem_cmp(t5, t2, 8U);
    if (t7 == 1)
        goto LAB4;

LAB8:    t8 = (t0 + 10592);
    t10 = xsi_mem_cmp(t8, t2, 8U);
    if (t10 == 1)
        goto LAB5;

LAB9:
LAB6:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 10657);
    t3 = (t0 + 3192);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 10662);
    t3 = (t0 + 3256);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 10668);
    t3 = (t0 + 3320);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 3112);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(57, ng0);
    t11 = (t0 + 10600);
    t13 = (t0 + 3192);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 5U);
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 10605);
    t3 = (t0 + 3256);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 10611);
    t3 = (t0 + 3320);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB4:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 10619);
    t3 = (t0 + 3192);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 10624);
    t3 = (t0 + 3256);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 10630);
    t3 = (t0 + 3320);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 10638);
    t3 = (t0 + 3192);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 10643);
    t3 = (t0 + 3256);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 10649);
    t3 = (t0 + 3320);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB10:;
}


extern void work_a_0118898488_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0118898488_3212880686_p_0};
	xsi_register_didat("work_a_0118898488_3212880686", "isim/motherboard_test_bench_isim_beh.exe.sim/work/a_0118898488_3212880686.didat");
	xsi_register_executes(pe);
}
