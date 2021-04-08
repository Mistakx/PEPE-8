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
static const char *ng0 = "C:/Users/Mistakx/Desktop/PEPE-8/PEPE-8/PC.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1991350011_3212880686_p_0(char *t0)
{
    char t12[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned int t13;
    unsigned int t14;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3272);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB11;

LAB12:
LAB6:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1968U);
    t3 = *((char **)t1);
    t1 = (t0 + 3352);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 1512U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1968U);
    t3 = *((char **)t1);
    t1 = (t0 + 5152U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t3, t1, 1);
    t7 = (t0 + 1968U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    t11 = (t12 + 12U);
    t13 = *((unsigned int *)t11);
    t14 = (1U * t13);
    memcpy(t7, t4, t14);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1352U);
    t10 = *((char **)t3);
    t3 = (t0 + 1968U);
    t11 = *((char **)t3);
    t3 = (t11 + 0);
    memcpy(t3, t10, 8U);
    goto LAB9;

LAB11:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 5195);
    t7 = (t0 + 1968U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    memcpy(t7, t1, 8U);
    goto LAB6;

}


extern void work_a_1991350011_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1991350011_3212880686_p_0};
	xsi_register_didat("work_a_1991350011_3212880686", "isim/motherboard_test_bench_isim_beh.exe.sim/work/a_1991350011_3212880686.didat");
	xsi_register_executes(pe);
}
