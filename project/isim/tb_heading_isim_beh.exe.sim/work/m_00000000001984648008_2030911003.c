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
static const char *ng0 = "E:/University/Logic Circuit/Lab/Prject/LC_Final/project/fsm.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {36U, 0U};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {5U, 0U};
static unsigned int ng6[] = {7U, 0U};
static int ng7[] = {1, 0};
static int ng8[] = {2, 0};
static int ng9[] = {3, 0};
static int ng10[] = {4, 0};
static int ng11[] = {5, 0};
static int ng12[] = {6, 0};
static unsigned int ng13[] = {6U, 0U};



static void Initial_45_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(45, ng0);

LAB2:    xsi_set_current_line(47, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(48, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 7);
    xsi_set_current_line(51, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2568);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 3);
    xsi_set_current_line(53, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 2728);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 8);

LAB1:    return;
}

static void Always_57_1(char *t0)
{
    char t13[8];
    char t39[8];
    char t63[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    int t64;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4216);
    *((int *)t2) = 1;
    t3 = (t0 + 3928);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(57, ng0);

LAB5:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB13;

LAB11:    if (*((unsigned int *)t2) == 0)
        goto LAB10;

LAB12:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;

LAB13:    t5 = (t13 + 4);
    t11 = (t3 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (~(t14));
    *((unsigned int *)t13) = t15;
    *((unsigned int *)t5) = 0;
    if (*((unsigned int *)t11) != 0)
        goto LAB15;

LAB14:    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 & 1U);
    t21 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t21 & 1U);
    t12 = (t13 + 4);
    t22 = *((unsigned int *)t12);
    t23 = (~(t22));
    t24 = *((unsigned int *)t13);
    t25 = (t24 & t23);
    t26 = (t25 != 0);
    if (t26 > 0)
        goto LAB16;

LAB17:    xsi_set_current_line(71, ng0);

LAB20:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB24;

LAB21:    if (t18 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t13) = 1;

LAB24:    t28 = (t13 + 4);
    t21 = *((unsigned int *)t28);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB25;

LAB26:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB32;

LAB29:    if (t18 != 0)
        goto LAB31;

LAB30:    *((unsigned int *)t13) = 1;

LAB32:    t28 = (t13 + 4);
    t21 = *((unsigned int *)t28);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB33;

LAB34:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB51;

LAB48:    if (t18 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t13) = 1;

LAB51:    t28 = (t13 + 4);
    t21 = *((unsigned int *)t28);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB52;

LAB53:
LAB54:
LAB35:
LAB27:
LAB18:    goto LAB2;

LAB6:    xsi_set_current_line(59, ng0);

LAB9:    xsi_set_current_line(60, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2088);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 1);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB8;

LAB10:    *((unsigned int *)t13) = 1;
    goto LAB13;

LAB15:    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t11);
    *((unsigned int *)t13) = (t16 | t17);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t11);
    *((unsigned int *)t5) = (t18 | t19);
    goto LAB14;

LAB16:    xsi_set_current_line(66, ng0);

LAB19:    xsi_set_current_line(67, ng0);
    t27 = ((char*)((ng1)));
    t28 = (t0 + 2088);
    xsi_vlogvar_assign_value(t28, t27, 0, 0, 1);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB18;

LAB23:    t27 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB24;

LAB25:    xsi_set_current_line(73, ng0);

LAB28:    xsi_set_current_line(74, ng0);
    t29 = ((char*)((ng4)));
    t30 = (t0 + 2568);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 3);
    goto LAB27;

LAB31:    t27 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB32;

LAB33:    xsi_set_current_line(76, ng0);

LAB36:    xsi_set_current_line(77, ng0);
    t29 = (t0 + 1528U);
    t30 = *((char **)t29);
    t29 = (t30 + 4);
    t26 = *((unsigned int *)t29);
    t31 = (~(t26));
    t32 = *((unsigned int *)t30);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB37;

LAB38:
LAB39:    goto LAB35;

LAB37:    xsi_set_current_line(77, ng0);

LAB40:    xsi_set_current_line(79, ng0);
    t35 = (t0 + 1688U);
    t36 = *((char **)t35);
    t35 = (t0 + 2728);
    t37 = (t35 + 56U);
    t38 = *((char **)t37);
    memset(t39, 0, 8);
    t40 = (t36 + 4);
    t41 = (t38 + 4);
    t42 = *((unsigned int *)t36);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = *((unsigned int *)t40);
    t46 = *((unsigned int *)t41);
    t47 = (t45 ^ t46);
    t48 = (t44 | t47);
    t49 = *((unsigned int *)t40);
    t50 = *((unsigned int *)t41);
    t51 = (t49 | t50);
    t52 = (~(t51));
    t53 = (t48 & t52);
    if (t53 != 0)
        goto LAB44;

LAB41:    if (t51 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t39) = 1;

LAB44:    t55 = (t39 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t39);
    t59 = (t58 & t57);
    t60 = (t59 != 0);
    if (t60 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB47:    goto LAB39;

LAB43:    t54 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(79, ng0);
    t61 = ((char*)((ng5)));
    t62 = (t0 + 2568);
    xsi_vlogvar_assign_value(t62, t61, 0, 0, 3);
    goto LAB47;

LAB50:    t27 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(85, ng0);

LAB55:    xsi_set_current_line(86, ng0);
    t29 = (t0 + 1528U);
    t30 = *((char **)t29);
    t29 = (t30 + 4);
    t26 = *((unsigned int *)t29);
    t31 = (~(t26));
    t32 = *((unsigned int *)t30);
    t33 = (t32 & t31);
    t34 = (t33 != 0);
    if (t34 > 0)
        goto LAB56;

LAB57:
LAB58:    goto LAB54;

LAB56:    xsi_set_current_line(86, ng0);

LAB59:    xsi_set_current_line(88, ng0);
    t35 = (t0 + 1688U);
    t36 = *((char **)t35);
    memset(t39, 0, 8);
    t35 = (t39 + 4);
    t37 = (t36 + 4);
    t42 = *((unsigned int *)t36);
    t43 = (t42 >> 0);
    t44 = (t43 & 1);
    *((unsigned int *)t39) = t44;
    t45 = *((unsigned int *)t37);
    t46 = (t45 >> 0);
    t47 = (t46 & 1);
    *((unsigned int *)t35) = t47;
    t38 = (t0 + 2408);
    t40 = (t0 + 2408);
    t41 = (t40 + 72U);
    t54 = *((char **)t41);
    t55 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t63, t54, 2, t55, 32, 1);
    t61 = (t63 + 4);
    t48 = *((unsigned int *)t61);
    t64 = (!(t48));
    if (t64 == 1)
        goto LAB60;

LAB61:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 1);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 1);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 2408);
    t11 = (t0 + 2408);
    t12 = (t11 + 72U);
    t27 = *((char **)t12);
    t28 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t39, t27, 2, t28, 32, 1);
    t29 = (t39 + 4);
    t15 = *((unsigned int *)t29);
    t64 = (!(t15));
    if (t64 == 1)
        goto LAB62;

LAB63:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 2);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 2);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 2408);
    t11 = (t0 + 2408);
    t12 = (t11 + 72U);
    t27 = *((char **)t12);
    t28 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t39, t27, 2, t28, 32, 1);
    t29 = (t39 + 4);
    t15 = *((unsigned int *)t29);
    t64 = (!(t15));
    if (t64 == 1)
        goto LAB64;

LAB65:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 3);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 3);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 2408);
    t11 = (t0 + 2408);
    t12 = (t11 + 72U);
    t27 = *((char **)t12);
    t28 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t39, t27, 2, t28, 32, 1);
    t29 = (t39 + 4);
    t15 = *((unsigned int *)t29);
    t64 = (!(t15));
    if (t64 == 1)
        goto LAB66;

LAB67:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 4);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 4);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 2408);
    t11 = (t0 + 2408);
    t12 = (t11 + 72U);
    t27 = *((char **)t12);
    t28 = ((char*)((ng10)));
    xsi_vlog_generic_convert_bit_index(t39, t27, 2, t28, 32, 1);
    t29 = (t39 + 4);
    t15 = *((unsigned int *)t29);
    t64 = (!(t15));
    if (t64 == 1)
        goto LAB68;

LAB69:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 5);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 5);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 2408);
    t11 = (t0 + 2408);
    t12 = (t11 + 72U);
    t27 = *((char **)t12);
    t28 = ((char*)((ng11)));
    xsi_vlog_generic_convert_bit_index(t39, t27, 2, t28, 32, 1);
    t29 = (t39 + 4);
    t15 = *((unsigned int *)t29);
    t64 = (!(t15));
    if (t64 == 1)
        goto LAB70;

LAB71:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 6);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 6);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 2408);
    t11 = (t0 + 2408);
    t12 = (t11 + 72U);
    t27 = *((char **)t12);
    t28 = ((char*)((ng12)));
    xsi_vlog_generic_convert_bit_index(t39, t27, 2, t28, 32, 1);
    t29 = (t39 + 4);
    t15 = *((unsigned int *)t29);
    t64 = (!(t15));
    if (t64 == 1)
        goto LAB72;

LAB73:    xsi_set_current_line(95, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t13 + 4);
    t4 = (t3 + 4);
    t6 = *((unsigned int *)t3);
    t7 = (t6 >> 7);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 7);
    t14 = (t10 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t13 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t13);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB74;

LAB75:    xsi_set_current_line(102, ng0);

LAB78:    xsi_set_current_line(103, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB76:    goto LAB58;

LAB60:    xsi_vlogvar_assign_value(t38, t39, 0, *((unsigned int *)t63), 1);
    goto LAB61;

LAB62:    xsi_vlogvar_assign_value(t5, t13, 0, *((unsigned int *)t39), 1);
    goto LAB63;

LAB64:    xsi_vlogvar_assign_value(t5, t13, 0, *((unsigned int *)t39), 1);
    goto LAB65;

LAB66:    xsi_vlogvar_assign_value(t5, t13, 0, *((unsigned int *)t39), 1);
    goto LAB67;

LAB68:    xsi_vlogvar_assign_value(t5, t13, 0, *((unsigned int *)t39), 1);
    goto LAB69;

LAB70:    xsi_vlogvar_assign_value(t5, t13, 0, *((unsigned int *)t39), 1);
    goto LAB71;

LAB72:    xsi_vlogvar_assign_value(t5, t13, 0, *((unsigned int *)t39), 1);
    goto LAB73;

LAB74:    xsi_set_current_line(97, ng0);

LAB77:    xsi_set_current_line(98, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2248);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 1);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB76;

}


extern void work_m_00000000001984648008_2030911003_init()
{
	static char *pe[] = {(void *)Initial_45_0,(void *)Always_57_1};
	xsi_register_didat("work_m_00000000001984648008_2030911003", "isim/tb_heading_isim_beh.exe.sim/work/m_00000000001984648008_2030911003.didat");
	xsi_register_executes(pe);
}
