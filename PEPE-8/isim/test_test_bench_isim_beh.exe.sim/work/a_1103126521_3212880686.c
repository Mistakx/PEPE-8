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
static const char *ng0 = "C:/Users/Mistakx/Desktop/PEPE-8/PEPE-8/test.vhd";



static void work_a_1103126521_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    static char *nl0[] = {&&LAB4, &&LAB4, &&LAB4, &&LAB3, &&LAB4, &&LAB4, &&LAB4, &&LAB4, &&LAB4};

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5186);
    t3 = (t0 + 1768U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 8U);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5194);
    t3 = (t0 + 1888U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 8U);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t5);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 3192);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1768U);
    t4 = *((char **)t3);
    t3 = (t0 + 5202);
    t7 = 1;
    if (8U == 8U)
        goto LAB8;

LAB9:    t7 = 0;

LAB10:    if (t7 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1888U);
    t2 = *((char **)t1);
    t1 = (t0 + 5218);
    t5 = 1;
    if (8U == 8U)
        goto LAB17;

LAB18:    t5 = 0;

LAB19:    if (t5 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB2;

LAB4:    xsi_set_current_line(70, ng0);
    goto LAB2;

LAB5:    xsi_set_current_line(62, ng0);
    t11 = (t0 + 5210);
    t13 = (t0 + 3272);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t11, 8U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB6;

LAB8:    t8 = 0;

LAB11:    if (t8 < 8U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t9 = (t4 + t8);
    t10 = (t3 + t8);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB9;

LAB13:    t8 = (t8 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(66, ng0);
    t9 = (t0 + 5226);
    t11 = (t0 + 3336);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB15;

LAB17:    t8 = 0;

LAB20:    if (t8 < 8U)
        goto LAB21;
    else
        goto LAB19;

LAB21:    t4 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t4) != *((unsigned char *)t6))
        goto LAB18;

LAB22:    t8 = (t8 + 1);
    goto LAB20;

}


extern void work_a_1103126521_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1103126521_3212880686_p_0};
	xsi_register_didat("work_a_1103126521_3212880686", "isim/test_test_bench_isim_beh.exe.sim/work/a_1103126521_3212880686.didat");
	xsi_register_executes(pe);
}
