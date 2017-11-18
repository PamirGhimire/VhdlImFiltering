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
static const char *ng0 = "/home/pamir/Desktop/vhdl_MSCV_M2/projects/imFilteringUsingVhdl/tb_dffChain.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

void ieee_p_3564397177_sub_2863756418437601506_91900896(char *, char *, char *, char *, char *);


static void work_a_0006891729_2372691052_p_0(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t9;
    unsigned int t10;
    unsigned char t11;
    unsigned char t12;
    int64 t13;
    char *t14;

LAB0:    t1 = (t0 + 3080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2888);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3464);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2256U);
    t4 = (t0 + 6128);
    t6 = (t8 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 22;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t9 = (22 - 1);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t10;
    std_textio_file_open1(t2, t4, t8, (unsigned char)0);
    xsi_set_current_line(71, ng0);

LAB8:    t2 = (t0 + 2256U);
    t11 = std_textio_endfile(t2);
    t12 = (!(t11));
    if (t12 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2256U);
    std_textio_file_close(t2);
    xsi_set_current_line(85, ng0);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 2888);
    t5 = (t0 + 2256U);
    t6 = (t0 + 2432U);
    std_textio_readline(STD_TEXTIO, t4, t5, t6);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2888);
    t4 = (t0 + 2432U);
    t5 = (t0 + 1928U);
    t6 = *((char **)t5);
    t5 = (t0 + 5992U);
    ieee_p_3564397177_sub_2863756418437601506_91900896(IEEE_P_3564397177, t2, t4, t6, t5);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3528);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1808U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t13 = (t3 / 2);
    t2 = (t0 + 2888);
    xsi_process_wait(t2, t13);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:;
LAB12:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 3528);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1808U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t13 = (t3 / 2);
    t2 = (t0 + 2888);
    xsi_process_wait(t2, t13);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1928U);
    t4 = *((char **)t2);
    t2 = (t0 + 3592);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t14 = *((char **)t7);
    memcpy(t14, t4, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    goto LAB2;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

}


extern void work_a_0006891729_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0006891729_2372691052_p_0};
	xsi_register_didat("work_a_0006891729_2372691052", "isim/tb_dffChain_isim_beh.exe.sim/work/a_0006891729_2372691052.didat");
	xsi_register_executes(pe);
}
