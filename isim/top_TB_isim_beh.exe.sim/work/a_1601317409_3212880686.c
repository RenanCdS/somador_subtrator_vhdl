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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/ISE_Projects/somador_subtrator_n2/adder_subtractor.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1601317409_3212880686_p_0(char *t0)
{
    char t5[16];
    char t8[16];
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    static char *nl0[] = {&&LAB7, &&LAB7, &&LAB5, &&LAB6, &&LAB7, &&LAB7, &&LAB7, &&LAB7, &&LAB7};

LAB0:    t1 = (t0 + 2824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(17, ng0);

LAB14:    t2 = (t0 + 3392);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;

LAB1:    return;
LAB5:    xsi_set_current_line(18, ng0);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t0 + 5472U);
    t6 = xsi_base_array_concat(t6, t8, t9, (char)99, (unsigned char)2, (char)97, t7, t10, (char)101);
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t14 = ((IEEE_P_2592010699) + 4000);
    t15 = (t0 + 5488U);
    t11 = xsi_base_array_concat(t11, t13, t14, (char)99, (unsigned char)2, (char)97, t12, t15, (char)101);
    t16 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t5, t6, t8, t11, t13);
    t17 = (t5 + 12U);
    t18 = *((unsigned int *)t17);
    t19 = (1U * t18);
    t20 = (5U != t19);
    if (t20 == 1)
        goto LAB8;

LAB9:    t21 = (t0 + 3488);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t16, 5U);
    xsi_driver_first_trans_fast(t21);
    goto LAB4;

LAB6:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 5472U);
    t2 = xsi_base_array_concat(t2, t8, t6, (char)99, (unsigned char)2, (char)97, t3, t7, (char)101);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t0 + 5488U);
    t9 = xsi_base_array_concat(t9, t13, t11, (char)99, (unsigned char)2, (char)97, t10, t12, (char)101);
    t14 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t5, t2, t8, t9, t13);
    t15 = (t5 + 12U);
    t18 = *((unsigned int *)t15);
    t19 = (1U * t18);
    t4 = (5U != t19);
    if (t4 == 1)
        goto LAB10;

LAB11:    t16 = (t0 + 3488);
    t17 = (t16 + 56U);
    t21 = *((char **)t17);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t14, 5U);
    xsi_driver_first_trans_fast(t16);
    goto LAB4;

LAB7:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 5558);
    t6 = (t0 + 3488);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB4;

LAB8:    xsi_size_not_matching(5U, t19, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(5U, t19, 0);
    goto LAB11;

LAB12:    t3 = (t0 + 3392);
    *((int *)t3) = 0;
    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

static void work_a_1601317409_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(23, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3408);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1601317409_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1601317409_3212880686_p_0,(void *)work_a_1601317409_3212880686_p_1};
	xsi_register_didat("work_a_1601317409_3212880686", "isim/top_TB_isim_beh.exe.sim/work/a_1601317409_3212880686.didat");
	xsi_register_executes(pe);
}
