.class public Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.super Ljava/lang/Object;
.source "DataSubSelector.java"


# static fields
.field public static final ACTION_MOBILE_DATA_ENABLE:Ljava/lang/String; = "android.intent.action.ACTION_MOBILE_DATA_ENABLE"

.field static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final BSP_PACKAGE:Z

.field private static final DBG:Z = true

.field public static final EXTRA_MOBILE_DATA_ENABLE_REASON:Ljava/lang/String; = "reason"

.field private static final FIRST_TIME_ROAMING:Ljava/lang/String; = "first_time_roaming"

.field private static final HOME_POLICY:I = 0x0

.field public static final INTENT_ACTION_RF_OFF_IN_IDLE:Ljava/lang/String; = "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

.field private static final NEED_TO_EXECUTE_ROAMING:Ljava/lang/String; = "need_to_execute_roaming"

.field private static final NEED_TO_WAIT_UNLOCKED:Ljava/lang/String; = "persist.radio.unlock"

.field private static final NEED_TO_WAIT_UNLOCKED_ROAMING:Ljava/lang/String; = "persist.radio.unlock.roaming"

.field private static final NEW_SIM_SLOT:Ljava/lang/String; = "persist.radio.new.sim.slot"

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field private static final OLD_ICCID:Ljava/lang/String; = "old_iccid"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP01:Ljava/lang/String; = "OP01"

.field private static final OPERATOR_OP02:Ljava/lang/String; = "OP02"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final PROPERTY_3G_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field private static final PROPERTY_DEFAULT_DATA_ICCID:Ljava/lang/String; = "persist.radio.data.iccid"

.field private static final PROPERTY_DEFAULT_SIMSWITCH_ICCID:Ljava/lang/String; = "persist.radio.simswitch.iccid"

.field private static final PROPERTY_MOBILE_DATA_ENABLE:Ljava/lang/String; = "persist.radio.mobile.data"

.field public static final REASON_MOBILE_DATA_ENABLE_SYSTEM:Ljava/lang/String; = "system"

.field public static final REASON_MOBILE_DATA_ENABLE_USER:Ljava/lang/String; = "user"

.field private static final ROAMING_POLICY:I = 0x1

.field private static final SEGDEFAULT:Ljava/lang/String; = "SEGDEFAULT"

.field private static final SIM_STATUS:Ljava/lang/String; = "persist.radio.sim.status"

.field private static mOperatorSpec:Ljava/lang/String;


# instance fields
.field private PROPERTY_ICCID:[Ljava/lang/String;

.field private PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field private mAirplaneModeOn:Z

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHasRegisterWorldModeReceiver:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsNeedWaitAirplaneModeOff:Z

.field private mIsNeedWaitAirplaneModeOffRoaming:Z

.field private mIsNeedWaitImsi:Z

.field private mIsNeedWaitImsiRoaming:Z

.field private mIsSubReady:Z

.field private mIsUserConfirmDefaultData:Z

.field private mLastValidDefaultDataSubId:I

.field private mPhoneId:I

.field private mPhoneNum:I

.field private mRadioTechDone:Z

.field private mWorldModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "ro.mtk_bsp_package"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNum"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 50
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ril.iccid.sim1"

    aput-object v4, v3, v2

    const-string v4, "ril.iccid.sim2"

    aput-object v4, v3, v1

    const-string v4, "ril.iccid.sim3"

    aput-object v4, v3, v6

    const-string v4, "ril.iccid.sim4"

    aput-object v4, v3, v7

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 80
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ril.iccid.sim1"

    aput-object v4, v3, v2

    const-string v4, "ril.iccid.sim2"

    aput-object v4, v3, v1

    const-string v4, "ril.iccid.sim3"

    aput-object v4, v3, v6

    const-string v4, "ril.iccid.sim4"

    aput-object v4, v3, v7

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    .line 98
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z

    .line 100
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    .line 101
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 102
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 103
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    .line 104
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    .line 105
    iput v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    .line 106
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    .line 107
    iput v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    .line 109
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    .line 110
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    .line 113
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    .line 115
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v3, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;

    invoke-direct {v3, p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$2;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    iput-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 397
    const-string v3, "DataSubSelector is created"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 398
    iput p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    .line 399
    const-string v3, "ro.operator.optr"

    const-string v4, "OM"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operator Spec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 402
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 403
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v3, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v3, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v3, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    const-string v3, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string v3, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v3, "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    iget-object v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    .line 424
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    .line 425
    return-void

    :cond_0
    move v1, v2

    .line 421
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09ASupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSvlte(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isNeedWaitUnlock(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02()V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    return v0
.end method

.method static synthetic access$2600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    iget v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsiRoaming:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch6m()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z

    move-result v0

    return v0
.end method

.method private checkCdmaCardInsert()Z
    .locals 4

    .prologue
    .line 503
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 504
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 505
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRuimCsim(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDMA sim is inserted in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 507
    const/4 v2, 0x1

    .line 510
    :goto_1
    return v2

    .line 504
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkOp01CapSwitch()Z
    .locals 20

    .prologue
    .line 1047
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v15, v0, [I

    .line 1048
    .local v15, "simOpInfo":[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 1049
    .local v16, "simType":[I
    const/16 v17, -0x1

    .line 1050
    .local v17, "targetSim":I
    const/4 v8, 0x0

    .line 1051
    .local v8, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1052
    .local v5, "csimRuimCount":I
    const/4 v10, -0x1

    .line 1053
    .local v10, "nonCsimRuimPhoneId":I
    const/4 v9, 0x0

    .line 1054
    .local v9, "insertedStatus":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v12, v0, [Z

    .line 1055
    .local v12, "op01Usim":[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v11, v0, [Z

    .line 1056
    .local v11, "op01Sim":[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v14, v0, [Z

    .line 1057
    .local v14, "overseaUsim":[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v13, v0, [Z

    .line 1058
    .local v13, "overseaSim":[Z
    const-string v18, "persist.radio.simswitch.iccid"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1059
    .local v3, "capabilitySimIccid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v6, v0, [Ljava/lang/String;

    .line 1061
    .local v6, "currIccId":[Ljava/lang/String;
    const-string v18, "checkOp01CapSwitch start"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1063
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_3

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    .line 1065
    aget-object v18, v6, v7

    if-eqz v18, :cond_0

    const-string v18, ""

    aget-object v19, v6, v7

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1066
    :cond_0
    const-string v18, "error: iccid not found, wait for next sub ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1067
    const/16 v18, 0x0

    .line 1214
    :goto_1
    return v18

    .line 1069
    :cond_1
    const-string v18, "N/A"

    aget-object v19, v6, v7

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 1070
    add-int/lit8 v8, v8, 0x1

    .line 1071
    const/16 v18, 0x1

    shl-int v18, v18, v7

    or-int v9, v9, v18

    .line 1063
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1075
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "checkOp01CapSwitch : Inserted SIM count: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", insertedStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1077
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1078
    const-string v18, "checkOp01CapSwitch: sim locked"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1079
    const-string v18, "persist.radio.unlock"

    const-string v19, "true"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :goto_2
    move-object/from16 v0, v16

    invoke-static {v15, v0, v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1085
    const/16 v18, 0x0

    goto :goto_1

    .line 1081
    :cond_4
    const-string v18, "checkOp01CapSwitch: no sim locked"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1082
    const-string v18, "persist.radio.unlock"

    const-string v19, "false"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1088
    :cond_5
    const-string v18, "persist.radio.simswitch"

    const-string v19, "1"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 1090
    .local v4, "capabilitySimId":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "op01: capabilitySimIccid:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "capabilitySimId:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1092
    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_c

    .line 1094
    aget v18, v15, v7

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1095
    aget v18, v16, v7

    if-eqz v18, :cond_8

    .line 1096
    const/16 v18, 0x1

    aput-boolean v18, v12, v7

    .line 1108
    :cond_6
    :goto_4
    aget v18, v16, v7

    if-eqz v18, :cond_7

    aget v18, v16, v7

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1110
    :cond_7
    move v10, v7

    .line 1092
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1098
    :cond_8
    const/16 v18, 0x1

    aput-boolean v18, v11, v7

    goto :goto_4

    .line 1100
    :cond_9
    aget v18, v15, v7

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1101
    aget v18, v16, v7

    if-eqz v18, :cond_a

    .line 1102
    const/16 v18, 0x1

    aput-boolean v18, v14, v7

    goto :goto_4

    .line 1104
    :cond_a
    const/16 v18, 0x1

    aput-boolean v18, v13, v7

    goto :goto_4

    .line 1112
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1116
    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "op01Usim: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v12}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1117
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "op01Sim: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v11}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1118
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "overseaUsim: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v14}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1119
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "overseaSim: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v13}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1121
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "csimRuimCount: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1122
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "nonCsimRuimPhoneId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1125
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isOp01LCProject()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1126
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_e

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_e

    .line 1127
    if-eq v10, v4, :cond_d

    .line 1128
    const-string v18, "op01-L+C: current capability SIM is on CSIM/RUIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1129
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1131
    :cond_d
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1134
    :cond_e
    const/4 v7, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_1c

    .line 1135
    aget-object v18, v6, v7

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 1136
    invoke-static {v7, v12, v11, v14, v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v17

    .line 1138
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "op01: i = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", currIccId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v6, v7

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", targetSim : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1140
    aget-boolean v18, v12, v7

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 1141
    const-string v18, "op01-C1: cur is old op01 USIM, no change"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1142
    if-eq v4, v7, :cond_f

    .line 1143
    const-string v18, "op01-C1a: old op01 USIM change slot, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1144
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1146
    :cond_f
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1147
    :cond_10
    aget-boolean v18, v11, v7

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 1148
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 1149
    const-string v18, "op01-C2: cur is old op01 SIM but find op01 USIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1150
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1155
    :cond_11
    :goto_7
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1151
    :cond_12
    if-eq v4, v7, :cond_11

    .line 1152
    const-string v18, "op01-C2a: old op01 SIM change slot, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_7

    .line 1156
    :cond_13
    aget-boolean v18, v14, v7

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 1157
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 1158
    const-string v18, "op01-C3: cur is old OS USIM but find op01 SIMs, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1159
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1164
    :cond_14
    :goto_8
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1160
    :cond_15
    if-eq v4, v7, :cond_14

    .line 1161
    const-string v18, "op01-C3a: old OS USIM change slot, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1162
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_8

    .line 1165
    :cond_16
    aget-boolean v18, v13, v7

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 1166
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    .line 1167
    const-string v18, "op01-C4: cur is old OS SIM but find op01 SIMs/OS USIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1173
    :cond_17
    :goto_9
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1169
    :cond_18
    if-eq v4, v7, :cond_17

    .line 1170
    const-string v18, "op01-C4a: old OS SIM change slot, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1171
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_9

    .line 1174
    :cond_19
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    .line 1175
    const-string v18, "op01-C5: cur is old non-op01 SIM/USIM but find higher SIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1176
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1177
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1179
    :cond_1a
    const-string v18, "op01-C6: no higher priority SIM, no cahnge"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1180
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1134
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 1184
    :cond_1c
    invoke-static {v4, v12, v11, v14, v13}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v17

    .line 1186
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "op01: target SIM :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1187
    aget-boolean v18, v12, v4

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 1188
    const-string v18, "op01-C7: cur is new op01 USIM, no change"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1189
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1190
    :cond_1d
    aget-boolean v18, v11, v4

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    .line 1191
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e

    .line 1192
    const-string v18, "op01-C8: cur is new op01 SIM but find op01 USIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1193
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1195
    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1196
    :cond_1f
    aget-boolean v18, v14, v4

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_21

    .line 1197
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_20

    .line 1198
    const-string v18, "op01-C9: cur is new OS USIM but find op01 SIMs, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1199
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1201
    :cond_20
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1202
    :cond_21
    aget-boolean v18, v13, v4

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_23

    .line 1203
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_22

    .line 1204
    const-string v18, "op01-C10: cur is new OS SIM but find op01 SIMs/OS USIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1205
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1207
    :cond_22
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1208
    :cond_23
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_24

    .line 1209
    const-string v18, "op01-C11: cur is non-op01 but find higher priority SIM, change!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1210
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1214
    :goto_a
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1212
    :cond_24
    const-string v18, "op01-C12: no higher priority SIM, no cahnge"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private checkOp01CapSwitch6m()Z
    .locals 13

    .prologue
    .line 1220
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v11, [I

    .line 1221
    .local v8, "simOpInfo":[I
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v9, v11, [I

    .line 1222
    .local v9, "simType":[I
    const/4 v10, -0x1

    .line 1223
    .local v10, "targetPhoneId":I
    const/4 v4, 0x0

    .line 1224
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1226
    .local v5, "insertedStatus":I
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v11, [Ljava/lang/String;

    .line 1227
    .local v0, "currIccId":[Ljava/lang/String;
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v6, v11, [I

    .line 1228
    .local v6, "priority":[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 1229
    .local v2, "defDataSubId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1230
    .local v1, "defDataPhoneId":I
    if-ltz v1, :cond_1

    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v11, :cond_1

    .line 1232
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "default data phoneId from sub = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1238
    :goto_0
    const-string v11, "checkOp01CapSwitch6m start"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1240
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_4

    .line 1241
    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v3

    .line 1242
    aget-object v11, v0, v3

    if-eqz v11, :cond_0

    const-string v11, ""

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1243
    :cond_0
    const-string v11, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1244
    const/4 v11, 0x0

    .line 1293
    :goto_2
    return v11

    .line 1234
    .end local v3    # "i":I
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "phoneId out of boundary :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1235
    const/4 v1, -0x1

    goto :goto_0

    .line 1246
    .restart local v3    # "i":I
    :cond_2
    const-string v11, "N/A"

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1247
    add-int/lit8 v4, v4, 0x1

    .line 1248
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    or-int/2addr v5, v11

    .line 1240
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1253
    :cond_4
    const/4 v3, 0x0

    :goto_3
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_7

    .line 1254
    if-nez v3, :cond_6

    .line 1255
    const-string v7, "gsm.sim.ril.mcc.mnc"

    .line 1259
    .local v7, "propStr":Ljava/lang/String;
    :goto_4
    const-string v11, ""

    invoke-static {v7, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "sim_lock"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1260
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkOp01CapSwitch : phone "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is sim lock"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1261
    const-string v11, "persist.radio.unlock"

    const-string v12, "true"

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1257
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "propStr":Ljava/lang/String;
    goto :goto_4

    .line 1264
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_7
    invoke-static {v8, v9, v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1265
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1268
    :cond_8
    const/4 v3, 0x0

    :goto_5
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_c

    .line 1269
    aget v11, v8, v3

    const/4 v12, 0x2

    if-ne v11, v12, :cond_b

    .line 1270
    aget v11, v9, v3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 1271
    const/4 v11, 0x0

    aput v11, v6, v3

    .line 1268
    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1272
    :cond_a
    aget v11, v9, v3

    if-nez v11, :cond_9

    .line 1273
    const/4 v11, 0x1

    aput v11, v6, v3

    goto :goto_6

    .line 1276
    :cond_b
    const/4 v11, 0x2

    aput v11, v6, v3

    goto :goto_6

    .line 1280
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "priority: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1283
    invoke-static {v1, v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHighestPriorityPhone(I[I)I

    move-result v10

    .line 1285
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "op01-6m: target phone: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1286
    const/4 v11, -0x1

    if-eq v10, v11, :cond_d

    .line 1287
    const-string v11, "op01-6m: highest priority SIM determined, change!"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1288
    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1293
    :goto_7
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1290
    :cond_d
    const-string v11, "op01-6m: can\'t determine highest priority SIM, no change"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private checkOp02CapSwitch(I)Z
    .locals 14
    .param p1, "policy"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1742
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v12, [I

    .line 1743
    .local v7, "simOpInfo":[I
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v12, [I

    .line 1744
    .local v8, "simType":[I
    const/4 v3, 0x0

    .line 1745
    .local v3, "insertedStatus":I
    const/4 v2, 0x0

    .line 1746
    .local v2, "insertedSimCount":I
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v12, [Ljava/lang/String;

    .line 1747
    .local v0, "currIccId":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1748
    .local v9, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1749
    .local v6, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1750
    .local v4, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1752
    .local v5, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v12, :cond_4

    .line 1753
    iget-object v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v1

    .line 1754
    aget-object v12, v0, v1

    if-eqz v12, :cond_0

    const-string v12, ""

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1755
    :cond_0
    const-string v11, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1824
    :cond_1
    :goto_1
    return v10

    .line 1758
    :cond_2
    const-string v12, "N/A"

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1759
    add-int/lit8 v2, v2, 0x1

    .line 1760
    shl-int v12, v11, v1

    or-int/2addr v3, v12

    .line 1752
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1763
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkOp02CapSwitch : Inserted SIM count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", insertedStatus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1767
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1768
    const-string v12, "checkOp02CapSwitch: sim locked"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1769
    if-nez p1, :cond_6

    .line 1770
    const-string v12, "persist.radio.unlock"

    const-string v13, "true"

    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    :goto_2
    invoke-static {v7, v8, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1786
    iget-boolean v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v12, :cond_5

    .line 1787
    const-string v12, "DataSubSelector for OP02: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1788
    if-nez p1, :cond_9

    .line 1789
    iput-boolean v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 1795
    :cond_5
    :goto_3
    const/4 v1, 0x0

    :goto_4
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v12, :cond_c

    .line 1796
    const/4 v12, 0x3

    aget v13, v7, v1

    if-ne v12, v13, :cond_a

    .line 1797
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1801
    :goto_5
    aget v12, v8, v1

    if-ne v11, v12, :cond_b

    .line 1802
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1772
    :cond_6
    const-string v12, "persist.radio.unlock.roaming"

    const-string v13, "true"

    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1775
    :cond_7
    const-string v12, "checkOp02CapSwitch: no sim locked"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1776
    if-nez p1, :cond_8

    .line 1777
    const-string v12, "persist.radio.unlock"

    const-string v13, "false"

    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1779
    :cond_8
    const-string v12, "persist.radio.unlock.roaming"

    const-string v13, "false"

    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1790
    :cond_9
    if-ne v11, p1, :cond_5

    .line 1791
    iput-boolean v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOffRoaming:Z

    goto :goto_3

    .line 1799
    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1804
    :cond_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1807
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "usimIndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1808
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "op02IndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1809
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "policy = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1811
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    .line 1813
    packed-switch p1, :pswitch_data_0

    .line 1821
    const-string v10, "Should NOT be here"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    :goto_7
    move v10, v11

    .line 1824
    goto/16 :goto_1

    .line 1815
    :pswitch_0
    invoke-direct {p0, v9, v4, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->executeOp02HomePolicy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_7

    .line 1818
    :pswitch_1
    invoke-direct {p0, v9, v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->executeOp02RoamingPolocy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_7

    .line 1813
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeOp02HomePolicy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    .line 1829
    const/4 v2, -0x1

    .line 1830
    .local v2, "phoneId":I
    const/4 v1, 0x0

    .line 1832
    .local v1, "op02CardCount":I
    const-string v3, "Enter op02HomePolicy"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 1836
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1837
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1838
    add-int/lit8 v1, v1, 0x1

    .line 1839
    move v2, v0

    .line 1836
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1843
    :cond_1
    if-ne v1, v5, :cond_3

    .line 1848
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C2: Only one OP02 USIM inserted, set default data to phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1850
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1851
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1852
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02()V

    .line 1904
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 1857
    .restart local v0    # "i":I
    :cond_3
    const-string v3, "C3: More than two OP02 cards or other operator cards inserted,Display dialog"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1859
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    .line 1860
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto :goto_1

    .line 1862
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 1867
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C4: Only one USIM inserted, set default data to phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1870
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1871
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1872
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02()V

    goto :goto_1

    .line 1877
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 1878
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1879
    add-int/lit8 v1, v1, 0x1

    .line 1880
    move v2, v0

    .line 1877
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1884
    :cond_7
    if-ne v1, v5, :cond_8

    .line 1889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C5: OP02 card + otehr op cards inserted, set default data to phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1891
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1892
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1893
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02()V

    goto :goto_1

    .line 1898
    :cond_8
    const-string v3, "C6: More than two OP02 cards or other operator cards inserted,display dialog"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1900
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    .line 1901
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto/16 :goto_1
.end method

.method private executeOp02RoamingPolocy(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1908
    const/4 v2, -0x1

    .line 1909
    .local v2, "phoneId":I
    const/4 v4, 0x0

    .line 1911
    .local v4, "usimCount":I
    const-string v5, "Enter op02RoamingPolocy"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1913
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 1914
    const-string v5, "mContext is null, return"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1918
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_6

    .line 1920
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1921
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1922
    add-int/lit8 v4, v4, 0x1

    .line 1923
    move v2, v1

    .line 1920
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1927
    :cond_2
    if-ne v4, v7, :cond_5

    .line 1932
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C2: Only one OP02 USIM inserted, set default data to phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1934
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1935
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1936
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02()V

    .line 1987
    .end local v1    # "i":I
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    const-string v6, "first_time_roaming"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1989
    .local v3, "preferenceRoaming":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1990
    .local v0, "editorRoaming":Landroid/content/SharedPreferences$Editor;
    const-string v5, "need_to_execute_roaming"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1991
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1992
    const-string v5, "write sharedPreference ERROR"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1994
    :cond_4
    return-void

    .line 1941
    .end local v0    # "editorRoaming":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferenceRoaming":Landroid/content/SharedPreferences;
    .restart local v1    # "i":I
    :cond_5
    const-string v5, "C3: More than two USIM cards or other SIM cards inserted, show dialog"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1942
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    .line 1943
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto :goto_1

    .line 1945
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 1950
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1951
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C4: OP02 card + other cards inserted, set default data to phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1953
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1954
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1955
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02()V

    goto :goto_1

    .line 1960
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 1961
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1962
    add-int/lit8 v4, v4, 0x1

    .line 1963
    move v2, v1

    .line 1960
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1967
    :cond_9
    if-ne v4, v7, :cond_a

    .line 1972
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C5: Other USIM + other SIM cards inserted, set default data to phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1974
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1975
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1976
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02()V

    goto/16 :goto_1

    .line 1981
    :cond_a
    const-string v5, "C6: More than two USIM cards or all SIM cards inserted, diaplay dialog"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1982
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    .line 1983
    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsUserConfirmDefaultData:Z

    goto/16 :goto_1
.end method

.method private getDataEnabledFromSetting(I)Z
    .locals 5
    .param p1, "nSubId"    # I

    .prologue
    .line 2131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataEnabledFromSetting, nSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2133
    const/4 v0, 0x0

    .line 2135
    .local v0, "retVal":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2136
    :cond_0
    const-string v2, "getDataEnabledFromSetting, context or resolver is null, return"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 2146
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataEnabledFromSetting, retVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2147
    return v0

    .line 2140
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2142
    :catch_0
    move-exception v1

    .line 2143
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "data enabled settings not found!"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getLastDataEnabled()I
    .locals 5

    .prologue
    .line 2108
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 2109
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataSubselector getLastDataEnable subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2110
    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2112
    .local v0, "enabled":I
    return v0
.end method

.method private getNewSimSlot()I
    .locals 2

    .prologue
    .line 2068
    const-string v0, "getNewSimSlot"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2069
    const-string v0, "persist.radio.new.sim.slot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSimStatus()I
    .locals 2

    .prologue
    .line 2048
    const-string v0, "getSimStatus"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2049
    const-string v0, "persist.radio.sim.status"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDataEnableForOp02()V
    .locals 7

    .prologue
    .line 1997
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 1998
    .local v1, "defaultDataSub":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleDataEnableForOp02: defaultDataSub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2000
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 2002
    .local v4, "phoneId":I
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2003
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getDataEnabledFromSetting(I)Z

    move-result v0

    .line 2004
    .local v0, "dataEnabled":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastValidDefaultDataSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dataEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2006
    invoke-direct {p0, v4, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 2013
    .end local v0    # "dataEnabled":Z
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 2014
    .local v3, "phoneCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2015
    if-eq v2, v4, :cond_0

    .line 2016
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 2014
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2008
    .end local v2    # "i":I
    .end local v3    # "phoneCount":I
    :cond_1
    const-string v5, "first boot up or factory reset, reset data enable state"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2009
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_0

    .line 2021
    .restart local v2    # "i":I
    .restart local v3    # "phoneCount":I
    :cond_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    .line 2022
    return-void
.end method

.method private isNeedWaitUnlock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 2025
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isOP09ASupport()Z
    .locals 3

    .prologue
    .line 2126
    const-string v0, "OP09"

    const-string v1, "ro.operator.optr"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SEGDEFAULT"

    const-string v1, "ro.operator.seg"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 2094
    const-string v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 2100
    const-string v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    return-void
.end method

.method private registerWorldModeReceiver()V
    .locals 3

    .prologue
    .line 2073
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2074
    const-string v1, "registerWorldModeReceiver, context is null => return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2077
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2078
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2079
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2080
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    .line 2081
    return-void
.end method

.method private resetNewSimSlot()V
    .locals 2

    .prologue
    .line 2063
    const-string v0, "resetNewSimSlot"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2064
    const-string v0, "persist.radio.new.sim.slot"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    return-void
.end method

.method private resetSimStatus()V
    .locals 2

    .prologue
    .line 2043
    const-string v0, "resetSimStatus"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2044
    const-string v0, "persist.radio.sim.status"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    return-void
.end method

.method private setCapability(I)Z
    .locals 12
    .param p1, "phoneId"    # I

    .prologue
    .line 1674
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v10, [I

    .line 1675
    .local v8, "phoneRat":[I
    const/4 v7, 0x1

    .line 1677
    .local v7, "isSwitchSuccess":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setCapability: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1679
    const-string v10, "persist.radio.simswitch"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1680
    .local v1, "curr3GSim":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current 3G Sim = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1682
    if-eqz v1, :cond_0

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1683
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1684
    .local v0, "curr3GPhoneId":I
    add-int/lit8 v10, p1, 0x1

    if-ne v0, v10, :cond_0

    .line 1685
    const-string v10, "Current 3G phone equals target phone, don\'t trigger switch"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    move v10, v7

    .line 1738
    .end local v0    # "curr3GPhoneId":I
    :goto_0
    return v10

    .line 1691
    :cond_0
    :try_start_0
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1693
    .local v5, "iTel":Lcom/android/internal/telephony/ITelephony;
    const-string v10, "phoneEx"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v6

    .line 1695
    .local v6, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v5, :cond_1

    if-nez v6, :cond_2

    .line 1696
    :cond_1
    const-string v10, "Can not get phone service"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1697
    const/4 v10, 0x0

    goto :goto_0

    .line 1700
    :cond_2
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(I)I

    move-result v2

    .line 1701
    .local v2, "currRat":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current phoneRat:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1703
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v9, v10, [Landroid/telephony/RadioAccessFamily;

    .line 1704
    .local v9, "rat":[Landroid/telephony/RadioAccessFamily;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v10, :cond_6

    .line 1705
    if-ne p1, v4, :cond_3

    .line 1706
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM switch to Phone"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1707
    const v10, 0x14008

    aput v10, v8, v4

    .line 1713
    :goto_2
    new-instance v10, Landroid/telephony/RadioAccessFamily;

    aget v11, v8, v4

    invoke-direct {v10, v4, v11}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v10, v9, v4

    .line 1704
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1711
    :cond_3
    const/high16 v10, 0x10000

    aput v10, v8, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1719
    .end local v2    # "currRat":I
    .end local v4    # "i":I
    .end local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v9    # "rat":[Landroid/telephony/RadioAccessFamily;
    :catch_0
    move-exception v3

    .line 1720
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v10, "Set phone rat fail!!!"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1722
    const/4 v7, 0x0

    .line 1725
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_3
    if-nez v7, :cond_7

    .line 1726
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1727
    const-string v10, "world mode switching!"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1728
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->registerWorldModeReceiver()V

    .line 1729
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    :cond_5
    :goto_4
    move v10, v7

    .line 1738
    goto/16 :goto_0

    .line 1715
    .restart local v2    # "currRat":I
    .restart local v4    # "i":I
    .restart local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .restart local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .restart local v9    # "rat":[Landroid/telephony/RadioAccessFamily;
    :cond_6
    :try_start_1
    invoke-interface {v6, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1716
    const-string v10, "Set phone rat fail!!!"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1717
    const/4 v7, 0x0

    goto :goto_3

    .line 1732
    .end local v2    # "currRat":I
    .end local v4    # "i":I
    .end local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v9    # "rat":[Landroid/telephony/RadioAccessFamily;
    :cond_7
    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    if-eqz v10, :cond_5

    .line 1733
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->unRegisterWorldModeReceiver()V

    .line 1734
    const/4 v10, -0x1

    iput v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneId:I

    goto :goto_4
.end method

.method private setCapabilityForC2K6M(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1629
    const-string v6, "DataSubSelector for setCapabilityForC2K6M: only for capability switch"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1632
    const/4 v5, -0x1

    .line 1633
    .local v5, "phoneId":I
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v6, [Ljava/lang/String;

    .line 1639
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v3, ""

    .line 1640
    .local v3, "defaultIccid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 1641
    .local v2, "defDataSubId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1642
    .local v1, "defDataPhoneId":I
    if-ltz v1, :cond_0

    .line 1643
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    array-length v6, v6

    if-lt v1, v6, :cond_3

    .line 1644
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phoneId out of boundary :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1650
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default data Iccid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1651
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "N/A"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1652
    :cond_1
    const-string v6, "Default data Iccid N/A or null,return"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1671
    :cond_2
    :goto_1
    return-void

    .line 1646
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "defDataPhoneId ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1647
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1655
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v6, :cond_7

    .line 1656
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    .line 1657
    aget-object v6, v0, v4

    if-eqz v6, :cond_5

    const-string v6, ""

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1658
    :cond_5
    const-string v6, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1661
    :cond_6
    aget-object v6, v0, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1662
    move v5, v4

    .line 1666
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default data phoneid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1667
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1669
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_1

    .line 1655
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private setCapabilityIfNeeded(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCapabilityIfNeeded,mIsSubReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRadioTechDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1623
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mRadioTechDone:Z

    if-eqz v0, :cond_0

    .line 1624
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityForC2K6M(Landroid/content/Intent;)V

    .line 1626
    :cond_0
    return-void
.end method

.method private setDataEnabled(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataEnabled: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1482
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1483
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 1484
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 1485
    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1487
    :cond_1
    const/4 v1, 0x0

    .line 1488
    .local v1, "phoneSubId":I
    if-nez p2, :cond_2

    .line 1489
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v2, v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0

    .line 1493
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v0, v3, :cond_0

    .line 1494
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1495
    if-eq v0, p1, :cond_3

    .line 1496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1497
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1493
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1499
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1500
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_2
.end method

.method private setDefaultData(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 1580
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 1581
    .local v2, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 1582
    .local v1, "sub":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1584
    .local v0, "currSub":I
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setLastValidDefaultDataSub(I)V

    .line 1586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current default sub:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1587
    if-eq v1, v0, :cond_0

    .line 1588
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 1592
    :goto_0
    return-void

    .line 1590
    :cond_0
    const-string v3, "setDefaultData: default data unchanged"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLastValidDefaultDataSub(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2116
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLastValidDefaultDataSub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2118
    iput p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    .line 2123
    :goto_0
    return-void

    .line 2120
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "because invalid id to set, keep LastValidDefaultDataSub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mLastValidDefaultDataSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2029
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    return-void
.end method

.method private setNewSimSlot(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2053
    if-nez p1, :cond_0

    .line 2054
    const-string v1, "setNewSimSlot, intent is null => return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2060
    :goto_0
    return-void

    .line 2057
    :cond_0
    const-string v1, "setNewSimSlot"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2058
    const-string v1, "newSIMSlot"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2059
    .local v0, "newSimStatus":I
    const-string v1, "persist.radio.new.sim.slot"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSimStatus(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2033
    if-nez p1, :cond_0

    .line 2034
    const-string v1, "setSimStatus, intent is null => return"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2040
    :goto_0
    return-void

    .line 2037
    :cond_0
    const-string v1, "setSimStatus"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2038
    const-string v1, "simDetectStatus"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2039
    .local v0, "detectedType":I
    const-string v1, "persist.radio.sim.status"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private subSelectorForOm(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 514
    const-string v7, "DataSubSelector for OM: only for capability switch; for default data, use google"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 517
    const/4 v5, -0x1

    .line 518
    .local v5, "phoneId":I
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v7, [Ljava/lang/String;

    .line 522
    .local v0, "currIccId":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-nez v7, :cond_0

    .line 523
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    .line 530
    :cond_0
    const-string v3, ""

    .line 531
    .local v3, "defaultIccid":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v2

    .line 532
    .local v2, "defDataSubId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 533
    .local v1, "defDataPhoneId":I
    if-ltz v1, :cond_1

    .line 534
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    array-length v7, v7

    if-lt v1, v7, :cond_3

    .line 535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneId out of boundary :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 541
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default data Iccid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 550
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v7, :cond_5

    .line 551
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 552
    aget-object v7, v0, v4

    if-eqz v7, :cond_2

    const-string v7, ""

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 553
    :cond_2
    const-string v7, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 603
    :goto_2
    return-void

    .line 537
    .end local v4    # "i":I
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defDataPhoneId ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 538
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 556
    .restart local v4    # "i":I
    :cond_4
    aget-object v7, v0, v4

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 557
    move v5, v4

    .line 573
    :cond_5
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 574
    const-string v7, "DataSubSelector for OM: do not switch because of sim locking"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 575
    const-string v7, "persist.radio.unlock"

    const-string v8, "true"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 577
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 578
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    goto :goto_2

    .line 561
    :cond_6
    const-string v7, "N/A"

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 562
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear mcc.mnc:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 564
    if-nez v4, :cond_8

    .line 565
    const-string v6, "gsm.sim.ril.mcc.mnc"

    .line 569
    .local v6, "propStr":Ljava/lang/String;
    :goto_3
    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 567
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 581
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_9
    const-string v7, "DataSubSelector for OM: no pin lock"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 582
    const-string v7, "persist.radio.unlock"

    const-string v8, "false"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v7, :cond_a

    .line 585
    const-string v7, "DataSubSelector for OM: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 586
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 587
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 588
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 589
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 593
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default data phoneid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 594
    const/4 v7, -0x1

    if-eq v5, v7, :cond_b

    .line 596
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 599
    :cond_b
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 601
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetSimStatus()V

    .line 602
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetNewSimSlot()V

    goto/16 :goto_2
.end method

.method private subSelectorForOp01(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    .line 949
    const/4 v6, -0x1

    .line 950
    .local v6, "phoneId":I
    const/4 v4, 0x0

    .line 951
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 952
    .local v5, "insertedStatus":I
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getSimStatus()I

    move-result v2

    .line 954
    .local v2, "detectedType":I
    :goto_0
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v8, [Ljava/lang/String;

    .line 956
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v8, "DataSubSelector for op01"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 958
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v8, :cond_5

    .line 959
    iget-object v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v3

    .line 960
    aget-object v8, v0, v3

    if-eqz v8, :cond_0

    const-string v8, ""

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 961
    :cond_0
    const-string v8, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1042
    :goto_2
    return-void

    .line 952
    .end local v0    # "currIccId":[Ljava/lang/String;
    .end local v2    # "detectedType":I
    .end local v3    # "i":I
    :cond_1
    const-string v8, "simDetectStatus"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 964
    .restart local v0    # "currIccId":[Ljava/lang/String;
    .restart local v2    # "detectedType":I
    .restart local v3    # "i":I
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currIccId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 965
    const-string v8, "N/A"

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 966
    add-int/lit8 v4, v4, 0x1

    .line 967
    shl-int v8, v10, v3

    or-int/2addr v5, v8

    .line 958
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 969
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clear mcc.mnc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 971
    if-nez v3, :cond_4

    .line 972
    const-string v7, "gsm.sim.ril.mcc.mnc"

    .line 976
    .local v7, "propStr":Ljava/lang/String;
    :goto_4
    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 974
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "propStr":Ljava/lang/String;
    goto :goto_4

    .line 980
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_5
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 981
    const-string v8, "DataSubSelector for OP01: do not switch because of sim locking"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 982
    const-string v8, "persist.radio.unlock"

    const-string v9, "true"

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 984
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 985
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 988
    :cond_6
    const-string v8, "DataSubSelector for OP01: no pin lock"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 989
    const-string v8, "persist.radio.unlock"

    const-string v9, "false"

    invoke-direct {p0, v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-boolean v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v8, :cond_7

    .line 992
    const-string v8, "DataSubSelector for OP01: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 993
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 994
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 995
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 996
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1000
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inserted SIM count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", insertedStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1003
    const-string v8, "persist.radio.data.iccid"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1004
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Default data Iccid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1006
    if-nez v4, :cond_9

    .line 1008
    const-string v8, "OP01 C0: No SIM inserted, do nothing"

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1040
    :cond_8
    :goto_5
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetSimStatus()V

    .line 1041
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetNewSimSlot()V

    goto/16 :goto_2

    .line 1009
    :cond_9
    if-ne v4, v10, :cond_d

    .line 1010
    const/4 v3, 0x0

    :goto_6
    iget v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v8, :cond_a

    .line 1011
    shl-int v8, v10, v3

    and-int/2addr v8, v5

    if-eqz v8, :cond_c

    .line 1012
    move v6, v3

    .line 1017
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OP01 C1: Single SIM: Set Default data to phone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1018
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1019
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1022
    :cond_b
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    goto :goto_5

    .line 1010
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1023
    :cond_d
    const/4 v8, 0x2

    if-lt v4, v8, :cond_8

    .line 1026
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    .line 1027
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 1029
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch6m()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1031
    iput-boolean v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 1032
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 1033
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setSimStatus(Landroid/content/Intent;)V

    .line 1034
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNewSimSlot(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method

.method private subSelectorForOp02()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 871
    const/4 v4, -0x1

    .line 872
    .local v4, "phoneId":I
    const/4 v2, 0x0

    .line 873
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 874
    .local v3, "insertedStatus":I
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v6, [Ljava/lang/String;

    .line 876
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v6, "DataSubSelector for op02 (subSelectorForOp02)"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 878
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v6, :cond_4

    .line 879
    iget-object v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 880
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currIccid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 881
    aget-object v6, v0, v1

    if-eqz v6, :cond_0

    const-string v6, ""

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 882
    :cond_0
    const-string v6, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 946
    :goto_1
    return-void

    .line 885
    :cond_1
    const-string v6, "N/A"

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 886
    add-int/lit8 v2, v2, 0x1

    .line 887
    shl-int v6, v8, v1

    or-int/2addr v3, v6

    .line 878
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clear mcc.mnc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 891
    if-nez v1, :cond_3

    .line 892
    const-string v5, "gsm.sim.ril.mcc.mnc"

    .line 896
    .local v5, "propStr":Ljava/lang/String;
    :goto_3
    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not inserted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 894
    .end local v5    # "propStr":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 901
    .end local v5    # "propStr":Ljava/lang/String;
    :cond_4
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 902
    const-string v6, "DataSubSelector for OP02: do not switch because of sim locking"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 903
    const-string v6, "persist.radio.unlock"

    const-string v7, "true"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 906
    :cond_5
    const-string v6, "DataSubSelector for OP02: no pin lock"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 907
    const-string v6, "persist.radio.unlock"

    const-string v7, "false"

    invoke-direct {p0, v6, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-boolean v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v6, :cond_6

    .line 910
    const-string v6, "DataSubSelector for OP02: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 911
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    goto/16 :goto_1

    .line 915
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inserted SIM count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", insertedStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 917
    if-nez v2, :cond_8

    .line 922
    const-string v6, "C0: No SIM inserted: do nothing"

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 945
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    goto/16 :goto_1

    .line 923
    :cond_8
    if-ne v2, v8, :cond_b

    .line 924
    const/4 v1, 0x0

    :goto_5
    iget v6, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v1, v6, :cond_9

    .line 925
    shl-int v6, v8, v1

    and-int/2addr v6, v3

    if-eqz v6, :cond_a

    .line 926
    move v4, v1

    .line 934
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C1: Single SIM inserted: set default data to phone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 935
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 936
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 937
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02()V

    goto :goto_4

    .line 924
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 939
    :cond_b
    const/4 v6, 0x2

    if-lt v2, v6, :cond_7

    .line 940
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp02CapSwitch(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 941
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    goto :goto_4
.end method

.method private subSelectorForOp02(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 787
    const/4 v5, -0x1

    .line 788
    .local v5, "phoneId":I
    const/4 v3, 0x0

    .line 789
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 790
    .local v4, "insertedStatus":I
    const-string v7, "simDetectStatus"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 791
    .local v1, "detectedType":I
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v7, [Ljava/lang/String;

    .line 793
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v7, "DataSubSelector for OP02"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 795
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v7, :cond_4

    .line 796
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 797
    aget-object v7, v0, v2

    if-eqz v7, :cond_0

    const-string v7, ""

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 798
    :cond_0
    const-string v7, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 868
    :goto_1
    return-void

    .line 801
    :cond_1
    const-string v7, "N/A"

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 802
    add-int/lit8 v3, v3, 0x1

    .line 803
    shl-int v7, v9, v2

    or-int/2addr v4, v7

    .line 795
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 805
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear mcc.mnc:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 807
    if-nez v2, :cond_3

    .line 808
    const-string v6, "gsm.sim.ril.mcc.mnc"

    .line 812
    .local v6, "propStr":Ljava/lang/String;
    :goto_3
    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 810
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 816
    .end local v6    # "propStr":Ljava/lang/String;
    :cond_4
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 817
    const-string v7, "DataSubSelector for OP02: do not switch because of sim locking"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 818
    const-string v7, "persist.radio.unlock"

    const-string v8, "true"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 822
    :cond_5
    const-string v7, "DataSubSelector for OP02: no pin lock"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 823
    const-string v7, "persist.radio.unlock"

    const-string v8, "false"

    invoke-direct {p0, v7, v8}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setNeedWaitUnlock(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-boolean v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mAirplaneModeOn:Z

    if-eqz v7, :cond_6

    .line 826
    const-string v7, "DataSubSelector for OP02: do not switch because of mAirplaneModeOn"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 827
    iput-boolean v9, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitAirplaneModeOff:Z

    .line 828
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 832
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserted SIM count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", insertedStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 834
    const/4 v7, 0x4

    if-ne v1, v7, :cond_8

    .line 836
    const-string v7, "OP02 C0: Inserted status no change, do nothing"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 867
    :cond_7
    :goto_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    goto/16 :goto_1

    .line 837
    :cond_8
    if-nez v3, :cond_9

    .line 842
    const-string v7, "OP02 C1: No SIM inserted, do noting"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 843
    :cond_9
    if-ne v3, v9, :cond_c

    .line 844
    const/4 v2, 0x0

    :goto_5
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v7, :cond_a

    .line 845
    shl-int v7, v9, v2

    and-int/2addr v7, v4

    if-eqz v7, :cond_b

    .line 846
    move v5, v2

    .line 854
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OP02 C2: Single SIM: Set Default data to phone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 855
    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 856
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02()V

    goto :goto_4

    .line 844
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 857
    :cond_c
    const/4 v7, 0x2

    if-lt v3, v7, :cond_7

    .line 862
    const-string v7, "OP02 C3: Multi SIM: Set Default data to phone1"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 863
    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 864
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->handleDataEnableForOp02()V

    goto :goto_4
.end method

.method private subSelectorForOp09(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1297
    const/4 v10, -0x1

    .line 1298
    .local v10, "phoneId":I
    const/4 v4, 0x0

    .line 1299
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1300
    .local v5, "insertedStatus":I
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getSimStatus()I

    move-result v2

    .line 1302
    .local v2, "detectedType":I
    :goto_0
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v12, [Ljava/lang/String;

    .line 1304
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v12, "DataSubSelector for op09"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1306
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v12, :cond_4

    .line 1307
    iget-object v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v3

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v3

    .line 1308
    aget-object v12, v0, v3

    if-eqz v12, :cond_0

    const-string v12, ""

    aget-object v13, v0, v3

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1309
    :cond_0
    const-string v12, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1477
    :goto_2
    return-void

    .line 1300
    .end local v0    # "currIccId":[Ljava/lang/String;
    .end local v2    # "detectedType":I
    .end local v3    # "i":I
    :cond_1
    const-string v12, "simDetectStatus"

    const/4 v13, 0x0

    invoke-virtual {p1, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 1312
    .restart local v0    # "currIccId":[Ljava/lang/String;
    .restart local v2    # "detectedType":I
    .restart local v3    # "i":I
    :cond_2
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v11

    .line 1313
    .local v11, "subId":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currIccId["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v0, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", subId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1314
    const-string v12, "N/A"

    aget-object v13, v0, v3

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1317
    add-int/lit8 v4, v4, 0x1

    .line 1318
    const/4 v12, 0x1

    shl-int/2addr v12, v3

    or-int/2addr v5, v12

    .line 1306
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1322
    .end local v11    # "subId":I
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Inserted SIM count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", insertedStatus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1325
    const-string v12, "persist.radio.data.iccid"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1326
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Default data Iccid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1328
    if-nez v4, :cond_6

    .line 1333
    const-string v12, "OP09 C0: No SIM inserted."

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1473
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    .line 1475
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetSimStatus()V

    .line 1476
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->resetNewSimSlot()V

    goto/16 :goto_2

    .line 1334
    :cond_6
    const/4 v12, 0x1

    if-ne v4, v12, :cond_c

    .line 1335
    const/4 v3, 0x0

    :goto_4
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v12, :cond_7

    .line 1336
    const/4 v12, 0x1

    shl-int/2addr v12, v3

    and-int/2addr v12, v5

    if-eqz v12, :cond_8

    .line 1337
    move v10, v3

    .line 1342
    :cond_7
    const/4 v12, 0x4

    if-ne v2, v12, :cond_9

    .line 1343
    const-string v12, "OP09 C1: Single SIM unchange: do nothing"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1335
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1344
    :cond_9
    const/4 v12, 0x1

    if-ne v2, v12, :cond_a

    .line 1348
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OP09 C2: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1349
    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1350
    const/4 v12, 0x1

    invoke-direct {p0, v10, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_3

    .line 1355
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getLastDataEnabled()I

    move-result v7

    .line 1356
    .local v7, "isLastDataEnabled":I
    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1358
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OP09 C3: Single SIM + Old SIM: check data enable, isLastDataEnabled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1362
    if-eqz v7, :cond_b

    .line 1363
    const/4 v12, 0x1

    invoke-direct {p0, v10, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_3

    .line 1365
    :cond_b
    const/4 v12, 0x0

    invoke-direct {p0, v10, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_3

    .line 1368
    .end local v7    # "isLastDataEnabled":I
    :cond_c
    const/4 v12, 0x2

    if-lt v4, v12, :cond_5

    .line 1369
    const/4 v12, 0x1

    if-ne v2, v12, :cond_18

    .line 1370
    if-nez p1, :cond_e

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getNewSimSlot()I

    move-result v8

    .line 1373
    .local v8, "newSimStatus":I
    :goto_5
    const/4 v6, 0x1

    .line 1374
    .local v6, "isAllNewSim":Z
    const/4 v3, 0x0

    :goto_6
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v12, :cond_f

    .line 1375
    const/4 v12, 0x1

    shl-int/2addr v12, v3

    and-int/2addr v12, v8

    if-nez v12, :cond_d

    .line 1376
    const/4 v6, 0x0

    .line 1374
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1370
    .end local v6    # "isAllNewSim":Z
    .end local v8    # "newSimStatus":I
    :cond_e
    const-string v12, "newSIMSlot"

    const/4 v13, 0x0

    invoke-virtual {p1, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    goto :goto_5

    .line 1380
    .restart local v6    # "isAllNewSim":Z
    .restart local v8    # "newSimStatus":I
    :cond_f
    if-eqz v6, :cond_10

    .line 1385
    const-string v12, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1386
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1387
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_3

    .line 1390
    :cond_10
    if-eqz v1, :cond_11

    const-string v12, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1395
    :cond_11
    const-string v12, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1396
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1398
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_3

    .line 1400
    :cond_12
    const/4 v3, 0x0

    :goto_7
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v12, :cond_13

    .line 1401
    aget-object v12, v0, v3

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1402
    move v10, v3

    .line 1407
    :cond_13
    const/4 v12, -0x1

    if-eq v10, v12, :cond_16

    .line 1411
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "C5: Multi SIM + New SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1415
    const/4 v9, 0x0

    .line 1416
    .local v9, "nonDefaultPhoneId":I
    if-nez v10, :cond_15

    .line 1417
    const/4 v9, 0x1

    .line 1421
    :goto_8
    const/4 v12, 0x0

    invoke-direct {p0, v9, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_3

    .line 1400
    .end local v9    # "nonDefaultPhoneId":I
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1419
    .restart local v9    # "nonDefaultPhoneId":I
    :cond_15
    const/4 v9, 0x0

    goto :goto_8

    .line 1426
    .end local v9    # "nonDefaultPhoneId":I
    :cond_16
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getLastDataEnabled()I

    move-result v7

    .line 1427
    .restart local v7    # "isLastDataEnabled":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "C9: Multi SIM + New SIM + isLastDataEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1429
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1430
    const/4 v13, 0x0

    if-nez v7, :cond_17

    const/4 v12, 0x0

    :goto_9
    invoke-direct {p0, v13, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1433
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_3

    .line 1430
    :cond_17
    const/4 v12, 0x1

    goto :goto_9

    .line 1438
    .end local v6    # "isAllNewSim":Z
    .end local v7    # "isLastDataEnabled":I
    .end local v8    # "newSimStatus":I
    :cond_18
    if-eqz v1, :cond_19

    const-string v12, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 1441
    :cond_19
    const-string v12, "C8: Do nothing"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1443
    :cond_1a
    const/4 v3, 0x0

    :goto_a
    iget v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v12, :cond_1b

    .line 1444
    aget-object v12, v0, v3

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 1445
    move v10, v3

    .line 1449
    :cond_1b
    const/4 v12, -0x1

    if-eq v10, v12, :cond_1e

    .line 1453
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "C7: Multi SIM + All Old SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1457
    const/4 v9, 0x0

    .line 1458
    .restart local v9    # "nonDefaultPhoneId":I
    if-nez v10, :cond_1d

    .line 1459
    const/4 v9, 0x1

    .line 1463
    :goto_b
    const/4 v12, 0x0

    invoke-direct {p0, v9, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_3

    .line 1443
    .end local v9    # "nonDefaultPhoneId":I
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1461
    .restart local v9    # "nonDefaultPhoneId":I
    :cond_1d
    const/4 v9, 0x0

    goto :goto_b

    .line 1467
    .end local v9    # "nonDefaultPhoneId":I
    :cond_1e
    const-string v12, "C8: Do nothing"

    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private subSelectorForSolution15(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 468
    const-string v4, "DataSubSelector for C2K om solution 1.5: capability maybe diff with default data"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 471
    const/4 v3, -0x1

    .line 472
    .local v3, "phoneId":I
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v1, v4, [Ljava/lang/String;

    .line 476
    .local v1, "currIccId":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-nez v4, :cond_0

    .line 477
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    .line 481
    :cond_0
    const-string v4, "persist.radio.simswitch.iccid"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "capabilityIccid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capability Iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 483
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v4, :cond_4

    .line 484
    iget-object v4, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 485
    aget-object v4, v1, v2

    if-eqz v4, :cond_1

    const-string v4, ""

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "N/A"

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 486
    :cond_1
    const-string v4, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 500
    :cond_2
    :goto_1
    return-void

    .line 489
    :cond_3
    aget-object v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 490
    move v3, v2

    .line 495
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capability  phoneid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 496
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 498
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_1

    .line 483
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private subSelectorForSvlte(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1539
    const-string v2, "ro.mtk.c2k.slot2.support"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1541
    .local v0, "c2kP2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subSelectorForSvlte,c2kP2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1543
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09ASupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1544
    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimContainsCdmaApp(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1545
    const-string v2, "CDMA sim is inserted in slot1, always set to SIM1"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1546
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1577
    :goto_0
    return-void

    .line 1549
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1553
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v1, v2, [I

    .line 1554
    .local v1, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v1

    .line 1555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1556
    aget v2, v1, v4

    if-nez v2, :cond_1

    .line 1557
    const-string v2, "SIM 1 is empty, don\'t change capability"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1559
    :cond_1
    const-string v2, "SIM 1 is inserted, change capability"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1560
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_0

    .line 1564
    .end local v1    # "cardType":[I
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    goto :goto_0

    .line 1570
    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkCdmaCardInsert()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1571
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSolution15(Landroid/content/Intent;)V

    goto :goto_0

    .line 1573
    :cond_4
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private turnOffNewSimData(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1595
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getSimStatus()I

    move-result v1

    .line 1597
    .local v1, "detectedType":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "turnOffNewSimData detectedType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1600
    if-ne v1, v8, :cond_3

    .line 1601
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->getNewSimSlot()I

    move-result v4

    .line 1604
    .local v4, "newSimSlot":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newSimSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "persist.radio.data.iccid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1607
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v5, :cond_3

    .line 1608
    shl-int v5, v8, v2

    and-int/2addr v5, v4

    if-eqz v5, :cond_0

    .line 1609
    const-string v5, "persist.radio.data.iccid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1610
    .local v0, "defaultIccid":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1611
    .local v3, "newSimIccid":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detect NEW SIM, turn off phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1613
    invoke-direct {p0, v2, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1607
    .end local v0    # "defaultIccid":Ljava/lang/String;
    .end local v3    # "newSimIccid":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1595
    .end local v1    # "detectedType":I
    .end local v2    # "i":I
    .end local v4    # "newSimSlot":I
    :cond_1
    const-string v5, "simDetectStatus"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    .line 1601
    .restart local v1    # "detectedType":I
    :cond_2
    const-string v5, "newSIMSlot"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 1618
    :cond_3
    return-void
.end method

.method private unRegisterWorldModeReceiver()V
    .locals 2

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2085
    const-string v0, "unRegisterWorldModeReceiver, context is null => return"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 2088
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2089
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mHasRegisterWorldModeReceiver:Z

    .line 2090
    return-void
.end method

.method private updateDataEnableProperty()V
    .locals 7

    .prologue
    .line 1509
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1510
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 1511
    .local v0, "dataEnabled":Z
    const-string v1, "0"

    .line 1512
    .local v1, "dataOnIccid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1514
    .local v3, "subId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v5, :cond_3

    .line 1516
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 1517
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1518
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v3

    .line 1521
    :cond_0
    if-eqz v4, :cond_1

    .line 1522
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    .line 1525
    :cond_1
    if-eqz v0, :cond_2

    .line 1526
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1532
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUserDataProperty:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1533
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v5, "persist.radio.mobile.data"

    invoke-static {v2, v5, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1528
    :cond_2
    const-string v1, "0"

    goto :goto_1

    .line 1536
    :cond_3
    return-void
.end method


# virtual methods
.method public onSubInfoReady(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 432
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 434
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    if-eqz v0, :cond_1

    .line 435
    const-string v0, "Don\'t support BSP Package."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V

    goto :goto_0

    .line 441
    :cond_2
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string v1, "OP02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 442
    const-string v0, "ro.mtk_disable_cap_switch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 443
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V

    goto :goto_0

    .line 445
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02()V

    goto :goto_0

    .line 447
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->isOP09ASupport()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 448
    :cond_5
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V

    .line 449
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    .line 451
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V

    goto :goto_0

    .line 453
    :cond_6
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 456
    const-string v0, "OM"

    sget-object v1, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 457
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsSubReady:Z

    .line 458
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapabilityIfNeeded(Landroid/content/Intent;)V

    .line 461
    :cond_7
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    goto :goto_0

    .line 463
    :cond_8
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    goto :goto_0
.end method
