.class public Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;
.super Ljava/lang/Object;
.source "RadioCapabilitySwitchUtil.java"


# static fields
.field public static final CN_MCC:Ljava/lang/String; = "460"

.field public static final DO_SWITCH:I = 0x0

.field public static final ICCID_ERROR:I = 0x3

.field public static final IMSI_NOT_READY:Ljava/lang/String; = "0"

.field public static final IMSI_NOT_READY_OR_SIM_LOCKED:I = 0x2

.field public static final IMSI_READY:Ljava/lang/String; = "1"

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAIN_SIM_PROP:Ljava/lang/String; = "persist.radio.simswitch.iccid"

.field public static final NOT_SHOW_DIALOG:I = 0x1

.field public static final NOT_SWITCH:I = 0x1

.field public static final NOT_SWITCH_SIM_INFO_NOT_READY:I = 0x2

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field public static final OP01_6M_PRIORITY_OP01_SIM:I = 0x1

.field public static final OP01_6M_PRIORITY_OP01_USIM:I = 0x0

.field public static final OP01_6M_PRIORITY_OTHER:I = 0x2

.field private static final PLMN_TABLE_OP01:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP02:[Ljava/lang/String;

.field private static final PLMN_TABLE_OP09:[Ljava/lang/String;

.field private static final PROPERTY_ICCID:Ljava/lang/String; = "ril.iccid.sim"

.field private static final PROPERTY_SIM_ICCID:[Ljava/lang/String;

.field private static final PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

.field public static final SHOW_DIALOG:I = 0x0

.field public static final SIM_OP_INFO_OP01:I = 0x2

.field public static final SIM_OP_INFO_OP02:I = 0x3

.field public static final SIM_OP_INFO_OP09:I = 0x4

.field public static final SIM_OP_INFO_OVERSEA:I = 0x1

.field public static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field public static final SIM_SWITCH_MODE_DUAL_TALK:I = 0x3

.field public static final SIM_SWITCH_MODE_DUAL_TALK_SWAP:I = 0x4

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS:I = 0x1

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE:I = 0x2

.field public static final SIM_TYPE_OTHER:I = 0x2

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_USIM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v3

    const-string v1, "46002"

    aput-object v1, v0, v4

    const-string v1, "46007"

    aput-object v1, v0, v5

    const-string v1, "46008"

    aput-object v1, v0, v6

    const-string v1, "45412"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "45413"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "00101"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "00211"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "00321"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "00431"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "00541"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "00651"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "00761"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "00871"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "00902"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "01012"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "01122"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "01232"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "46004"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "46602"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "50270"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    .line 95
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "46001"

    aput-object v1, v0, v3

    const-string v1, "46006"

    aput-object v1, v0, v4

    const-string v1, "46009"

    aput-object v1, v0, v5

    const-string v1, "45407"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    .line 99
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "46005"

    aput-object v1, v0, v3

    const-string v1, "45502"

    aput-object v1, v0, v4

    const-string v1, "46003"

    aput-object v1, v0, v5

    const-string v1, "46011"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    .line 106
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v4

    const-string v1, "ril.iccid.sim3"

    aput-object v1, v0, v5

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    .line 122
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "ril.imsi.status.sim1"

    aput-object v1, v0, v3

    const-string v1, "ril.imsi.status.sim2"

    aput-object v1, v0, v4

    const-string v1, "ril.imsi.status.sim3"

    aput-object v1, v0, v5

    const-string v1, "ril.imsi.status.sim4"

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOp01(I[I[I)Z
    .locals 11
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v6, 0x1

    .line 422
    const-string v8, "persist.radio.simswitch"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .line 424
    .local v0, "curPhoneId":I
    const/4 v3, 0x0

    .line 425
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 426
    .local v4, "insertedStatus":I
    array-length v5, p1

    .line 427
    .local v5, "phoneNum":I
    new-array v1, v5, [Ljava/lang/String;

    .line 428
    .local v1, "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 429
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ril.iccid.sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v2

    .line 430
    const-string v8, "N/A"

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 431
    add-int/lit8 v3, v3, 0x1

    .line 432
    shl-int v8, v6, v2

    or-int/2addr v4, v8

    .line 428
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkOp01 : curPhoneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", insertedSimCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 437
    if-ne v3, v6, :cond_2

    .line 438
    const-string v7, "checkOp01 : single SIM case, switch!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 501
    :goto_1
    return v6

    .line 441
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isOp01LCProject()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 442
    aget v8, p2, p0

    if-ne v8, v10, :cond_3

    aget v8, p2, v0

    if-eq v8, v10, :cond_3

    .line 444
    const-string v6, "checkOp01 : case L+C; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 445
    goto :goto_1

    .line 448
    :cond_3
    aget v8, p1, p0

    if-ne v8, v10, :cond_6

    .line 449
    aget v8, p2, p0

    if-nez v8, :cond_5

    .line 450
    aget v8, p1, v0

    if-ne v8, v10, :cond_4

    aget v8, p2, v0

    if-eqz v8, :cond_4

    .line 452
    const-string v6, "checkOp01 : case 1,2; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 453
    goto :goto_1

    .line 457
    :cond_4
    const-string v7, "checkOp01 : case 3,4"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_5
    const-string v7, "checkOp01 : case 1,2"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :cond_6
    aget v8, p1, p0

    if-ne v8, v6, :cond_a

    .line 467
    aget v8, p1, v0

    if-ne v8, v10, :cond_7

    .line 468
    const-string v6, "checkOp01 : case 1,2,3,4; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 469
    goto :goto_1

    .line 470
    :cond_7
    aget v8, p2, p0

    if-nez v8, :cond_9

    .line 471
    aget v8, p1, v0

    if-ne v8, v6, :cond_8

    aget v8, p2, v0

    if-eqz v8, :cond_8

    .line 473
    const-string v6, "checkOp01 : case 5,6; stay in current phone"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 474
    goto :goto_1

    .line 478
    :cond_8
    const-string v7, "checkOp01 : case 7,8"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 484
    :cond_9
    const-string v7, "checkOp01 : case 5,6"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 488
    :cond_a
    aget v8, p1, p0

    if-nez v8, :cond_b

    .line 489
    const-string v8, "checkOp01 : case 10, target IMSI not ready"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 490
    if-gt v4, v10, :cond_b

    .line 491
    const-string v7, "checkOp01 : case 10, single SIM case, switch!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 495
    :cond_b
    const-string v8, "ro.mtk_world_phone_policy"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 496
    const-string v7, "checkOp01 : case 11, op01-B, switch it!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 500
    :cond_c
    const-string v6, "checkOp01 : case 9"

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v6, v7

    .line 501
    goto/16 :goto_1
.end method

.method private static checkOp01LC(I[I[I)Z
    .locals 12
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 506
    const-string v9, "persist.radio.simswitch"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 508
    .local v0, "curPhoneId":I
    const/4 v3, 0x0

    .line 509
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 510
    .local v4, "insertedStatus":I
    array-length v5, p1

    .line 511
    .local v5, "phoneNum":I
    new-array v1, v5, [Ljava/lang/String;

    .line 512
    .local v1, "currIccId":[Ljava/lang/String;
    new-array v6, v5, [I

    .line 513
    .local v6, "priority":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_4

    .line 514
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ril.iccid.sim"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v2

    .line 515
    const-string v9, "N/A"

    aget-object v10, v1, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 516
    add-int/lit8 v3, v3, 0x1

    .line 517
    shl-int v9, v7, v2

    or-int/2addr v4, v9

    .line 519
    :cond_0
    aget v9, p1, v2

    if-ne v9, v11, :cond_3

    .line 520
    aget v9, p2, v2

    if-ne v9, v7, :cond_2

    .line 521
    aput v8, v6, v2

    .line 513
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    :cond_2
    aget v9, p2, v2

    if-nez v9, :cond_1

    .line 523
    aput v7, v6, v2

    goto :goto_1

    .line 526
    :cond_3
    aput v11, v6, v2

    goto :goto_1

    .line 530
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkOp01LC(curPhoneId): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 531
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkOp01LC(insertedSimCount): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 532
    if-ne v3, v7, :cond_5

    .line 533
    const-string v8, "checkOp01LC : single SIM case, switch!"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 541
    :goto_2
    return v7

    .line 536
    :cond_5
    aget v9, v6, p0

    aget v10, v6, v0

    if-gt v9, v10, :cond_6

    .line 537
    const-string v8, "checkOp01LC : target priority greater than or equal to current, switch!"

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 540
    :cond_6
    const-string v7, "checkOp01LC : target priority lower than current; stay in current phone"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v7, v8

    .line 541
    goto :goto_2
.end method

.method public static clearAllRilMccMnc(I)V
    .locals 2
    .param p0, "phoneNum"    # I

    .prologue
    .line 786
    const-string v1, "clearAllRilMccMnc"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 787
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 788
    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->clearRilMccMnc(I)V

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 790
    :cond_0
    return-void
.end method

.method public static clearAllSimImsiStatus()V
    .locals 2

    .prologue
    .line 779
    const-string v1, "clearAllSimImsiStatus"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 781
    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateSimImsiStatus(ILjava/lang/String;)V

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    :cond_0
    return-void
.end method

.method public static clearRilMccMnc(I)V
    .locals 3
    .param p0, "slot"    # I

    .prologue
    .line 769
    if-nez p0, :cond_0

    .line 770
    const-string v0, "gsm.sim.ril.mcc.mnc"

    .line 774
    .local v0, "propStr":Ljava/lang/String;
    :goto_0
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 776
    return-void

    .line 772
    .end local v0    # "propStr":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "propStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I
    .locals 6
    .param p0, "curId"    # I
    .param p1, "op01Usim"    # [Z
    .param p2, "op01Sim"    # [Z
    .param p3, "overseaUsim"    # [Z
    .param p4, "overseaSim"    # [Z

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 348
    const/4 v2, -0x1

    .line 349
    .local v2, "targetSim":I
    array-length v1, p1

    .line 351
    .local v1, "phoneNum":I
    aget-boolean v3, p1, p0

    if-ne v3, v4, :cond_0

    .line 383
    .end local p0    # "curId":I
    :goto_0
    return p0

    .line 354
    .restart local p0    # "curId":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 355
    aget-boolean v3, p1, v0

    if-ne v3, v4, :cond_1

    .line 356
    move v2, v0

    .line 354
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    :cond_2
    if-ne v2, v5, :cond_3

    aget-boolean v3, p2, p0

    if-ne v3, v4, :cond_4

    :cond_3
    move p0, v2

    .line 360
    goto :goto_0

    .line 362
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_6

    .line 363
    aget-boolean v3, p2, v0

    if-ne v3, v4, :cond_5

    .line 364
    move v2, v0

    .line 362
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 367
    :cond_6
    if-ne v2, v5, :cond_7

    aget-boolean v3, p3, p0

    if-ne v3, v4, :cond_8

    :cond_7
    move p0, v2

    .line 368
    goto :goto_0

    .line 370
    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_a

    .line 371
    aget-boolean v3, p3, v0

    if-ne v3, v4, :cond_9

    .line 372
    move v2, v0

    .line 370
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 375
    :cond_a
    if-ne v2, v5, :cond_b

    aget-boolean v3, p4, p0

    if-ne v3, v4, :cond_c

    :cond_b
    move p0, v2

    .line 376
    goto :goto_0

    .line 378
    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_e

    .line 379
    aget-boolean v3, p4, v0

    if-ne v3, v4, :cond_d

    .line 380
    move v2, v0

    .line 378
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    move p0, v2

    .line 383
    goto :goto_0
.end method

.method public static getHighestPriorityPhone(I[I)I
    .locals 9
    .param p0, "capPhoneId"    # I
    .param p1, "priority"    # [I

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x1

    .line 394
    const/4 v4, 0x0

    .line 395
    .local v4, "targetPhone":I
    array-length v3, p1

    .line 396
    .local v3, "phoneNum":I
    const/4 v1, 0x0

    .line 397
    .local v1, "highestPriorityCount":I
    const/4 v0, 0x0

    .line 399
    .local v0, "highestPriorityBitMap":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 400
    aget v6, p1, v2

    aget v7, p1, v4

    if-ge v6, v7, :cond_1

    .line 401
    move v4, v2

    .line 402
    const/4 v1, 0x1

    .line 403
    shl-int v0, v8, v2

    .line 399
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 404
    :cond_1
    aget v6, p1, v2

    aget v7, p1, v4

    if-ne v6, v7, :cond_0

    .line 405
    add-int/lit8 v1, v1, 0x1

    .line 406
    shl-int v6, v8, v2

    or-int/2addr v0, v6

    goto :goto_1

    .line 409
    :cond_2
    if-ne v1, v8, :cond_3

    .line 418
    .end local v4    # "targetPhone":I
    :goto_2
    return v4

    .line 411
    .restart local v4    # "targetPhone":I
    :cond_3
    if-ne p0, v5, :cond_4

    move v4, v5

    .line 414
    goto :goto_2

    .line 415
    :cond_4
    shl-int v6, v8, p0

    and-int/2addr v6, v0

    if-eqz v6, :cond_5

    move v4, p0

    .line 416
    goto :goto_2

    :cond_5
    move v4, v5

    .line 418
    goto :goto_2
.end method

.method public static getMainCapabilityPhoneId()I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, "phoneId":I
    const-string v2, "ro.mtk_dt_support"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v4, :cond_4

    .line 552
    const-string v2, "persist.ril.simswitch.swapmode"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 553
    .local v1, "swapMode":I
    if-ne v1, v5, :cond_3

    .line 554
    const/4 v0, 0x0

    .line 561
    .end local v1    # "swapMode":I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    if-nez v0, :cond_1

    .line 563
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    if-ne v2, v3, :cond_1

    .line 565
    const/16 v0, 0xa

    .line 568
    :cond_1
    if-ne v0, v4, :cond_2

    .line 569
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CDMA"

    if-ne v2, v3, :cond_2

    .line 571
    const/16 v0, 0xb

    .line 575
    :cond_2
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RadioCapSwitchUtil] getMainCapabilityPhoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return v0

    .line 555
    .restart local v1    # "swapMode":I
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 556
    const/4 v0, 0x1

    goto :goto_0

    .line 559
    .end local v1    # "swapMode":I
    :cond_4
    const-string v2, "persist.radio.simswitch"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method private static getSimImsiStatus(I)Ljava/lang/String;
    .locals 2
    .param p0, "slot"    # I

    .prologue
    .line 763
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 764
    .local v0, "propStr":Ljava/lang/String;
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimInfo([I[II)Z
    .locals 12
    .param p0, "simOpInfo"    # [I
    .param p1, "simType"    # [I
    .param p2, "insertedStatus"    # I

    .prologue
    .line 170
    array-length v9, p0

    new-array v7, v9, [Ljava/lang/String;

    .line 171
    .local v7, "strMnc":[Ljava/lang/String;
    array-length v9, p0

    new-array v8, v9, [Ljava/lang/String;

    .line 172
    .local v8, "strSimType":[Ljava/lang/String;
    array-length v9, p0

    new-array v3, v9, [Ljava/lang/String;

    .line 175
    .local v3, "iccid":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, p0

    if-ge v1, v9, :cond_13

    .line 176
    sget-object v9, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v1

    .line 178
    aget-object v9, v3, v1

    const-string v10, "N/A"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 179
    if-nez v1, :cond_5

    .line 180
    const-string v6, "gsm.ril.uicctype"

    .line 184
    .local v6, "propStr":Ljava/lang/String;
    :goto_1
    const-string v9, ""

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 185
    aget-object v9, v8, v1

    const-string v10, "SIM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 186
    const/4 v9, 0x0

    aput v9, p1, v1

    .line 192
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SimType["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", simType["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, p1, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 194
    if-nez v1, :cond_8

    .line 195
    const-string v6, "gsm.sim.ril.mcc.mnc"

    .line 199
    :goto_3
    const-string v9, ""

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v1

    .line 200
    aget-object v9, v7, v1

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 201
    const-string v9, "1"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimImsiStatus(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 202
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isOp01LCProject()Z

    move-result v9

    if-eqz v9, :cond_0

    aget v9, p1, v1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 204
    const-string v6, "gsm.sim.operator.numeric"

    .line 205
    const-string v9, ""

    invoke-static {v1, v6, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v1

    .line 207
    :cond_0
    aget-object v9, v7, v1

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    aget-object v9, v7, v1

    const-string v10, "N/A"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    aget-object v9, v7, v1

    const-string v10, "error"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    aget-object v9, v7, v1

    const-string v10, "sim_absent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 211
    :cond_1
    const-string v6, "gsm.sim.operator.imsi"

    .line 212
    const-string v9, ""

    invoke-static {v1, v6, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v1

    .line 214
    :cond_2
    aget-object v9, v7, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_3

    .line 215
    aget-object v9, v7, v1

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v1

    .line 217
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "strMnc["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 223
    :cond_4
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertedStatus:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 224
    if-ltz p2, :cond_b

    const/4 v9, 0x1

    shl-int/2addr v9, v1

    and-int/2addr v9, p2

    if-lez v9, :cond_b

    .line 225
    aget-object v9, v7, v1

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 226
    const-string v9, "SIM is inserted but no imsi"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 227
    const/4 v9, 0x0

    .line 266
    .end local v6    # "propStr":Ljava/lang/String;
    :goto_5
    return v9

    .line 182
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gsm.ril.uicctype."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 187
    :cond_6
    aget-object v9, v8, v1

    const-string v10, "USIM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 188
    const/4 v9, 0x1

    aput v9, p1, v1

    goto/16 :goto_2

    .line 190
    :cond_7
    const/4 v9, 0x2

    aput v9, p1, v1

    goto/16 :goto_2

    .line 197
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 220
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "strMnc["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] from ril.mcc.mnc:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 229
    :cond_a
    aget-object v9, v7, v1

    const-string v10, "sim_lock"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 230
    const-string v9, "SIM is lock, wait pin unlock"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 231
    const/4 v9, 0x0

    goto :goto_5

    .line 234
    :cond_b
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP01:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v4, :cond_c

    aget-object v5, v0, v2

    .line 235
    .local v5, "mccmnc":Ljava/lang/String;
    aget-object v9, v7, v1

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 236
    const/4 v9, 0x2

    aput v9, p0, v1

    .line 240
    .end local v5    # "mccmnc":Ljava/lang/String;
    :cond_c
    aget v9, p0, v1

    if-nez v9, :cond_d

    .line 241
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP02:[Ljava/lang/String;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_d

    aget-object v5, v0, v2

    .line 242
    .restart local v5    # "mccmnc":Ljava/lang/String;
    aget-object v9, v7, v1

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 243
    const/4 v9, 0x3

    aput v9, p0, v1

    .line 248
    .end local v5    # "mccmnc":Ljava/lang/String;
    :cond_d
    aget v9, p0, v1

    if-nez v9, :cond_e

    .line 249
    sget-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_OP09:[Ljava/lang/String;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_e

    aget-object v5, v0, v2

    .line 250
    .restart local v5    # "mccmnc":Ljava/lang/String;
    aget-object v9, v7, v1

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 251
    const/4 v9, 0x4

    aput v9, p0, v1

    .line 256
    .end local v5    # "mccmnc":Ljava/lang/String;
    :cond_e
    aget v9, p0, v1

    if-nez v9, :cond_f

    .line 257
    aget-object v9, v7, v1

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 258
    const/4 v9, 0x1

    aput v9, p0, v1

    .line 262
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "strMnc["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v7, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", simOpInfo["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, p0, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 234
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "mccmnc":Ljava/lang/String;
    .restart local v6    # "propStr":Ljava/lang/String;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 241
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 249
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 264
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "mccmnc":Ljava/lang/String;
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSimInfo(simOpInfo): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSimInfo(simType): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 266
    const/4 v9, 0x1

    goto/16 :goto_5
.end method

.method public static isAnySimLocked(I)Z
    .locals 8
    .param p0, "phoneNum"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v4, 0x0

    .line 697
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 698
    const-string v5, "isAnySimLocked always returns false in C2K"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 744
    :cond_0
    :goto_0
    return v4

    .line 703
    :cond_1
    new-array v2, p0, [Ljava/lang/String;

    .line 704
    .local v2, "mnc":[Ljava/lang/String;
    new-array v1, p0, [Ljava/lang/String;

    .line 706
    .local v1, "iccid":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_0

    .line 707
    sget-object v5, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    .line 709
    aget-object v5, v1, v0

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 710
    const-string v5, "gsm.sim.operator.imsi"

    const-string v6, ""

    invoke-static {v0, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 711
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_2

    .line 712
    aget-object v5, v2, v0

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 714
    :cond_2
    aget-object v5, v2, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 715
    if-nez v0, :cond_5

    .line 716
    const-string v3, "gsm.sim.ril.mcc.mnc"

    .line 720
    .local v3, "propStr":Ljava/lang/String;
    :goto_2
    const-string v5, ""

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 721
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mnc["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] from ril.mcc.mnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 728
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_3
    :goto_3
    aget-object v5, v1, v0

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    aget-object v5, v2, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    aget-object v5, v2, v0

    const-string v6, "sim_lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 730
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 718
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto :goto_2

    .line 723
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from gsm.sim.operator.imsi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 733
    :cond_7
    const-string v5, "1"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimImsiStatus(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear mcc.mnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 735
    if-nez v0, :cond_9

    .line 736
    const-string v3, "gsm.sim.ril.mcc.mnc"

    .line 740
    .restart local v3    # "propStr":Ljava/lang/String;
    :goto_4
    const-string v5, ""

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 738
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto :goto_4
.end method

.method public static isNeedShowSimDialog()I
    .locals 14

    .prologue
    .line 605
    const-string v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 606
    const-string v12, "mtk_disable_cap_switch is true"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 607
    const/4 v12, 0x0

    .line 693
    .local v0, "currIccId":[Ljava/lang/String;
    .local v1, "i":I
    .local v2, "insertedSimCount":I
    .local v3, "insertedStatus":I
    .local v4, "op02CardCount":I
    .local v5, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v7, "phoneCount":I
    .local v8, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v9, "simOpInfo":[I
    .local v10, "simType":[I
    .local v11, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return v12

    .line 610
    .end local v0    # "currIccId":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "insertedSimCount":I
    .end local v3    # "insertedStatus":I
    .end local v4    # "op02CardCount":I
    .end local v5    # "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "phoneCount":I
    .end local v8    # "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "simOpInfo":[I
    .end local v10    # "simType":[I
    .end local v11    # "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    const-string v12, "isNeedShowSimDialog start"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 611
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .line 612
    .restart local v7    # "phoneCount":I
    new-array v9, v7, [I

    .line 613
    .restart local v9    # "simOpInfo":[I
    new-array v10, v7, [I

    .line 614
    .restart local v10    # "simType":[I
    new-array v0, v7, [Ljava/lang/String;

    .line 615
    .restart local v0    # "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 616
    .restart local v2    # "insertedSimCount":I
    const/4 v3, 0x0

    .line 617
    .restart local v3    # "insertedStatus":I
    const/4 v4, 0x0

    .line 618
    .restart local v4    # "op02CardCount":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .restart local v11    # "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .restart local v8    # "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .restart local v5    # "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .restart local v6    # "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v7, :cond_4

    .line 624
    sget-object v12, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v1

    .line 625
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currIccid["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 626
    aget-object v12, v0, v1

    if-eqz v12, :cond_1

    const-string v12, ""

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 627
    :cond_1
    const-string v12, "GSM"

    const-string v13, "iccid not found, wait for next sim state change"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/4 v12, 0x3

    goto :goto_0

    .line 630
    :cond_2
    const-string v12, "N/A"

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 631
    add-int/lit8 v2, v2, 0x1

    .line 632
    const/4 v12, 0x1

    shl-int/2addr v12, v1

    or-int/2addr v3, v12

    .line 623
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 636
    :cond_4
    const/4 v12, 0x2

    if-ge v2, v12, :cond_5

    .line 637
    const-string v12, "isNeedShowSimDialog: insert sim count < 2, do not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 638
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 641
    :cond_5
    invoke-static {v9, v10, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v12

    if-nez v12, :cond_6

    .line 642
    const-string v12, "GSM"

    const-string v13, "isNeedShowSimDialog: Can\'t get SIM information"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v12, 0x2

    goto/16 :goto_0

    .line 645
    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_a

    .line 647
    const/4 v12, 0x1

    aget v13, v10, v1

    if-ne v12, v13, :cond_8

    .line 648
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_7
    :goto_3
    const/4 v12, 0x3

    aget v13, v9, v1

    if-ne v12, v13, :cond_9

    .line 655
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 649
    :cond_8
    aget v12, v10, v1

    if-nez v12, :cond_7

    .line 650
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 657
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 660
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "usimIndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 661
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "op02IndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_d

    .line 665
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_c

    .line 666
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 667
    add-int/lit8 v4, v4, 0x1

    .line 665
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 671
    :cond_c
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 672
    const-string v12, "isNeedShowSimDialog: One OP02Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 673
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 675
    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 676
    const-string v12, "isNeedShowSimDialog: One Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 677
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 681
    :cond_e
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_10

    .line 682
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 683
    add-int/lit8 v4, v4, 0x1

    .line 681
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 687
    :cond_10
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 688
    const-string v12, "isNeedShowSimDialog: One non-OP02 Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 689
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 692
    :cond_11
    const-string v12, "isNeedShowSimDialog: Show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 693
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public static isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)I
    .locals 14
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;
    .param p1, "rats"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 279
    const-string v12, "ro.operator.optr"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "operatorSpec":Ljava/lang/String;
    array-length v12, p0

    new-array v6, v12, [I

    .line 281
    .local v6, "simOpInfo":[I
    array-length v12, p0

    new-array v7, v12, [I

    .line 283
    .local v7, "simType":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 284
    .local v5, "phoneCount":I
    const/4 v2, 0x0

    .line 285
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 286
    .local v3, "insertedStatus":I
    new-array v0, v5, [Ljava/lang/String;

    .line 288
    .local v0, "currIccId":[Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Operator Spec:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 289
    const-string v12, "ro.mtk_disable_cap_switch"

    invoke-static {v12, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-ne v12, v10, :cond_1

    .line 290
    const-string v9, "mtk_disable_cap_switch is true"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v9, v10

    .line 332
    :cond_0
    :goto_0
    return v9

    .line 292
    :cond_1
    const-string v12, "OP01"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 300
    sget-object v12, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v1

    .line 301
    aget-object v12, v0, v1

    if-eqz v12, :cond_2

    const-string v12, ""

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 302
    :cond_2
    const-string v9, "error: iccid not found, not switch, return NOT_SWITCH_SIM_INFO_NOT_READY"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    move v9, v11

    .line 303
    goto :goto_0

    .line 305
    :cond_3
    const-string v12, "N/A"

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 306
    add-int/lit8 v2, v2, 0x1

    .line 307
    shl-int v12, v10, v1

    or-int/2addr v3, v12

    .line 299
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 310
    :cond_5
    invoke-static {v6, v7, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v12

    if-nez v12, :cond_6

    if-eq v2, v10, :cond_6

    move v9, v11

    .line 312
    goto :goto_0

    .line 316
    :cond_6
    const/4 v8, 0x0

    .local v8, "targetPhoneId":I
    :goto_2
    array-length v11, p1

    if-ge v8, v11, :cond_7

    .line 317
    const-string v11, "ro.mtk_lte_support"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 318
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit16 v11, v11, 0x4000

    const/16 v12, 0x4000

    if-ne v11, v12, :cond_9

    .line 329
    :cond_7
    const-string v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 330
    invoke-static {v8, v6, v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->checkOp01LC(I[I[I)Z

    move-result v11

    if-nez v11, :cond_0

    move v9, v10

    goto :goto_0

    .line 323
    :cond_8
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    const/16 v12, 0x8

    if-eq v11, v12, :cond_7

    .line 316
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public static isOp01LCProject()Z
    .locals 2

    .prologue
    .line 748
    const-string v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.operator.optr"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    const-string v0, "return true for OP01 L+C project"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 751
    const/4 v0, 0x1

    .line 753
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimContainsCdmaApp(I)Z
    .locals 4
    .param p0, "simId"    # I

    .prologue
    .line 584
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v0, v1, [I

    .line 585
    .local v0, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 586
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RadioCapSwitchUtil][getCardType]: SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    aget v1, v0, p0

    and-int/lit8 v1, v1, 0x4

    if-gtz v1, :cond_0

    aget v1, v0, p0

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_1

    .line 589
    :cond_0
    const/4 v1, 0x1

    .line 591
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 580
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioCapSwitchUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void
.end method

.method public static updateIccid([Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "bIsMajorPhone":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 142
    const/4 v0, 0x0

    .line 143
    const-string v3, "ro.mtk_lte_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 144
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 154
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ril.iccid.sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "currIccId":Ljava/lang/String;
    const-string v3, "persist.radio.simswitch.iccid"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 161
    .end local v1    # "currIccId":Ljava/lang/String;
    :cond_1
    return-void

    .line 149
    :cond_2
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 151
    const/4 v0, 0x1

    goto :goto_1

    .line 141
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static updateSimImsiStatus(ILjava/lang/String;)V
    .locals 3
    .param p0, "slot"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimImsiStatus slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 758
    sget-object v1, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_IMSI_STATUS:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 759
    .local v0, "propStr":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    return-void
.end method
