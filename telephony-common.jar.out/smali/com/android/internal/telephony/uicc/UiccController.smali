.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccController$2;,
        Lcom/android/internal/telephony/uicc/UiccController$RegisterEusimRunnable;,
        Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_RESET_MODEM:Ljava/lang/String; = "android.intent.action.sim.ACTION_RESET_MODEM"

.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field public static final CARD_TYPE_CSIM:I = 0x8

.field public static final CARD_TYPE_NONE:I = 0x0

.field public static final CARD_TYPE_RUIM:I = 0x4

.field public static final CARD_TYPE_SIM:I = 0x1

.field public static final CARD_TYPE_USIM:I = 0x2

.field private static final COMMON_SLOT_PROPERTY:Ljava/lang/String; = "ro.mtk_sim_hot_swap_common_slot"

.field private static final DBG:Z = true

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field protected static final EVENT_APPLICATION_SESSION_CHANGED:I = 0xca

.field protected static final EVENT_CDMA_CARD_TYPE:I = 0x75

.field protected static final EVENT_COMMON_SLOT_NO_CHANGED:I = 0x74

.field protected static final EVENT_EUSIM_READY:I = 0x76

.field protected static final EVENT_GET_ICC_APPLICATION_STATUS:I = 0xc9

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field protected static final EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING:I = 0x6a

.field protected static final EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY:I = 0x6b

.field protected static final EVENT_HOTSWAP_GET_ICC_STATUS_DONE:I = 0x6f

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field protected static final EVENT_INVALID_SIM_DETECTED:I = 0x72

.field protected static final EVENT_QUERY_ICCID_DONE_FOR_HOT_SWAP:I = 0x6c

.field protected static final EVENT_QUERY_SIM_MISSING:I = 0x71

.field protected static final EVENT_QUERY_SIM_MISSING_STATUS:I = 0x68

.field protected static final EVENT_QUERY_SIM_STATUS_FOR_PLUG_IN:I = 0x70

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x64

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x3

.field protected static final EVENT_REPOLL_SML_STATE:I = 0x73

.field protected static final EVENT_SIM_MISSING:I = 0x67

.field protected static final EVENT_SIM_PLUG_IN:I = 0x6e

.field protected static final EVENT_SIM_PLUG_OUT:I = 0x6d

.field protected static final EVENT_SIM_RECOVERY:I = 0x69

.field private static final EVENT_SIM_REFRESH:I = 0x4

.field protected static final EVENT_TURN_ON_ISIM_APPLICATION_DONE:I = 0xc8

.field protected static final EVENT_VIRTUAL_SIM_OFF:I = 0x66

.field protected static final EVENT_VIRTUAL_SIM_ON:I = 0x65

.field public static final INDEX_SVLTE:I = 0x64

.field private static final INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "UiccController"

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final PROPERTY_3G_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field private static final PROPERTY_ICCID_C2K:Ljava/lang/String; = "ril.iccid.sim1_c2k"

.field private static final PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field private static final PROPERTY_RIL_CARD_TYPE_SET:Ljava/lang/String; = "gsm.ril.cardtypeset"

.field private static final PROPERTY_RIL_CARD_TYPE_SET_2:Ljava/lang/String; = "gsm.ril.cardtypeset.2"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final SML_FEATURE_NEED_BROADCAST_INTENT:I = 0x1

.field private static final SML_FEATURE_NO_NEED_BROADCAST_INTENT:I = 0x0

.field private static final STATUS_NO_SIM_INSERTED:I = 0x0

.field private static final STATUS_SIM1_INSERTED:I = 0x1

.field private static final STATUS_SIM2_INSERTED:I = 0x2

.field private static final STATUS_SIM3_INSERTED:I = 0x4

.field private static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mInstance:Lcom/android/internal/telephony/uicc/UiccController;

.field private static final mLock:Ljava/lang/Object;

.field private static mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;


# instance fields
.field private UICCCONTROLLER_STRING_NOTIFICATION_SIM_MISSING:[I

.field private UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

.field bSetTrm:Z

.field private mApplicationChangedRegistrants:Landroid/os/RegistrantList;

.field private mBtSlotId:I

.field private mC2KWPCardTypeReadyRegistrants:Landroid/os/RegistrantList;

.field private mC2KWPCardtype:[I

.field private mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mClearMsisdn:Z

.field private mContext:Landroid/content/Context;

.field protected mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHotSwap:Z

.field private mIsimSessionId:[I

.field private mNotifyIccCount:I

.field private mOperatorSpec:Ljava/lang/String;

.field private mRecoveryRegistrants:Landroid/os/RegistrantList;

.field private mRetryCounter:I

.field mRilInit:Z

.field mSetRadioDone:Z

.field private mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mSvlteIndex:I

.field mSwitchCardtype:Z

.field private mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccControllerInitDone:Z

.field oldSvlteSlotId:I

.field sProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    .line 212
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v2

    const-string v1, "ril.iccid.sim2"

    aput-object v1, v0, v3

    const-string v1, "ril.iccid.sim3"

    aput-object v1, v0, v4

    const-string v1, "ril.iccid.sim4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 219
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "gsm.ril.fulluicctype"

    aput-object v1, v0, v2

    const-string v1, "gsm.ril.fulluicctype.2"

    aput-object v1, v0, v3

    const-string v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v4

    const-string v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 262
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 173
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    new-array v5, v5, [Lcom/android/internal/telephony/uicc/UiccCard;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    .line 179
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsHotSwap:Z

    .line 180
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mClearMsisdn:Z

    .line 181
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$CardType;->UNKNOW_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 183
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    .line 184
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    .line 186
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    .line 187
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    .line 189
    new-array v5, v9, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_SIM_MISSING:[I

    .line 196
    new-array v5, v9, [I

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    .line 210
    iput v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    .line 211
    iput v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mNotifyIccCount:I

    .line 231
    iput v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    .line 238
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    .line 240
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardTypeReadyRegistrants:Landroid/os/RegistrantList;

    .line 241
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->oldSvlteSlotId:I

    .line 242
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 243
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    .line 244
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRilInit:Z

    .line 245
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSwitchCardtype:Z

    .line 246
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerInitDone:Z

    .line 251
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 1104
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccController$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/uicc/UiccController$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1360
    iput v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    .line 263
    const-string v5, "Creating UiccController"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 264
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 265
    array-length v5, p2

    new-array v5, v5, [Lcom/android/internal/telephony/CommandsInterface;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 266
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 267
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, p2, v4

    aput-object v6, v5, v4

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    :cond_0
    const-string v5, "ro.operator.optr"

    const-string v6, "OM"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOperatorSpec:Ljava/lang/String;

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Operator Spec:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 272
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/uicc/UiccController;->setCis([Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 274
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->initC2KWPCardtype(Ljava/lang/Integer;)V

    .line 277
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v5, "android.intent.action.sim.ACTION_RESET_MODEM"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v5, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v5, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    :try_start_0
    const-class v5, Lcom/mediatek/common/telephony/IUiccControllerExt;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/common/telephony/IUiccControllerExt;

    sput-object v5, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_1
    const-string v5, "ril.cardtype.cache"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "cardTypeCache":Ljava/lang/String;
    const-string v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cardTypeCache:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 301
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 302
    .local v1, "cardtype":I
    invoke-static {v1}, Lcom/android/internal/telephony/IccCardConstants$CardType;->getCardTypeFromInt(I)Lcom/android/internal/telephony/IccCardConstants$CardType;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    .end local v1    # "cardtype":I
    :cond_3
    :goto_2
    iput-boolean v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerInitDone:Z

    .line 308
    return-void

    .line 292
    .end local v0    # "cardTypeCache":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "UiccController"

    const-string v6, "Fail to create plug-in"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 303
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cardTypeCache":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v5, "UiccController"

    const-string v6, "Fail to parse cardtype"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 189
    nop

    :array_0
    .array-data 4
        0x8050065
        0x805006a
        0x805006b
        0x805006c
    .end array-data

    .line 196
    :array_1
    .array-data 4
        0x805005d
        0x805005e
        0x805005f
        0x8050060
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->initC2KWPCardtype(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccController;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->triggerGetSingleModeCCardStatus(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->registerEusimReady()V

    return-void
.end method

.method private broadcastCdmaCardTypeIntent()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CDMA_CARD_TYPE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1635
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cdma_card_type"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_CDMA_CARD_TYPE cardType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1639
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1640
    return-void
.end method

.method private getCardStatusDirectly()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2018
    const-string v2, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2019
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 2020
    .local v0, "cdmaSlotId":I
    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 2021
    .local v1, "gsmSlotId":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardStatusDirectly, cdmaSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gsmSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 2022
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_0

    .line 2023
    const-string v2, "getCardStatusDirectly, mSvlteCi get sim status index: 100"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 2024
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 2026
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 2027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardStatusDirectly, mCis["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] get sim status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 2028
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 2031
    .end local v0    # "cdmaSlotId":I
    .end local v1    # "gsmSlotId":I
    :cond_1
    return-void

    .line 2020
    .restart local v0    # "cdmaSlotId":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 787
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 794
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 795
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 796
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 804
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 797
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 798
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 799
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 800
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private getFullCardType(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1643
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 1644
    :cond_0
    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFullCardType invalid slotId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    const/4 v2, 0x0

    .line 1663
    :goto_0
    return v2

    .line 1647
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1648
    .local v1, "cardType":Ljava/lang/String;
    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFullCardType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1650
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1651
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 1652
    const-string v4, "USIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1653
    or-int/lit8 v2, v2, 0x2

    .line 1651
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1654
    :cond_3
    const-string v4, "SIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1655
    or-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1656
    :cond_4
    const-string v4, "CSIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1657
    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 1658
    :cond_5
    const-string v4, "RUIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1659
    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 1662
    :cond_6
    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fullType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3

    .prologue
    .line 352
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 357
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private ignoreGetSimStatus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1869
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1871
    .local v0, "airplaneMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoreGetSimStatus(): airplaneMode - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1872
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v0, v1, :cond_0

    .line 1873
    const-string v2, "ignoreGetSimStatus(): return true"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1877
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private indexValidForSvlte(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1601
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initC2KWPCardtype(Ljava/lang/Integer;)V
    .locals 9
    .param p1, "index"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x1

    .line 321
    const-string v6, "gsm.ril.cardtypeset"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "cardTypeSet":Ljava/lang/String;
    const-string v6, "gsm.ril.cardtypeset.2"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "cardTypeSet_2":Ljava/lang/String;
    const-string v6, "UiccController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initC2KWPCardtype gsm.ril.cardtypeset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", gsm.ril.cardtypeset.2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "cardTypeReady":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 327
    .local v4, "phoneCount":I
    if-ne v4, v5, :cond_0

    .line 329
    const-string v6, "UiccController"

    const-string v7, "single sim"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 340
    :goto_0
    if-eqz v0, :cond_4

    .line 341
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->updateC2KWPCardtype(Z)V

    .line 342
    const-string v5, "gsm.ril.init"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v5, "set gsm.ril.init to 0"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 349
    :goto_1
    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    .line 333
    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 335
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 337
    :cond_2
    const-string v6, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v5

    :goto_2
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 345
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;-><init>(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/Integer;)V

    .line 346
    .local v3, "initCardtypeRunnable":Lcom/android/internal/telephony/uicc/UiccController$InitCardtypeRunnable;
    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telephony/uicc/UiccController;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private isCdmaCard(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1894
    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsCdmaCard  index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 1896
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    .line 1898
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCardIndex(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidCardIndex index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 968
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCardType(I)Z
    .locals 6
    .param p1, "cardType"    # I

    .prologue
    .line 1881
    const-string v3, "UiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidCardType  cardType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$CardType;->values()[Lcom/android/internal/telephony/IccCardConstants$CardType;

    move-result-object v0

    .line 1883
    .local v0, "cardTypes":[Lcom/android/internal/telephony/IccCardConstants$CardType;
    const/4 v2, 0x0

    .line 1884
    .local v2, "match":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1885
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$CardType;->getValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 1886
    const/4 v2, 0x1

    .line 1890
    :cond_0
    return v2

    .line 1884
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 973
    const-string v0, "UiccController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 253
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "MSimUiccController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 257
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    .line 258
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private declared-synchronized onGetIccApplicationStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 1326
    monitor-enter p0

    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1327
    const-string v1, "UiccController"

    const-string v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_APPLICATION_STATUS should never return an error"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    :goto_0
    monitor-exit p0

    return-void

    .line 1332
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1333
    const-string v1, "UiccController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetIccApplicationStatusDone: invalid index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1326
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1336
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetIccApplicationStatusDone, index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1338
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 1340
    .local v0, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    .line 1342
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    aput-object v3, v1, v2

    .line 1356
    :goto_1
    const-string v1, "Notifying mApplicationChangedRegistrants"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1357
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1353
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 830
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 831
    const-string v0, "UiccController"

    const-string v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    :goto_0
    monitor-exit p0

    return-void

    .line 836
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 837
    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetIccCardStatusDone: invalid index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 830
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 840
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetIccCardStatusDone, index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 842
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 853
    .local v3, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 857
    const-string v0, "new SVLTE PS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 858
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v6, v7

    .line 905
    :goto_1
    const-string v0, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 862
    :cond_2
    const-string v0, "update SVLTE PS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->preUpdate(ZLcom/android/internal/telephony/CommandsInterface;)V

    .line 865
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->registerCdmaCardImsiDone(I)V

    goto :goto_1

    .line 868
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    if-ne v0, v1, :cond_5

    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    .line 872
    const-string v0, "new SVLTE CS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 873
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v6, v7

    goto :goto_1

    .line 877
    :cond_4
    const-string v0, "update SVLTE CS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->preUpdate(ZLcom/android/internal/telephony/CommandsInterface;)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->registerCdmaCardImsiDone(I)V

    goto/16 :goto_1

    .line 885
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new UiccApplication index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    aput-object v2, v0, v1

    goto/16 :goto_1

    .line 899
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update UiccApplication index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->preUpdate(ZLcom/android/internal/telephony/CommandsInterface;)V

    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V
    .locals 9
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;
    .param p3, "isUpdate"    # Z

    .prologue
    .line 1001
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1002
    const-string v0, "UiccController"

    const-string v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    :goto_0
    monitor-exit p0

    return-void

    .line 1007
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1008
    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetIccCardStatusDone: invalid index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1001
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1011
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetIccCardStatusDone, index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isUpdateSiminfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1013
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 1020
    .local v3, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 1024
    const-string v0, "new SVLTE PS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1025
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v7, v8

    .line 1067
    :goto_1
    const-string v0, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1069
    const-string v0, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1070
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1029
    :cond_2
    const-string v0, "update SVLTE PS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    goto :goto_1

    .line 1033
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    if-ne v0, v1, :cond_5

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_4

    .line 1037
    const-string v0, "new SVLTE CS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1038
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v7, v8

    goto :goto_1

    .line 1042
    :cond_4
    const-string v0, "update SVLTE CS UiccApplication"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    goto :goto_1

    .line 1048
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new UiccApplication index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v5, v5, v7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v2, v4, v5, v3, v7}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V

    aput-object v2, v0, v1

    goto/16 :goto_1

    .line 1062
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update UiccApplication index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Z)V

    goto/16 :goto_1

    .line 1072
    :cond_7
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1073
    .local v6, "result":Landroid/os/Bundle;
    const-string v0, "Index"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1074
    const-string v0, "ForceUpdate"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 911
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 912
    const-string v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sim REFRESH with exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 917
    const-string v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSimRefresh: invalid index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 921
    :cond_2
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 922
    .local v4, "resp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    const-string v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSimRefresh: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    if-nez v5, :cond_3

    .line 925
    const-string v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSimRefresh: refresh on null card : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 929
    :cond_3
    iget v5, v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne v5, v10, :cond_4

    iget-object v5, v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 931
    :cond_4
    const-string v5, "UiccController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring reset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 935
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    iget-object v6, v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppWithAid(Ljava/lang/String;)Z

    move-result v0

    .line 936
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 937
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 940
    .local v3, "requirePowerOffOnSimRefreshReset":Z
    const-string v5, "ro.sim_refresh_reset_by_modem"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eq v5, v9, :cond_8

    .line 943
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 946
    .local v1, "mSimVar":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v5, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-eq v1, v5, :cond_7

    .line 947
    const-string v5, "persist.radio.simswitch"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 948
    .local v2, "phoneIdFor3G":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " will reset modem"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 949
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v5, v5

    add-int/lit8 v6, v2, -0x1

    if-le v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    if-eqz v5, :cond_6

    .line 951
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    invoke-interface {v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    .line 960
    .end local v1    # "mSimVar":Landroid/telephony/TelephonyManager$MultiSimVariants;
    .end local v2    # "phoneIdFor3G":I
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    invoke-direct {v6, v8, p2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 955
    .restart local v1    # "mSimVar":Landroid/telephony/TelephonyManager$MultiSimVariants;
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-interface {v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->resetRadio(Landroid/os/Message;)V

    goto :goto_1

    .line 958
    .end local v1    # "mSimVar":Landroid/telephony/TelephonyManager$MultiSimVariants;
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .prologue
    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsePersoType, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1391
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1405
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1393
    :pswitch_0
    const-string v0, "NETWORK"

    goto :goto_0

    .line 1395
    :pswitch_1
    const-string v0, "NETWORK_SUBSET"

    goto :goto_0

    .line 1397
    :pswitch_2
    const-string v0, "CORPORATE"

    goto :goto_0

    .line 1399
    :pswitch_3
    const-string v0, "SERVICE_PROVIDER"

    goto :goto_0

    .line 1401
    :pswitch_4
    const-string v0, "SIM"

    goto :goto_0

    .line 1391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private registerEusimReady()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 1539
    const-string v8, "gsm.ril.cardtypeset"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1540
    .local v1, "cardTypeSet":Ljava/lang/String;
    const-string v8, "gsm.ril.cardtypeset.2"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1541
    .local v2, "cardTypeSet_2":Ljava/lang/String;
    const-string v8, "UiccController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registerEusimReady gsm.ril.cardtypeset="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", gsm.ril.cardtypeset.2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/4 v0, 0x0

    .line 1544
    .local v0, "cardTypeReady":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    .line 1545
    .local v5, "phoneCount":I
    if-ne v5, v7, :cond_0

    .line 1547
    const-string v7, "UiccController"

    const-string v8, "single sim"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1552
    :goto_0
    if-eqz v0, :cond_2

    .line 1553
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 1554
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 1555
    .local v4, "index":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v7, v3

    const/16 v8, 0x76

    invoke-interface {v7, p0, v8, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForEusimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1553
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1550
    .end local v3    # "i":I
    .end local v4    # "index":Ljava/lang/Integer;
    :cond_0
    const-string v8, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v7

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 1558
    :cond_2
    new-instance v6, Lcom/android/internal/telephony/uicc/UiccController$RegisterEusimRunnable;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/uicc/UiccController$RegisterEusimRunnable;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    .line 1559
    .local v6, "registerEusimRunnable":Lcom/android/internal/telephony/uicc/UiccController$RegisterEusimRunnable;
    const-wide/16 v8, 0xc8

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/internal/telephony/uicc/UiccController;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1562
    .end local v6    # "registerEusimRunnable":Lcom/android/internal/telephony/uicc/UiccController$RegisterEusimRunnable;
    :cond_3
    return-void
.end method

.method private removeNotificationVirtual(II)V
    .locals 3
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .prologue
    .line 1321
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1322
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    add-int v1, p2, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1323
    return-void
.end method

.method private setNotification(II)V
    .locals 8
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .prologue
    .line 1081
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNotification(): notifyType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1082
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1083
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 1084
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1085
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 1086
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1087
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1089
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6, p1}, Lcom/mediatek/common/telephony/IUiccControllerExt;->getMissingTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 1090
    .local v4, "title":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerExt:Lcom/mediatek/common/telephony/IUiccControllerExt;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/mediatek/common/telephony/IUiccControllerExt;->getMissingDetail(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1092
    .local v0, "detail":Ljava/lang/CharSequence;
    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1093
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1094
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1095
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    add-int v5, p2, p1

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1096
    return-void
.end method

.method private setNotificationVirtual(II)V
    .locals 9
    .param p1, "slot"    # I
    .param p2, "notifyType"    # I

    .prologue
    const v8, 0x8050061

    .line 1298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNotificationVirtual(): notifyType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1299
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1300
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/Notification;->when:J

    .line 1301
    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1302
    const v5, 0x108008a

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 1303
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1304
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1305
    const/4 v4, 0x0

    .line 1307
    .local v4, "title":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 1308
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->UICCCONTROLLER_STRING_NOTIFICATION_VIRTUAL_SIM_ON:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1312
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "detail":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1315
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v6, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v5, v4, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1316
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1317
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    add-int v5, p2, p1

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1318
    return-void

    .line 1310
    .end local v0    # "detail":Ljava/lang/CharSequence;
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private triggerGetSingleModeCCardStatus(II)V
    .locals 6
    .param p1, "oldSvlteSlot"    # I
    .param p2, "newSvlteSlot"    # I

    .prologue
    const/4 v3, -0x1

    const-wide/16 v4, 0x3e8

    const/4 v2, 0x1

    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerGetSingleModeCCardStatus, oldSvlteSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newSvlteSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1992
    if-eq p1, p2, :cond_3

    if-eq p1, v3, :cond_3

    .line 1993
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v0, v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v0, v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1995
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerGetSingleModeCCardStatus, mC2KWPCardtype[oldSvlteSlot]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1997
    const-string v0, "triggerGetSingleModeCCardStatus, sendDelay to get single ct 3g sim status"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1998
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2001
    :cond_1
    const-string v0, "triggerGetSingleModeCCardStatus, sendDelay to get CT4G GSM app because dynamic switch not other trigger"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 2002
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerGetSingleModeCCardStatus, mC2KWPCardtype[oldSvlteSlot]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 2004
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2006
    :cond_2
    if-eq p2, v3, :cond_3

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerGetSingleModeCCardStatus, mC2KWPCardtype[newSvlteSlot]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 2009
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2012
    :cond_3
    return-void
.end method

.method private updateC2KWPCardtype(Z)V
    .locals 12
    .param p1, "force"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1803
    const/4 v4, 0x0

    .line 1804
    .local v4, "mIccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    array-length v7, v7

    if-ge v3, v7, :cond_1

    .line 1805
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v10

    aput v10, v7, v3

    .line 1806
    const-string v7, "UiccController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateC2KWPCardtype mC2KWPCardtype["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getExternalModemSlot()I

    move-result v7

    if-ne v3, v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mOperatorSpec:Ljava/lang/String;

    const-string v10, "OP09"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v7, v7, v3

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v7, v7, v3

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v7, v7, v3

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_0

    .line 1813
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_0

    .line 1814
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v7, v3

    check-cast v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-object v4, v7

    check-cast v4, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 1815
    if-eqz v4, :cond_0

    .line 1816
    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 1817
    const-string v7, "UiccController"

    const-string v10, "Op09 Switch gsm radio technology for usim in slot 0"

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1823
    :cond_1
    const-string v7, "gsm.ril.cardtypeset"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1824
    .local v1, "cardTypeSet":Ljava/lang/String;
    const-string v7, "gsm.ril.cardtypeset.2"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1825
    .local v2, "cardTypeSet_2":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1826
    .local v0, "cardTypeReady":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    .line 1827
    .local v5, "phoneCount":I
    if-ne v5, v8, :cond_6

    .line 1829
    const-string v7, "UiccController"

    const-string v10, "single sim"

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1834
    :goto_1
    const-string v7, "ril.cdma.switch.needupdate"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1835
    .local v6, "switchNeedUpdate":Ljava/lang/String;
    const-string v7, "UiccController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateC2KWPCardtype force="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", gsm.ril.cardtypeset="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", gsm.ril.cardtypeset.2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ril.cdma.switch.needupdate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", bSetTrm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    if-nez p1, :cond_2

    if-eqz v0, :cond_8

    .line 1841
    :cond_2
    iget-boolean v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    if-eqz v7, :cond_3

    .line 1842
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    .line 1843
    const-string v7, "UiccController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateC2KWPCardtype bSetTrm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    :cond_3
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1846
    const-string v7, "UiccController"

    const-string v10, "updateC2KWPCardtype set ril.cdma.switch.needupdate to 0"

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const-string v7, "ril.cdma.switch.needupdate"

    const-string v10, "0"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    :cond_4
    const-string v7, "UiccController"

    const-string v10, "updateC2KWPCardtype notifyRegistrants"

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 1852
    const-string v7, "UiccController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateC2KWPCardtype, set mSetRadioDone = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mUiccControllerInitDone = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerInitDone:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-boolean v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccControllerInitDone:Z

    if-eqz v7, :cond_5

    .line 1855
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setWaitSwitch(Z)V

    .line 1857
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardTypeReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v7}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1861
    :goto_2
    return-void

    .line 1832
    .end local v6    # "switchNeedUpdate":Ljava/lang/String;
    :cond_6
    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v8

    :goto_3
    goto/16 :goto_1

    :cond_7
    move v0, v9

    goto :goto_3

    .line 1859
    .restart local v6    # "switchNeedUpdate":Ljava/lang/String;
    :cond_8
    const-string v7, "UiccController"

    const-string v8, "updateC2KWPCardtype cardType not ready!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateNotifyIccCount()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1667
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v0

    .line 1669
    .local v0, "fullType":I
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eq v1, v3, :cond_1

    and-int/lit8 v1, v0, 0x2

    if-ne v1, v4, :cond_2

    .line 1673
    :cond_1
    iput v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mNotifyIccCount:I

    .line 1677
    :goto_0
    return-void

    .line 1675
    :cond_2
    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mNotifyIccCount:I

    goto :goto_0
.end method


# virtual methods
.method public broadcastSimRefreshState(Ljava/lang/String;II)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "appType"    # I
    .param p3, "phoneId"    # I

    .prologue
    .line 1921
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mediateck.intent.action.ACTION_INTERNAL_SIM_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1922
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "application_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1923
    const-string v1, "refresh_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1924
    invoke-static {v0, p3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1925
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcasting TelephonyIntents.ACTION_INTERNAL_SIM_REFRESH: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1929
    return-void
.end method

.method public disableSimMissingNotification(I)V
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 1100
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1101
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    add-int/lit8 v1, p1, 0x67

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1102
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mInstance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccChangedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIccChangedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 987
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccCards: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 990
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUiccCards["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 993
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUiccCards["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 997
    :cond_2
    return-void
.end method

.method public getBtConnectedSimId()I
    .locals 2

    .prologue
    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBtConnectedSimId, slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1369
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    return v0
.end method

.method public getC2KWPCardType()[I
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    return-object v0
.end method

.method public getCardType()Lcom/android/internal/telephony/IccCardConstants$CardType;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCardType mCdmaCardType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1614
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$CardType;->UNKNOW_CARD:Lcom/android/internal/telephony/IccCardConstants$CardType;

    if-ne v3, v4, :cond_0

    .line 1615
    const-string v3, "ril.cardtype.cache"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1616
    .local v0, "cardTypeCache":Ljava/lang/String;
    const-string v3, "UiccController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardType cardTypeCache:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1619
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1620
    .local v1, "cardtype":I
    invoke-static {v1}, Lcom/android/internal/telephony/IccCardConstants$CardType;->getCardTypeFromInt(I)Lcom/android/internal/telephony/IccCardConstants$CardType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1626
    .end local v0    # "cardTypeCache":Ljava/lang/String;
    .end local v1    # "cardtype":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    return-object v3

    .line 1621
    .restart local v0    # "cardTypeCache":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1622
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "UiccController"

    const-string v4, "getCardType Fail to parse cardtype"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIccApplicationChannel(II)I
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "family"    # I

    .prologue
    .line 416
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "index":I
    packed-switch p2, :pswitch_data_0

    .line 424
    :try_start_0
    const-string v1, "unknown application"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 427
    :goto_0
    monitor-exit v2

    return v0

    .line 421
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    aget v0, v1, p1

    .line 422
    goto :goto_0

    .line 428
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 418
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    .line 406
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 407
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 408
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    monitor-exit v2

    .line 411
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 412
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    .line 385
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 387
    :try_start_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 389
    const/4 p1, 0x0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccRecords phone id 101 change to:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 396
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 397
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    monitor-exit v2

    .line 400
    :goto_1
    return-object v1

    .line 391
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 392
    const/4 p1, 0x1

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccRecords phone id 102 change to:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 400
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 362
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v0, p1

    monitor-exit v1

    .line 366
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2
    .param p1, "family"    # I

    .prologue
    .line 380
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    .line 809
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 810
    :try_start_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 812
    const/4 p1, 0x0

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUiccCardApplication phone id 101 change to:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 819
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v1, p1

    .line 821
    .local v0, "c":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_2

    .line 822
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    monitor-exit v2

    .line 825
    .end local v0    # "c":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_1
    return-object v1

    .line 814
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 815
    const/4 p1, 0x1

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUiccCardApplication phone id 102 change to:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 825
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getUiccCards()[Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .prologue
    .line 373
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/UiccCard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/UiccCard;

    monitor-exit v1

    return-object v0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 466
    sget-object v26, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v26

    .line 467
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v12

    .line 469
    .local v12, "index":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-ltz v25, :cond_0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_1

    .line 470
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->indexValidForSvlte(I)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 472
    const-string v25, "SVLTE index"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 480
    :cond_1
    const/4 v5, 0x0

    .line 481
    .local v5, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v0, v0, Landroid/os/AsyncResult;

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 482
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5    # "ar":Landroid/os/AsyncResult;
    check-cast v5, Landroid/os/AsyncResult;

    .line 484
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 780
    const-string v25, "UiccController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " Unknown Event "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_3
    :goto_0
    monitor-exit v26

    .line 783
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :goto_1
    return-void

    .line 475
    :cond_4
    const-string v25, "UiccController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Invalid index : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " received with event "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    monitor-exit v26

    goto :goto_1

    .line 782
    .end local v12    # "index":Ljava/lang/Integer;
    :catchall_0
    move-exception v25

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 487
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    .restart local v12    # "index":Ljava/lang/Integer;
    :sswitch_0
    :try_start_1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus, index: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 495
    const-string v25, "ril.iccid.sim1_c2k"

    const-string v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 496
    .local v11, "iccidC2k":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "svlte handle EVENT_ICC_STATUS_CHANGED, check  iccidC2k="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " mSetRadioDone="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 498
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mSvlteCi: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->hashCode()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    :goto_2
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 499
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_7

    .line 500
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mCis["

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "]: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    aget-object v25, v25, v10

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    aget-object v25, v25, v10

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->hashCode()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    :goto_4
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 499
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 498
    .end local v10    # "i":I
    :cond_5
    const/16 v25, 0x0

    goto :goto_2

    .line 500
    .restart local v10    # "i":I
    :cond_6
    const/16 v25, 0x0

    goto :goto_4

    .line 503
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    move/from16 v25, v0

    if-nez v25, :cond_8

    .line 504
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EVENT_ICC_STATUS_CHANGED, index: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " radio not done, sendDelay"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 505
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    const-wide/16 v28, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 507
    :cond_8
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v25

    const/16 v27, -0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    aget v25, v25, v27

    if-eqz v25, :cond_9

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 510
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "EVENT_ICC_STATUS_CHANGED, index: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " c2k not ready, sendDelay"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 511
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    const-wide/16 v28, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 516
    .end local v10    # "i":I
    .end local v11    # "iccidC2k":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v27, 0x64

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 517
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v9

    .line 518
    .local v9, "fullType":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->updateNotifyIccCount()V

    .line 519
    if-eqz v9, :cond_a

    and-int/lit8 v25, v9, 0x1

    if-nez v25, :cond_a

    and-int/lit8 v25, v9, 0x2

    if-eqz v25, :cond_3

    .line 522
    :cond_a
    const-string v25, "EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus via GSM"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 538
    .end local v9    # "fullType":I
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->ignoreGetSimStatus()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 539
    const-string v25, "FlightMode ON, Modem OFF: ignore get sim status"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    aget-object v25, v25, v27

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 547
    :sswitch_1
    const-string v25, "Received EVENT_GET_ICC_STATUS_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 551
    :sswitch_2
    const-string v25, "Received EVENT_REPOLL_SML_STATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5    # "ar":Landroid/os/AsyncResult;
    check-cast v5, Landroid/os/AsyncResult;

    .line 553
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    const/16 v17, 0x1

    .line 556
    .local v17, "needIntent":Z
    :goto_5
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v5, v12, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V

    .line 557
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v27, 0x64

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 558
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 562
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    aget-object v25, v25, v27

    if-eqz v25, :cond_3

    const/16 v25, 0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    aget-object v25, v25, v27

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 564
    .local v4, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v4, :cond_f

    .line 565
    const-string v25, "UiccCardApplication = null"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 553
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v17    # "needIntent":Z
    :cond_e
    const/16 v17, 0x0

    goto :goto_5

    .line 568
    .restart local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v17    # "needIntent":Z
    :cond_f
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v25

    sget-object v27, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 569
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 570
    .local v16, "lockIntent":Landroid/content/Intent;
    if-nez v16, :cond_10

    .line 571
    const-string v25, "New intent failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 572
    monitor-exit v26

    goto/16 :goto_1

    .line 574
    :cond_10
    const-string v25, "Broadcast ACTION_UNLOCK_SIM_LOCK"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 575
    const-string v25, "mediatek.intent.action.ACTION_UNLOCK_SIM_LOCK"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v25, "ss"

    const-string v27, "LOCKED"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string v25, "reason"

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->parsePersoType(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 587
    .end local v4    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v16    # "lockIntent":Landroid/content/Intent;
    .end local v17    # "needIntent":Z
    :sswitch_3
    const-string v25, "EVENT_RADIO_UNAVAILABLE, set mSetRadioDone to false"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 588
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 589
    const-string v25, "EVENT_RADIO_UNAVAILABLE, dispose card"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    aget-object v25, v25, v27

    if-eqz v25, :cond_11

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    aget-object v25, v25, v27

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 593
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0x0

    aput-object v28, v25, v27

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v25, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v12, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 598
    :sswitch_4
    const-string v25, "Received EVENT_SIM_REFRESH"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 599
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/android/internal/telephony/uicc/UiccController;->onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 603
    :sswitch_5
    const-string v25, "Received EVENT_TURN_ON_ISIM_APPLICATION_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5    # "ar":Landroid/os/AsyncResult;
    check-cast v5, Landroid/os/AsyncResult;

    .line 605
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    .line 606
    const-string v25, "UiccController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[SIM "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] Error turn on ISIM. "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 608
    monitor-exit v26

    goto/16 :goto_1

    .line 612
    :cond_12
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [I

    move-object/from16 v0, v25

    check-cast v0, [I

    move-object v15, v0

    .line 613
    .local v15, "ints":[I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Application ID = "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v27, 0x0

    aget v27, v15, v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "Session ID = "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v27, 0x1

    aget v27, v15, v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0x1

    aget v28, v15, v28

    aput v28, v25, v27

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    aget-object v25, v25, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    move-object/from16 v27, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v28

    aget v27, v27, v28

    const/16 v28, 0xc9

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIccApplicationStatus(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 621
    .end local v15    # "ints":[I
    :sswitch_6
    const-string v25, "Received EVENT_GET_ICC_APPLICATION_STATUS"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 622
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5    # "ar":Landroid/os/AsyncResult;
    check-cast v5, Landroid/os/AsyncResult;

    .line 623
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccApplicationStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 627
    :sswitch_7
    const-string v25, "Received EVENT_APPLICATION_SESSION_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5    # "ar":Landroid/os/AsyncResult;
    check-cast v5, Landroid/os/AsyncResult;

    .line 631
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [I

    move-object/from16 v0, v25

    check-cast v0, [I

    move-object/from16 v19, v0

    .line 633
    .local v19, "result":[I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Application = "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v27, 0x0

    aget v27, v19, v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, ", Session = "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v27, 0x1

    aget v27, v19, v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mIsimSessionId:[I

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    const/16 v28, 0x1

    aget v28, v19, v28

    aput v28, v25, v27

    goto/16 :goto_0

    .line 638
    .end local v19    # "result":[I
    :sswitch_8
    const-string v25, "handleMessage (EVENT_VIRTUAL_SIM_ON)"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v27, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->setNotificationVirtual(II)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v27, "AutoAnswer"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 642
    .local v23, "shOn":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 643
    .local v8, "editorOn":Landroid/content/SharedPreferences$Editor;
    const-string v25, "flag"

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 644
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 647
    .end local v8    # "editorOn":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "shOn":Landroid/content/SharedPreferences;
    :sswitch_9
    const-string v25, "handleMessage (EVENT_VIRTUAL_SIM_OFF)"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v27, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->removeNotificationVirtual(II)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v27, "AutoAnswer"

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 651
    .local v22, "shOff":Landroid/content/SharedPreferences;
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 652
    .local v7, "editorOff":Landroid/content/SharedPreferences$Editor;
    const-string v25, "flag"

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 653
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 656
    .end local v7    # "editorOff":Landroid/content/SharedPreferences$Editor;
    .end local v22    # "shOff":Landroid/content/SharedPreferences;
    :sswitch_a
    const-string v25, "handleMessage (EVENT_SIM_RECOVERY)"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    aget-object v25, v25, v27

    const/16 v27, 0x6b

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v25, v0

    new-instance v27, Landroid/os/AsyncResult;

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v12, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 662
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 663
    .local v13, "intent":Landroid/content/Intent;
    const-string v25, "com.android.phone.ACTION_SIM_RECOVERY_DONE"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 667
    .end local v13    # "intent":Landroid/content/Intent;
    :sswitch_b
    const-string v25, "handleMessage (EVENT_SIM_MISSING)"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    aget-object v25, v25, v27

    const/16 v27, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 672
    :sswitch_c
    const-string v25, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_MISSING"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5    # "ar":Landroid/os/AsyncResult;
    check-cast v5, Landroid/os/AsyncResult;

    .line 674
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v5, v12, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V

    goto/16 :goto_0

    .line 677
    :sswitch_d
    const-string v25, "Received EVENT_GET_ICC_STATUS_DONE_FOR_SIM_RECOVERY"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 678
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5    # "ar":Landroid/os/AsyncResult;
    check-cast v5, Landroid/os/AsyncResult;

    .line 679
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v5, v12, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;Z)V

    goto/16 :goto_0

    .line 682
    :sswitch_e
    const-string v25, "handleMessage (EVENT_COMMON_SLOT_NO_CHANGED)"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 683
    new-instance v14, Landroid/content/Intent;

    const-string v25, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .local v14, "intentNoChanged":Landroid/content/Intent;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v27, 0x64

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 685
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 687
    :cond_13
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 688
    .local v24, "slotId":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Broadcasting intent ACTION_COMMON_SLOT_NO_CHANGED for mSlotId : "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 689
    move/from16 v0, v24

    invoke-static {v14, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 694
    .end local v14    # "intentNoChanged":Landroid/content/Intent;
    .end local v24    # "slotId":I
    :sswitch_f
    const-string v25, "handleMessgage (EVENT_CDMA_CARD_TYPE)"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5    # "ar":Landroid/os/AsyncResult;
    check-cast v5, Landroid/os/AsyncResult;

    .line 697
    .restart local v5    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    if-nez v25, :cond_3

    .line 698
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [I

    move-object/from16 v0, v25

    check-cast v0, [I

    move-object/from16 v20, v0

    .line 699
    .local v20, "resultType":[I
    if-eqz v20, :cond_3

    .line 700
    const/16 v25, 0x0

    aget v25, v20, v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardType(I)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 701
    const/16 v25, 0x0

    aget v25, v20, v25

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/IccCardConstants$CardType;->getCardTypeFromInt(I)Lcom/android/internal/telephony/IccCardConstants$CardType;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mCdmaCardType:Lcom/android/internal/telephony/IccCardConstants$CardType;

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->broadcastCdmaCardTypeIntent()V

    goto/16 :goto_0

    .line 705
    :cond_14
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "invalid cardType="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v27, 0x0

    aget v27, v20, v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 712
    .end local v20    # "resultType":[I
    :sswitch_10
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Received EVENT_SIM_PLUG_IN, index="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 714
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 715
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v27, 0x64

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 716
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 718
    :cond_15
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v25

    if-nez v25, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    move/from16 v25, v0

    const/16 v27, 0x5

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_16

    .line 719
    const/16 v25, 0x6e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    const-wide/16 v28, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 721
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    .line 722
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getFullCardType("

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, ") = "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getFullCardType(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, "  mRetryCounter = "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 725
    :cond_16
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mRetryCounter:I

    .line 726
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->updateC2KWPCardtype(Z)V

    goto/16 :goto_0

    .line 732
    :sswitch_11
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Received EVENT_SIM_PLUG_OUT, index="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 734
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 735
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccController;->getCardStatusDirectly()V

    .line 736
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->updateC2KWPCardtype(Z)V

    goto/16 :goto_0

    .line 741
    :sswitch_12
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Received EVENT_EUSIM_READY, index="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, ", bSetTrm="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 745
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 746
    const-string v25, "gsm.ril.init"

    const-string v27, "0"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 747
    .local v21, "rilInit":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "get gsm.ril.init : "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 748
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v18

    .line 749
    .local v18, "phoneCount":I
    const/16 v25, 0x2

    move/from16 v0, v18

    move/from16 v1, v25

    if-lt v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSwitchCardtype:Z

    move/from16 v25, v0

    if-nez v25, :cond_17

    const-string v25, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mRilInit:Z

    move/from16 v25, v0

    if-nez v25, :cond_17

    .line 752
    const-string v25, "gsm.ril.init"

    const-string v27, "0"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v25, "set gsm.ril.init to 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 754
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mRilInit:Z

    goto/16 :goto_0

    .line 757
    :cond_17
    const-string v25, "gsm.ril.init"

    const-string v27, "0"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v25, "Clear gsm.ril.init to 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 759
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mRilInit:Z

    .line 760
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/UiccController;->mSwitchCardtype:Z

    .line 763
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v27, 0x64

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 764
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 766
    :cond_18
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-nez v25, :cond_1a

    .line 767
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->initC2KWPCardtype(Ljava/lang/Integer;)V

    .line 772
    :cond_19
    :goto_6
    const-string v25, "ril.cfun.send"

    const-string v27, "0"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, "cfunSend":Ljava/lang/String;
    const-string v25, "1"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 775
    const-string v25, "ril.cfun.send"

    const-string v27, "0"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    .end local v6    # "cfunSend":Ljava/lang/String;
    :cond_1a
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    .line 769
    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->initC2KWPCardtype(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 484
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_b
        0x69 -> :sswitch_a
        0x6a -> :sswitch_c
        0x6b -> :sswitch_d
        0x6d -> :sswitch_11
        0x6e -> :sswitch_10
        0x73 -> :sswitch_2
        0x74 -> :sswitch_e
        0x75 -> :sswitch_f
        0x76 -> :sswitch_12
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_6
        0xca -> :sswitch_7
    .end sparse-switch
.end method

.method public registerForApplicationChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1419
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1420
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1421
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1424
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1425
    monitor-exit v2

    .line 1426
    return-void

    .line 1425
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForC2KWPCardTypeReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1785
    sget-object v3, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1786
    :try_start_0
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1787
    .local v1, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardTypeReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1788
    const-string v2, "gsm.ril.cardtypeset"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1789
    .local v0, "cardTypeSet":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1790
    const-string v2, "UiccController"

    const-string v4, "registerForC2KWPCardTypeReady cardtype ready, notify!"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    invoke-virtual {v1}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1793
    :cond_0
    monitor-exit v3

    .line 1794
    return-void

    .line 1793
    .end local v0    # "cardTypeSet":Ljava/lang/String;
    .end local v1    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 432
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 433
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 434
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 437
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 438
    monitor-exit v2

    .line 439
    return-void

    .line 438
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForIccRecovery(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 449
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 450
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 451
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 454
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 455
    monitor-exit v2

    .line 456
    return-void

    .line 455
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public repollIccStateForModemSmlChangeFeatrue(IZ)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "needIntent"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repollIccStateForModemSmlChangeFeatrue, needIntent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1411
    if-ne p2, v0, :cond_0

    .line 1414
    .local v0, "arg1":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    const/16 v3, 0x73

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v1, v4}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1415
    return-void

    .end local v0    # "arg1":I
    :cond_0
    move v0, v1

    .line 1411
    goto :goto_0
.end method

.method public resetProperties(I)V
    .locals 7
    .param p1, "newCdmaSlot"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 1961
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 1962
    .local v1, "phoneCount":I
    const/4 v0, -0x1

    .line 1963
    .local v0, "oldCdmaSlot":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetProperties: newCdmaSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1964
    const-string v2, "ril.iccid.sim1_c2k"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const-string v2, "resetProperties: Reset ril.iccid.sim1_c2k as null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1966
    if-lt v1, v4, :cond_2

    if-ltz p1, :cond_2

    if-ge p1, v4, :cond_2

    .line 1967
    if-nez p1, :cond_3

    .line 1968
    const/4 v0, 0x1

    .line 1972
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v2, v2, v0

    if-eq v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v2, v2, v0

    if-ne v2, v6, :cond_4

    .line 1974
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1975
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "N/A"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetProperties: Reset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/UiccController;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as N/A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1986
    :cond_2
    :goto_1
    return-void

    .line 1969
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1970
    const/4 v0, 0x0

    goto :goto_0

    .line 1978
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v2, v2, p1

    if-eq v2, v5, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardtype:[I

    aget v2, v2, p1

    if-ne v2, v6, :cond_2

    .line 1980
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1981
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetProperties: Reset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/UiccController;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resetRadioForVsim()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1951
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    shl-int v1, v3, v1

    add-int/lit8 v0, v1, -0x1

    .line 1953
    .local v0, "allPhoneIdBitMask":I
    const-string v1, "resetRadioForVsim...false"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1954
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 1955
    const-string v1, "resetRadioForVsim...true"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1956
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 1957
    return-void
.end method

.method public setBtConnectedSimId(I)V
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 1378
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBtConnectedSimId, slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mBtSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1380
    return-void
.end method

.method public setCis([Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 5
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "init"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1490
    const-string v2, "setmCis"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1493
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1494
    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1495
    const-string v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unencrypted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "trigger_restart_framework"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1497
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1501
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x3

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1502
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1504
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x65

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1505
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x66

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1506
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x67

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1507
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x69

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1508
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x6d

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1509
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x6e

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1510
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x74

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1511
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0xca

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSessionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1512
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1514
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x75

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaCardType(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1492
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1499
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 1518
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1519
    if-eqz p2, :cond_5

    .line 1520
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->registerEusimReady()V

    .line 1528
    :cond_4
    return-void

    .line 1522
    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1523
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1524
    .restart local v1    # "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x76

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForEusimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1522
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x64

    .line 1442
    const-string v0, "init SVLTE UiccController!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1444
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1446
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1447
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1448
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1449
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x76

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForEusimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1450
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x74

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1451
    return-void
.end method

.method public setSvlteIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1475
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1476
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteIndex invalid index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1481
    :goto_0
    return-void

    .line 1479
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteIndex mSvlteIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTrm(Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .param p1, "gMsg"    # Landroid/os/Message;
    .param p2, "cMsg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x13

    .line 1906
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    .line 1907
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    .line 1908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrm, mSetRadioDone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSetRadioDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bSetTrm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->bSetTrm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1910
    const-string v1, "gsm.ril.cardtypeset"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-string v1, "gsm.ril.cardtypeset.2"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 1915
    .local v0, "cdmaSlotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrm, cdmaSlotId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1916
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    .line 1917
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    .line 1918
    return-void
.end method

.method public switchCardType(IIZ)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "cardtype"    # I
    .param p3, "hasCDMACapability"    # Z

    .prologue
    .line 1937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSwitchCardtype:Z

    .line 1938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitchCardType slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  cardtype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSwitchCardtype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSwitchCardtype:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasCDMACapability = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1942
    if-eqz p3, :cond_0

    .line 1943
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->switchCardType(I)V

    .line 1946
    :cond_0
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/CommandsInterface;->switchCardType(I)V

    .line 1947
    return-void
.end method

.method public unSetCis([Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 1571
    const-string v2, "unSetCis"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1573
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1574
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1575
    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 1576
    const-string v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unencrypted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "trigger_restart_framework"

    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1578
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1582
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 1583
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 1584
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVirtualSimOn(Landroid/os/Handler;)V

    .line 1585
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVirtualSimOff(Landroid/os/Handler;)V

    .line 1586
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimMissing(Landroid/os/Handler;)V

    .line 1587
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimRecovery(Landroid/os/Handler;)V

    .line 1588
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPlugOut(Landroid/os/Handler;)V

    .line 1589
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPlugIn(Landroid/os/Handler;)V

    .line 1590
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCommonSlotNoChanged(Landroid/os/Handler;)V

    .line 1591
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSessionChanged(Landroid/os/Handler;)V

    .line 1592
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForEusimReady(Landroid/os/Handler;)V

    .line 1593
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1595
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaCardType(Landroid/os/Handler;)V

    .line 1573
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1580
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    goto :goto_1

    .line 1598
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method public unSetSvlteCi(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 1460
    const-string v0, "unSetSvlteCi!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1462
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 1464
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPlugOut(Landroid/os/Handler;)V

    .line 1466
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSimPlugIn(Landroid/os/Handler;)V

    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForEusimReady(Landroid/os/Handler;)V

    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSvlteCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCommonSlotNoChanged(Landroid/os/Handler;)V

    .line 1469
    return-void
.end method

.method public unregisterForApplicationChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1429
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1430
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mApplicationChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1431
    monitor-exit v1

    .line 1432
    return-void

    .line 1431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForC2KWPCardTypeReady(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1797
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1798
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mC2KWPCardTypeReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1799
    monitor-exit v1

    .line 1800
    return-void

    .line 1799
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 442
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 444
    monitor-exit v1

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForIccRecovery(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 459
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRecoveryRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 461
    monitor-exit v1

    .line 462
    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
