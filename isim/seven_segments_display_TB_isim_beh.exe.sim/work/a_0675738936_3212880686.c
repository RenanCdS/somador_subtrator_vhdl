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
static const char *ng0 = "/home/ise/ISE_Projects/somador_subtrator_n2/seven_segments_display.vhd";



static void work_a_0675738936_3212880686_p_0(char *t0)
{
    char *t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(14, ng0);

LAB3:    t1 = (t0 + 5044);
    t3 = (t0 + 3152);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0675738936_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;

LAB0:    t1 = (t0 + 2752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5048);
    t5 = xsi_mem_cmp(t2, t3, 4U);
    if (t5 == 1)
        goto LAB5;

LAB21:    t6 = (t0 + 5052);
    t8 = xsi_mem_cmp(t6, t3, 4U);
    if (t8 == 1)
        goto LAB6;

LAB22:    t9 = (t0 + 5056);
    t11 = xsi_mem_cmp(t9, t3, 4U);
    if (t11 == 1)
        goto LAB7;

LAB23:    t12 = (t0 + 5060);
    t14 = xsi_mem_cmp(t12, t3, 4U);
    if (t14 == 1)
        goto LAB8;

LAB24:    t15 = (t0 + 5064);
    t17 = xsi_mem_cmp(t15, t3, 4U);
    if (t17 == 1)
        goto LAB9;

LAB25:    t18 = (t0 + 5068);
    t20 = xsi_mem_cmp(t18, t3, 4U);
    if (t20 == 1)
        goto LAB10;

LAB26:    t21 = (t0 + 5072);
    t23 = xsi_mem_cmp(t21, t3, 4U);
    if (t23 == 1)
        goto LAB11;

LAB27:    t24 = (t0 + 5076);
    t26 = xsi_mem_cmp(t24, t3, 4U);
    if (t26 == 1)
        goto LAB12;

LAB28:    t27 = (t0 + 5080);
    t29 = xsi_mem_cmp(t27, t3, 4U);
    if (t29 == 1)
        goto LAB13;

LAB29:    t30 = (t0 + 5084);
    t32 = xsi_mem_cmp(t30, t3, 4U);
    if (t32 == 1)
        goto LAB14;

LAB30:    t33 = (t0 + 5088);
    t35 = xsi_mem_cmp(t33, t3, 4U);
    if (t35 == 1)
        goto LAB15;

LAB31:    t36 = (t0 + 5092);
    t38 = xsi_mem_cmp(t36, t3, 4U);
    if (t38 == 1)
        goto LAB16;

LAB32:    t39 = (t0 + 5096);
    t41 = xsi_mem_cmp(t39, t3, 4U);
    if (t41 == 1)
        goto LAB17;

LAB33:    t42 = (t0 + 5100);
    t44 = xsi_mem_cmp(t42, t3, 4U);
    if (t44 == 1)
        goto LAB18;

LAB34:    t45 = (t0 + 5104);
    t47 = xsi_mem_cmp(t45, t3, 4U);
    if (t47 == 1)
        goto LAB19;

LAB35:
LAB20:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5213);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(16, ng0);

LAB39:    t2 = (t0 + 3072);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB40;

LAB1:    return;
LAB5:    xsi_set_current_line(17, ng0);
    t48 = (t0 + 5108);
    t50 = (t0 + 3216);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t48, 7U);
    xsi_driver_first_trans_fast_port(t50);
    goto LAB4;

LAB6:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5115);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5122);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5129);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5136);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5143);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5150);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5157);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5164);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5171);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB15:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5178);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB16:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5185);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB17:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5192);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB18:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5199);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB19:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 5206);
    t4 = (t0 + 3216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB36:;
LAB37:    t3 = (t0 + 3072);
    *((int *)t3) = 0;
    goto LAB2;

LAB38:    goto LAB37;

LAB40:    goto LAB38;

}


extern void work_a_0675738936_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0675738936_3212880686_p_0,(void *)work_a_0675738936_3212880686_p_1};
	xsi_register_didat("work_a_0675738936_3212880686", "isim/seven_segments_display_TB_isim_beh.exe.sim/work/a_0675738936_3212880686.didat");
	xsi_register_executes(pe);
}