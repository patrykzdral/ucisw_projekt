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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/lab/Desktop/NEWEST/ucisw_projekt-16.05.2018_refactoring/VGA_Colour_Changer_TB.vhd";



void work_a_3595278160_2372691052_sub_1680895618_2855802964(char *t0, char *t1)
{
    int t4;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int64 t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    char *t18;
    char *t19;
    int t20;

LAB0:    t4 = 0;
    t5 = 10;

LAB2:    if (t4 <= t5)
        goto LAB3;

LAB5:
LAB1:    return;
LAB3:    t6 = (t0 + 2012);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_delta(t6, 0U, 1, 0LL);
    t11 = (30 * 1000000LL);
    t12 = (t0 + 2012);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t12, 0U, 1, t11);
    t11 = (5 * 1000000LL);
    xsi_process_wait(t1, t11);

LAB9:    t6 = (t1 + 48U);
    t7 = *((char **)t6);
    t8 = (t7 + 1440U);
    *((unsigned int *)t8) = 1U;
    t9 = (t1 + 48U);
    t10 = *((char **)t9);
    t12 = (t10 + 0U);
    getcontext(t12);
    t13 = (t1 + 48U);
    t14 = *((char **)t13);
    t15 = (t14 + 1440U);
    t17 = *((unsigned int *)t15);
    if (t17 == 1)
        goto LAB10;

LAB11:    t16 = (t1 + 48U);
    t18 = *((char **)t16);
    t19 = (t18 + 1440U);
    *((unsigned int *)t19) = 3U;

LAB7:
LAB8:
LAB6:    t6 = (t0 + 2048);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_delta(t6, 0U, 1, 0LL);
    t11 = (20 * 1000000LL);
    t12 = (t0 + 2048);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t12, 0U, 1, t11);
    t11 = (95 * 1000000LL);
    xsi_process_wait(t1, t11);

LAB15:    t6 = (t1 + 48U);
    t7 = *((char **)t6);
    t8 = (t7 + 1440U);
    *((unsigned int *)t8) = 1U;
    t9 = (t1 + 48U);
    t10 = *((char **)t9);
    t12 = (t10 + 0U);
    getcontext(t12);
    t13 = (t1 + 48U);
    t14 = *((char **)t13);
    t15 = (t14 + 1440U);
    t17 = *((unsigned int *)t15);
    if (t17 == 1)
        goto LAB16;

LAB17:    t16 = (t1 + 48U);
    t18 = *((char **)t16);
    t19 = (t18 + 1440U);
    *((unsigned int *)t19) = 3U;

LAB13:
LAB14:
LAB12:
LAB4:    if (t4 == t5)
        goto LAB5;

LAB18:    t20 = (t4 + 1);
    t4 = t20;
    goto LAB2;

LAB10:    xsi_saveStackAndSuspend(t1);
    goto LAB11;

LAB16:    xsi_saveStackAndSuspend(t1);
    goto LAB17;

}

static void work_a_3595278160_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;

LAB0:    t1 = (t0 + 1780U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);
    t3 = (15 * 1000000LL);
    t2 = (t0 + 1680);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1680);
    work_a_3595278160_2372691052_sub_1680895618_2855802964(t0, t2);
    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_3595278160_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3595278160_2372691052_p_0};
	static char *se[] = {(void *)work_a_3595278160_2372691052_sub_1680895618_2855802964};
	xsi_register_didat("work_a_3595278160_2372691052", "isim/VGA_Colour_Changer_TB_isim_beh.exe.sim/work/a_3595278160_2372691052.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
