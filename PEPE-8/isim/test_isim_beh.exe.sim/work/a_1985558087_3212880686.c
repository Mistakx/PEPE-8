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



static void work_a_1985558087_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    static char *nl0[] = {&&LAB4, &&LAB4, &&LAB4, &&LAB3, &&LAB4, &&LAB4, &&LAB4, &&LAB4, &&LAB4};

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 3232);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_delta(t4, 2U, 1, 0LL);
    goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);
    goto LAB2;

}


extern void work_a_1985558087_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1985558087_3212880686_p_0};
	xsi_register_didat("work_a_1985558087_3212880686", "isim/test_isim_beh.exe.sim/work/a_1985558087_3212880686.didat");
	xsi_register_executes(pe);
}
