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
extern char *IEEE_P_2592010699;
static const char *ng1 = "C:/Users/Patryk Zdral/Documents/NEWEST/ucisw_projekt-16.05.2018_refactoring/FSM_String_TB.vhd";



void work_a_3547667572_2372691052_sub_3800173593_2855802964(char *t0, char *t1, char *t2)
{
    char t3[128];
    char t4[24];
    char t5[16];
    char t12[16];
    char t14[16];
    char t18[16];
    char t23[16];
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t13;
    char *t15;
    char *t16;
    int t17;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned char t35;
    char *t36;
    int t37;
    int t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    int64 t46;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 7;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 7);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t0 + 6752);
    t13 = ((IEEE_P_2592010699) + 4024);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 1;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (1 - 0);
    t9 = (t17 * 1);
    t9 = (t9 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t9;
    t11 = xsi_base_array_concat(t11, t12, t13, (char)97, t7, t14, (char)97, t2, t5, (char)101);
    t19 = ((IEEE_P_2592010699) + 4024);
    t16 = xsi_base_array_concat(t16, t18, t19, (char)97, t11, t12, (char)99, (unsigned char)2, (char)101);
    t20 = (t5 + 12U);
    t9 = *((unsigned int *)t20);
    t9 = (t9 * 1U);
    t21 = (2U + t9);
    t22 = (t21 + 1U);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 10;
    t25 = (t24 + 4U);
    *((int *)t25) = 0;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t26 = (0 - 10);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t25 = (t3 + 4U);
    t28 = ((IEEE_P_2592010699) + 4024);
    t29 = (t25 + 88U);
    *((char **)t29) = t28;
    t30 = (char *)alloca(t22);
    t31 = (t25 + 56U);
    *((char **)t31) = t30;
    memcpy(t30, t16, t22);
    t32 = (t25 + 64U);
    *((char **)t32) = t23;
    t33 = (t25 + 80U);
    *((unsigned int *)t33) = t22;
    t34 = (t4 + 4U);
    t35 = (t2 != 0);
    if (t35 == 1)
        goto LAB3;

LAB2:    t36 = (t4 + 12U);
    *((char **)t36) = t5;
    t37 = 0;
    t38 = 10;

LAB4:    if (t37 <= t38)
        goto LAB5;

LAB7:
LAB1:    return;
LAB3:    *((char **)t34) = t2;
    goto LAB2;

LAB5:    t39 = (t0 + 3816);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t0 + 6680U);
    t45 = (t44 + 12U);
    t27 = *((unsigned int *)t45);
    t27 = (t27 * 1U);
    memcpy(t43, t2, t27);
    xsi_driver_first_trans_fast(t39);
    t46 = (5 * 1000000LL);
    xsi_process_wait(t1, t46);

LAB11:    t6 = (t1 + 88U);
    t7 = *((char **)t6);
    t10 = (t7 + 2480U);
    *((unsigned int *)t10) = 1U;
    t11 = (t1 + 88U);
    t13 = *((char **)t11);
    t15 = (t13 + 0U);
    getcontext(t15);
    t16 = (t1 + 88U);
    t19 = *((char **)t16);
    t20 = (t19 + 2480U);
    t9 = *((unsigned int *)t20);
    if (t9 == 1)
        goto LAB12;

LAB13:    t24 = (t1 + 88U);
    t28 = *((char **)t24);
    t29 = (t28 + 2480U);
    *((unsigned int *)t29) = 3U;

LAB9:
LAB10:
LAB8:    t6 = (t0 + 3880);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_delta(t6, 0U, 1, 0LL);
    t46 = (50 * 1000000LL);
    t15 = (t0 + 3880);
    t16 = (t15 + 56U);
    t19 = *((char **)t16);
    t20 = (t19 + 56U);
    t24 = *((char **)t20);
    *((unsigned char *)t24) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t15, 0U, 1, t46);
    t46 = (95 * 1000000LL);
    xsi_process_wait(t1, t46);

LAB17:    t6 = (t1 + 88U);
    t7 = *((char **)t6);
    t10 = (t7 + 2480U);
    *((unsigned int *)t10) = 1U;
    t11 = (t1 + 88U);
    t13 = *((char **)t11);
    t15 = (t13 + 0U);
    getcontext(t15);
    t16 = (t1 + 88U);
    t19 = *((char **)t16);
    t20 = (t19 + 2480U);
    t9 = *((unsigned int *)t20);
    if (t9 == 1)
        goto LAB18;

LAB19:    t24 = (t1 + 88U);
    t28 = *((char **)t24);
    t29 = (t28 + 2480U);
    *((unsigned int *)t29) = 3U;

LAB15:
LAB16:
LAB14:
LAB6:    if (t37 == t38)
        goto LAB7;

LAB20:    t8 = (t37 + 1);
    t37 = t8;
    goto LAB4;

LAB12:    xsi_saveStackAndSuspend(t1);
    goto LAB13;

LAB18:    xsi_saveStackAndSuspend(t1);
    goto LAB19;

}

static void work_a_3547667572_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;

LAB0:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(100, ng1);
    t3 = (15 * 1000000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(101, ng1);
    t2 = (t0 + 3240);
    t4 = (t0 + 6754);
    work_a_3547667572_2372691052_sub_3800173593_2855802964(t0, t2, t4);
    xsi_set_current_line(102, ng1);
    t3 = (200 * 1000000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(103, ng1);
    t2 = (t0 + 3240);
    t4 = (t0 + 6762);
    work_a_3547667572_2372691052_sub_3800173593_2855802964(t0, t2, t4);
    xsi_set_current_line(104, ng1);
    t3 = (100 * 1000000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(105, ng1);
    t2 = (t0 + 3240);
    t4 = (t0 + 6770);
    work_a_3547667572_2372691052_sub_3800173593_2855802964(t0, t2, t4);
    xsi_set_current_line(106, ng1);
    t3 = (100 * 1000000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(107, ng1);
    t3 = (15 * 1000000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(108, ng1);
    t2 = (t0 + 3240);
    t4 = (t0 + 6778);
    work_a_3547667572_2372691052_sub_3800173593_2855802964(t0, t2, t4);
    xsi_set_current_line(109, ng1);
    t3 = (200 * 1000000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t3);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(110, ng1);
    t2 = (t0 + 3240);
    t4 = (t0 + 6786);
    work_a_3547667572_2372691052_sub_3800173593_2855802964(t0, t2, t4);
    xsi_set_current_line(111, ng1);
    t3 = (100 * 1000000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t3);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(112, ng1);
    t2 = (t0 + 3240);
    t4 = (t0 + 6794);
    work_a_3547667572_2372691052_sub_3800173593_2855802964(t0, t2, t4);
    xsi_set_current_line(113, ng1);
    t3 = (15 * 1000000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t3);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(114, ng1);
    t2 = (t0 + 3240);
    t4 = (t0 + 6802);
    work_a_3547667572_2372691052_sub_3800173593_2855802964(t0, t2, t4);
    xsi_set_current_line(115, ng1);
    t3 = (200 * 1000000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t3);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    xsi_set_current_line(116, ng1);
    t2 = (t0 + 3240);
    t4 = (t0 + 6810);
    work_a_3547667572_2372691052_sub_3800173593_2855802964(t0, t2, t4);
    xsi_set_current_line(117, ng1);
    t3 = (100 * 1000000LL);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t3);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(118, ng1);
    t2 = (t0 + 3240);
    t4 = (t0 + 6818);
    work_a_3547667572_2372691052_sub_3800173593_2855802964(t0, t2, t4);
    xsi_set_current_line(119, ng1);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    goto LAB2;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

}


extern void work_a_3547667572_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3547667572_2372691052_p_0};
	static char *se[] = {(void *)work_a_3547667572_2372691052_sub_3800173593_2855802964};
	xsi_register_didat("work_a_3547667572_2372691052", "isim/FSM_String_TB_isim_beh.exe.sim/work/a_3547667572_2372691052.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
