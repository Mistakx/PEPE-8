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
static const char *ng0 = "C:/Users/Mistakx/Desktop/PEPE-8/PEPE-8/ALU.vhd";
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767740470_2162500114(char *, char *, char *, char *, char *, char *);
int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_3064532541_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_4004982826_1035706684(char *, char *, char *, char *, int );
char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_3798478767_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_43738421_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t35[16];
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
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5312);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB15:    t5 = (t0 + 5316);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB16:    t8 = (t0 + 5320);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB17:    t11 = (t0 + 5324);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB18:    t14 = (t0 + 5328);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB19:    t17 = (t0 + 5332);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB20:    t20 = (t0 + 5336);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB21:    t23 = (t0 + 5340);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB22:    t26 = (t0 + 5344);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB23:    t29 = (t0 + 5348);
    t31 = xsi_mem_cmp(t29, t2, 4U);
    if (t31 == 1)
        goto LAB12;

LAB24:    t32 = (t0 + 5352);
    t34 = xsi_mem_cmp(t32, t2, 4U);
    if (t34 == 1)
        goto LAB13;

LAB25:
LAB14:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 5356);
    t3 = (t0 + 1968U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    memcpy(t3, t1, 8U);

LAB2:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 3352);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3272);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(59, ng0);
    t36 = (t0 + 1192U);
    t37 = *((char **)t36);
    t36 = (t0 + 5196U);
    t38 = (t0 + 1352U);
    t39 = *((char **)t38);
    t38 = (t0 + 5212U);
    t40 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t35, t37, t36, t39, t38);
    t41 = (t0 + 1968U);
    t42 = *((char **)t41);
    t41 = (t42 + 0);
    t43 = (t35 + 12U);
    t44 = *((unsigned int *)t43);
    t45 = (1U * t44);
    memcpy(t41, t40, t45);
    goto LAB2;

LAB4:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5196U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5212U);
    t6 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t35, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t35 + 12U);
    t44 = *((unsigned int *)t11);
    t45 = (1U * t44);
    memcpy(t8, t6, t45);
    goto LAB2;

LAB5:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5196U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5212U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t35, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t35 + 12U);
    t44 = *((unsigned int *)t11);
    t45 = (1U * t44);
    memcpy(t8, t6, t45);
    goto LAB2;

LAB6:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5196U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5212U);
    t6 = ieee_p_2592010699_sub_3798478767_503743352(IEEE_P_2592010699, t35, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t35 + 12U);
    t44 = *((unsigned int *)t11);
    t45 = (1U * t44);
    memcpy(t8, t6, t45);
    goto LAB2;

LAB7:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5196U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5212U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t35, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t35 + 12U);
    t44 = *((unsigned int *)t11);
    t45 = (1U * t44);
    memcpy(t8, t6, t45);
    goto LAB2;

LAB8:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5196U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5212U);
    t6 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t35, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t35 + 12U);
    t44 = *((unsigned int *)t11);
    t45 = (1U * t44);
    memcpy(t8, t6, t45);
    goto LAB2;

LAB9:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5196U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5212U);
    t6 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t35, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t35 + 12U);
    t44 = *((unsigned int *)t11);
    t45 = (1U * t44);
    memcpy(t8, t6, t45);
    goto LAB2;

LAB10:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5196U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5212U);
    t6 = ieee_p_2592010699_sub_43738421_503743352(IEEE_P_2592010699, t35, t2, t1, t5, t3);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t35 + 12U);
    t44 = *((unsigned int *)t11);
    t45 = (1U * t44);
    memcpy(t8, t6, t45);
    goto LAB2;

LAB11:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5196U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5212U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t3);
    t6 = ieee_p_1242562249_sub_4004982826_1035706684(IEEE_P_1242562249, t35, t2, t1, t4);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t35 + 12U);
    t44 = *((unsigned int *)t11);
    t44 = (t44 * 1U);
    memcpy(t8, t6, t44);
    goto LAB2;

LAB12:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5196U);
    t3 = (t0 + 1352U);
    t5 = *((char **)t3);
    t3 = (t0 + 5212U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t3);
    t6 = ieee_p_1242562249_sub_3064532541_1035706684(IEEE_P_1242562249, t35, t2, t1, t4);
    t8 = (t0 + 1968U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t11 = (t35 + 12U);
    t44 = *((unsigned int *)t11);
    t44 = (t44 * 1U);
    memcpy(t8, t6, t44);
    goto LAB2;

LAB13:    goto LAB2;

LAB26:;
}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/motherboard_test_bench_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
