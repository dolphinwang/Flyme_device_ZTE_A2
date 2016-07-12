.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.super Landroid/os/Handler;
.source "SvlteModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;
    }
.end annotation


# static fields
.field private static final ACTION_FORM_MODE_CONTROLLER:I = 0x2

.field private static final ALLOW_TURN_ON_RADIO:I = 0x0

.field public static final CDMA_PROP:Ljava/lang/String; = "persist.radio.cdma_slot"

.field public static final CSFB_ON_SLOT:I = -0x1

.field private static final DEBUG:Z = true

.field private static final DISALLOW_TURN_ON_RADIO:I = 0x1

.field protected static final EVENT_C2K_RADIO_OFF_DONE:I = 0x7

.field protected static final EVENT_C2K_WP_CARD_TYPE_READY:I = 0x1

.field private static final EVENT_CDMA_RADIO_CHANGE_FOR_AVALIABLE:I = 0x68

.field protected static final EVENT_CONFIG_MODEM_STATUS_DONE:I = 0x9

.field protected static final EVENT_ENTER_RESTRICT_MODE_C2K_DONE:I = 0x3

.field protected static final EVENT_ENTER_RESTRICT_MODE_GSM_DONE:I = 0x4

.field protected static final EVENT_GSM_RADIO_OFF_DONE:I = 0x8

.field protected static final EVENT_LEAVE_RESTRICT_MODE_C2K_DONE:I = 0x5

.field protected static final EVENT_LEAVE_RESTRICT_MODE_GSM_DONE:I = 0x6

.field protected static final EVENT_RIL_CONNECTED:I = 0x2

.field public static final EXTRA_RESTRICT_MODE_STATE:Ljava/lang/String; = "RestrictModeState"

.field public static final INTENT_ACTION_RESTRICT_MODE_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.intent.action.INTENT_ACTION_RESTRICT_MODE_STATE_CHANGED"

.field public static final INTENT_ACTION_RF_OFF_IN_IDLE:Ljava/lang/String; = "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

.field private static final INVALID_MODE:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteModeController"

.field public static final MTK_C2K_6M_SUPPORT:Ljava/lang/String; = "ro.ct6m_support"

.field public static final MTK_C2K_SLOT2_SUPPORT:Ljava/lang/String; = "ro.mtk.c2k.slot2.support"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field public static final PRIORITY_MODE_SWITCH:I = 0x3e6

.field public static final PRIORITY_POWER_OFF:I = 0x3e8

.field public static final PRIORITY_SIM_SWITCH:I = 0x3e7

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field public static final RADIO_TECH_MODE_CSFB:I = 0x2

.field public static final RADIO_TECH_MODE_SVLTE:I = 0x3

.field public static final RADIO_TECH_MODE_UNKNOWN:I = 0x1

.field private static final RUIM_MODE:I = 0x1

.field private static final SIM_MODE:I = 0x0

.field private static final SPEC_OP09_A:Ljava/lang/String; = "SEGDEFAULT"

.field public static final SVLTE_ON_SLOT_0:I = 0x0

.field public static final SVLTE_ON_SLOT_1:I = 0x1

.field public static final SVLTE_PROP:Ljava/lang/String; = "persist.radio.svlte_slot"

.field public static final SVLTE_PROP_DEFAULT_VALUE:Ljava/lang/String;

.field public static final TELEPHONY_MODE_C_LWTG:I = 0x4

.field public static final TELEPHONY_MODE_G_LC:I = 0x3

.field public static final TELEPHONY_MODE_G_LWTG:I = 0x5

.field public static final TELEPHONY_MODE_LC_G:I = 0x0

.field public static final TELEPHONY_MODE_LC_SINGLE:I = 0x6

.field public static final TELEPHONY_MODE_LWTG_C:I = 0x1

.field public static final TELEPHONY_MODE_LWTG_G:I = 0x2

.field public static final TELEPHONY_MODE_LWTG_SINGLE:I = 0x7

.field public static final TELEPHONY_MODE_UNKNOWN:I = -0x1

.field private static final mLock:Ljava/lang/Object;

.field private static sCardModes:[I

.field private static sCdmaSocketSlotId:I

.field private static sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;


# instance fields
.field private mAlreadyRegistForRadioState:Z

.field private mC2kERMSState:I

.field private mCardTypeBeSwitch:I

.field private mCardTypes:[I

.field private mContext:Landroid/content/Context;

.field private mEModemStatus:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;

.field private mEmdstatusChanged:Z

.field private mGsmERMSState:I

.field private mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLockRfOffState:Ljava/lang/Object;

.field private mNeedReSwitch:[Z

.field private mOP09Spec:Ljava/lang/String;

.field private mOffRadioCount:I

.field private mOldCardModes:[I

.field private mOperatorSpec:Ljava/lang/String;

.field private mPendingCardTypes:[I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictModeState:Z

.field private mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

.field private mSlotBeSwitchCardType:I

.field private mSlotIdWaitConnect:I

.field private mSvlteModeOn:Z

.field private mSwitchQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchingSlotId:I

.field private mWaitC2KRadioAvailable:Z

.field private mWaitSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWaitingRilSocketConnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->SVLTE_PROP_DEFAULT_VALUE:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->initCardModes()[I

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 130
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    .line 191
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.fulluicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.fulluicctype.2"

    aput-object v2, v0, v1

    const-string v1, "gsm.ril.fulluicctype.3"

    aput-object v1, v0, v3

    const-string v1, "gsm.ril.fulluicctype.4"

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 474
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 120
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    .line 136
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    .line 141
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 143
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2kERMSState:I

    .line 144
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mGsmERMSState:I

    .line 145
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRestrictModeState:Z

    .line 146
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOffRadioCount:I

    .line 147
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mEmdstatusChanged:Z

    .line 148
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    .line 150
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLockRfOffState:Ljava/lang/Object;

    .line 188
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 189
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypeBeSwitch:I

    .line 200
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .line 610
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    .line 611
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    .line 1221
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 475
    const-string v1, "SvlteModeController"

    const-string v2, "SvlteModeController constructor"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    .line 478
    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    .line 479
    const-string v1, "ro.operator.seg"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOP09Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v4, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForC2KWPCardTypeReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 483
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 484
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string v1, "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    const/16 v1, 0x3e6

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 487
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 490
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;

    const/4 v2, 0x2

    invoke-direct {v1, v4, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;-><init>(II)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mEModemStatus:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;

    .line 491
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isOP09SpecA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()[I
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->disconnectRilSocket(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->leaveRestrictMode()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setSvlteModeProperties()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    return-object v0
.end method

.method static synthetic access$1802(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .param p1, "x1"    # [I

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    return-object p1
.end method

.method static synthetic access$1902(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .param p1, "x1"    # [I

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    return-object p1
.end method

.method static synthetic access$200(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 81
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->prepareForModeSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->enterRestrictMode()V

    return-void
.end method

.method static synthetic access$300(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 81
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 81
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 81
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    return v0
.end method

.method static synthetic access$700(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 81
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRemoteProtocol(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    return p1
.end method

.method private calculateCardMode()[I
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 954
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    new-array v1, v9, [I

    .line 955
    .local v1, "cardModes":[I
    const-string v9, "persist.sys.forcttestcard"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 956
    .local v6, "unlockTestSim":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[calculateCardMode] Operator:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " unlockTestSim:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 958
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOperatorSpec:Ljava/lang/String;

    const-string v10, "OP09"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "SEGDEFAULT"

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOP09Spec:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "0"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 960
    aput v11, v1, v7

    .line 961
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 962
    aput v12, v1, v2

    .line 961
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    :cond_0
    const-string v7, "[calculateCardMode] >>> OPERATOR_OP09 case."

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 965
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    .line 1028
    .end local v2    # "i":I
    :goto_1
    return-object v1

    .line 970
    :cond_1
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, v7

    invoke-direct {p0, v9, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getPreferRadioTech(II)I

    move-result v4

    .line 974
    .local v4, "slot0Prefer":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    if-ne v9, v8, :cond_3

    .line 977
    aput v4, v1, v7

    .line 978
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v8, v8, v7

    if-nez v8, :cond_2

    .line 979
    aput v11, v1, v7

    .line 981
    :cond_2
    const-string v7, "[calculateCardMode] >>> SINGLE SIM case."

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 982
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    goto :goto_1

    .line 986
    :cond_3
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, v8

    invoke-direct {p0, v9, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getPreferRadioTech(II)I

    move-result v5

    .line 989
    .local v5, "slot1Prefer":I
    const-string v9, "persist.radio.simswitch"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 991
    .local v0, "capability":I
    if-ne v0, v8, :cond_5

    move v3, v7

    .line 992
    .local v3, "nonCapability":I
    :goto_2
    const/4 v9, -0x1

    iput v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 993
    if-ne v4, v5, :cond_6

    if-ne v5, v11, :cond_6

    .line 994
    aput v11, v1, v0

    .line 995
    aput v12, v1, v3

    .line 996
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isCt3gDualMode(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 997
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 998
    iput v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypeBeSwitch:I

    .line 1026
    :cond_4
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[calculateCardMode] >>> WP SOLUTION 2 case. MainCapabilitySlot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1027
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    goto :goto_1

    .end local v3    # "nonCapability":I
    :cond_5
    move v3, v8

    .line 991
    goto :goto_2

    .line 1001
    .restart local v3    # "nonCapability":I
    :cond_6
    aput v4, v1, v7

    .line 1002
    aput v5, v1, v8

    .line 1003
    aget v9, v1, v7

    if-ne v9, v12, :cond_8

    aget v9, v1, v8

    if-ne v9, v12, :cond_8

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, v7

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, v8

    if-nez v9, :cond_8

    .line 1006
    :cond_7
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, v7

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, v8

    if-nez v9, :cond_9

    .line 1008
    sget v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    aput v11, v1, v7

    .line 1023
    :cond_8
    :goto_4
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->handleSwitchingSimMode([I)V

    .line 1024
    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->handleIfCT4GandCT3GCase(I[I)V

    goto :goto_3

    .line 1011
    :cond_9
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, v7

    if-nez v9, :cond_a

    .line 1012
    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isCt3gDualMode(I)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1013
    aput v11, v1, v7

    goto :goto_4

    .line 1017
    :cond_a
    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isCt3gDualMode(I)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1018
    aput v11, v1, v8

    goto :goto_4
.end method

.method private calculateNewCdmaSocketSlot()I
    .locals 4

    .prologue
    .line 1648
    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    .line 1649
    .local v0, "cdmaSocketSlotId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1650
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v2, v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1651
    move v0, v1

    .line 1649
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1654
    :cond_1
    return v0
.end method

.method private configModemStatus()V
    .locals 7

    .prologue
    .line 1335
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mEModemStatus:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;

    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    invoke-virtual {v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->refreshEModemStatus([I)V

    .line 1336
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mEModemStatus:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->getModemStatus()I

    move-result v0

    .line 1337
    .local v0, "modemStatus":I
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mEModemStatus:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->getRemoteSimProtocol()I

    move-result v4

    .line 1338
    .local v4, "remoteSimProtocol":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configModemStatus modemStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", remoteSimProtocol="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1341
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 1342
    .local v2, "phoneId":I
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 1343
    .local v3, "phoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    if-eqz v3, :cond_0

    .line 1344
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 1345
    .local v1, "phone":Lcom/android/internal/telephony/PhoneBase;
    const/16 v5, 0x9

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->configModemStatus(IILandroid/os/Message;)V

    .line 1348
    .end local v1    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    return-void
.end method

.method private connectRilSocket()V
    .locals 3

    .prologue
    .line 1307
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectRilSocket, slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1309
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->connectRilSocket()V

    .line 1311
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1314
    :cond_0
    return-void
.end method

.method private static containsCdma(I)Z
    .locals 1
    .param p0, "cardType"    # I

    .prologue
    .line 1195
    and-int/lit8 v0, p0, 0x4

    if-gtz v0, :cond_0

    and-int/lit8 v0, p0, 0x8

    if-lez v0, :cond_1

    .line 1197
    :cond_0
    const/4 v0, 0x1

    .line 1199
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static containsGsm(I)Z
    .locals 1
    .param p0, "cardType"    # I

    .prologue
    .line 1203
    and-int/lit8 v0, p0, 0x1

    if-gtz v0, :cond_0

    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_1

    .line 1205
    :cond_0
    const/4 v0, 0x1

    .line 1207
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static containsUsim(I)Z
    .locals 1
    .param p0, "cardType"    # I

    .prologue
    .line 1211
    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_0

    .line 1212
    const/4 v0, 0x1

    .line 1214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disconnectRilSocket(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1317
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectRilSocket, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1319
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->disconnectRilSocket()V

    .line 1321
    :cond_0
    return-void
.end method

.method private doSwitchRadioTech()V
    .locals 1

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setupSwitchQueue()V

    .line 732
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-nez v0, :cond_0

    .line 733
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->configModemStatus()V

    .line 737
    :goto_0
    return-void

    .line 735
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTechImpl()V

    goto :goto_0
.end method

.method private doSwitchRadioTechImpl()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doSwitchRadioTechImpl] mSwitchQueue size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 710
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 711
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 712
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 713
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 728
    .end local v1    # "slotId":I
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, "firstSwitchSlot":I
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    sget v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    aget v2, v2, v3

    if-ne v2, v4, :cond_1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    if-eqz v2, :cond_1

    .line 717
    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    .line 719
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doSwitchRadioTechImpl] firstSwitchSlot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 720
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 721
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[doSwitchRadioTechImpl] mSwitchQueue size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 723
    const-string v2, "[doSwitchRadioTechImpl] waiting for INTENT_ACTION_FINISH_SWITCH_SVLTE_RAT_MODE broadcast."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_0

    .line 726
    .end local v0    # "firstSwitchSlot":I
    :cond_2
    const-string v2, "[doSwitchRadioTechImpl] Error switch Queue!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enterRestrictMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1560
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->startSwitchMode()V

    .line 1561
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isEmdstatusChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mEmdstatusChanged:Z

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[enterRestrictMode] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mEmdstatusChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1563
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mEmdstatusChanged:Z

    if-eqz v0, :cond_0

    .line 1564
    const-string v0, "[enterRestrictMode] wait EVENT_ENTER_RESTRICT_MODE_C2K/GSM_DONE"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1565
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2kERMSState:I

    .line 1566
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mGsmERMSState:I

    .line 1567
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setRestrictModeState(Z)V

    .line 1568
    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRestrictModemState(ILandroid/os/Message;)V

    .line 1571
    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRestrictModemState(ILandroid/os/Message;)V

    .line 1577
    :goto_0
    return-void

    .line 1575
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTech()V

    goto :goto_0
.end method

.method private finishSwitchMode()V
    .locals 3

    .prologue
    .line 1089
    const-string v1, "Broadcast finish switch mode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1090
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1091
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setAndGetRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .line 1092
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->notifyRfOffInIdle()V

    .line 1094
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1096
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sendBroadcast(Landroid/content/Intent;I)V

    .line 1097
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setSvlteModeProperties()V

    .line 1098
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->restartRadio()V

    .line 1099
    return-void
.end method

.method public static getActiveSvlteModeSlotId()I
    .locals 4

    .prologue
    .line 1158
    const/4 v1, -0x1

    .line 1159
    .local v1, "svlteSlotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1160
    const-string v2, "[getActiveSvlteModeSlotId] SVLTE not support, return -1."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 1169
    :goto_0
    return v1

    .line 1163
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1164
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1165
    move v1, v0

    .line 1163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1168
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getActiveSvlteModeSlotId] slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCdmaSocketSlotId()I
    .locals 3

    .prologue
    .line 1177
    const-string v1, "persist.radio.cdma_slot"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1178
    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCdmaSocketSlotId] slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 1179
    return v0
.end method

.method private getFullCardType(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1355
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 1356
    :cond_0
    const-string v4, "SvlteModeController"

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

    .line 1357
    const/4 v2, 0x0

    .line 1375
    :goto_0
    return v2

    .line 1359
    :cond_1
    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1360
    .local v1, "cardType":Ljava/lang/String;
    const-string v4, "SvlteModeController"

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

    .line 1361
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1362
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1363
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 1364
    const-string v4, "USIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1365
    or-int/lit8 v2, v2, 0x2

    .line 1363
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1366
    :cond_3
    const-string v4, "SIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1367
    or-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1368
    :cond_4
    const-string v4, "CSIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1369
    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 1370
    :cond_5
    const-string v4, "RUIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1371
    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 1374
    :cond_6
    const-string v4, "SvlteModeController"

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

.method public static getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .locals 3

    .prologue
    .line 449
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "SvlteModeController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 454
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getPreferRadioTech(II)I
    .locals 1
    .param p1, "cardType"    # I
    .param p2, "slot"    # I

    .prologue
    .line 1062
    const/4 v0, 0x1

    .line 1063
    .local v0, "prefer":I
    sparse-switch p1, :sswitch_data_0

    .line 1073
    const/4 v0, 0x2

    .line 1076
    :goto_0
    return v0

    .line 1067
    :sswitch_0
    const/4 v0, 0x3

    .line 1068
    goto :goto_0

    .line 1070
    :sswitch_1
    const/4 v0, 0x2

    .line 1071
    goto :goto_0

    .line 1063
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static getRadioTechnologyMode()I
    .locals 3

    .prologue
    .line 1123
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v0

    .line 1124
    .local v0, "mode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getRadioTechnologyMode] mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 1125
    return v0
.end method

.method public static getRadioTechnologyMode(I)I
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    .line 1135
    const/4 v0, 0x1

    .line 1136
    .local v0, "mode":I
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1138
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 1139
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 1140
    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v2, :cond_0

    .line 1141
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDMA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1142
    const/4 v0, 0x3

    .line 1148
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRadioTechnologyMode] mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 1149
    return v0

    .line 1144
    .restart local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getRemoteProtocol(I)I
    .locals 5
    .param p0, "c2kSlotId"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1692
    const-string v3, "persist.radio.simswitch"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1693
    .local v0, "capabilitySlot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRemoteProtocol c2kSlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", capabilitySlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1695
    if-ne v1, v0, :cond_1

    .line 1696
    if-nez p0, :cond_0

    .line 1698
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1696
    goto :goto_0

    .line 1698
    :cond_1
    if-nez p0, :cond_2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public static getTelephonyMode()I
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 1416
    const-string v5, "persist.radio.simswitch"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 1418
    .local v0, "currMajorSim":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v1

    .line 1419
    .local v1, "svlteSlotId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 1421
    const-string v2, "[getTelephonyMode] >>> SINGLE SIM case."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1422
    if-nez v1, :cond_1

    .line 1423
    const/4 v2, 0x6

    .line 1451
    :cond_0
    :goto_0
    return v2

    .line 1425
    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    .line 1427
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-gt v5, v4, :cond_0

    .line 1432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getTelephonyMode] svlteSlotId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currMajorSim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1434
    if-nez v0, :cond_5

    .line 1435
    if-nez v1, :cond_3

    .line 1436
    const/4 v2, 0x0

    goto :goto_0

    .line 1437
    :cond_3
    if-ne v1, v3, :cond_4

    move v2, v3

    .line 1438
    goto :goto_0

    :cond_4
    move v2, v4

    .line 1440
    goto :goto_0

    .line 1442
    :cond_5
    if-ne v0, v3, :cond_0

    .line 1443
    if-nez v1, :cond_6

    .line 1444
    const/4 v2, 0x4

    goto :goto_0

    .line 1445
    :cond_6
    if-ne v1, v3, :cond_7

    .line 1446
    const/4 v2, 0x3

    goto :goto_0

    .line 1448
    :cond_7
    const/4 v2, 0x5

    goto :goto_0
.end method

.method private handleIfCT4GandCT3GCase(I[I)V
    .locals 3
    .param p1, "capabilitySlot"    # I
    .param p2, "cardModes"    # [I

    .prologue
    .line 1500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1501
    aget v1, p2, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    if-eq v0, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isCt3gDualMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleCT4GandCT3GCase] Update slot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SVLTE -> CSFB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1504
    const/4 v1, 0x2

    aput v1, p2, v0

    .line 1508
    :cond_0
    return-void

    .line 1500
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleSwitchingSimMode([I)V
    .locals 7
    .param p1, "cardModes"    # [I

    .prologue
    const/4 v4, 0x1

    .line 1033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1034
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v5, v5, v0

    if-ne v5, v4, :cond_0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isCt3gDualMode(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1035
    if-nez v0, :cond_1

    move v2, v4

    .line 1036
    .local v2, "nonCt3gDualMode":I
    :goto_1
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 1037
    .local v1, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v3

    .line 1038
    .local v3, "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    aget v5, p1, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getRoamingModeForModeController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v5

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v5, v6, :cond_0

    .line 1041
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleSwitchingSimMode]Switch slot : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to RUIM mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1042
    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 1043
    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypeBeSwitch:I

    .line 1033
    .end local v1    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v2    # "nonCt3gDualMode":I
    .end local v3    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1035
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1047
    :cond_2
    return-void
.end method

.method private handleTurnOffRadio()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1633
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->calculateNewCdmaSocketSlot()I

    move-result v2

    .line 1634
    .local v2, "newCdmaSocketSlotId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleTurnOffRadio]cdmaSocketSlotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1636
    iput v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOffRadioCount:I

    .line 1638
    sget v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 1640
    .local v0, "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v3, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1642
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 1644
    .local v1, "gsmPhone":Lcom/android/internal/telephony/PhoneBase;
    iget-object v3, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1645
    return-void
.end method

.method private static initCardModes()[I
    .locals 4

    .prologue
    .line 494
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v0, v2, [I

    .line 495
    .local v0, "cardModes":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 496
    const-string v2, "persist.radio.svlte_slot"

    const-string v3, "3,2,2,2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 495
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_0
    return-object v0
.end method

.method private static is3GCdmaCard(I)Z
    .locals 1
    .param p0, "cardType"    # I

    .prologue
    .line 912
    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    const/4 v0, 0x1

    .line 917
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static is4GCdmaCard(I)Z
    .locals 1
    .param p0, "cardType"    # I

    .prologue
    .line 905
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsUsim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    const/4 v0, 0x1

    .line 908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCt3gDualMode(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1552
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    .line 1554
    const/4 v0, 0x1

    .line 1556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmdstatusChanged()Z
    .locals 2

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mEModemStatus:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->isEModemStatusChanged([I)Z

    move-result v0

    return v0
.end method

.method private static isGsmCard(I)Z
    .locals 1
    .param p0, "cardType"    # I

    .prologue
    .line 921
    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x1

    .line 926
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonCard(I)Z
    .locals 1
    .param p0, "cardType"    # I

    .prologue
    .line 930
    if-nez p0, :cond_0

    .line 931
    const/4 v0, 0x1

    .line 933
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOP09SpecA()Z
    .locals 4

    .prologue
    .line 937
    const-string v2, "ro.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, "operatorSpec":Ljava/lang/String;
    const-string v2, "ro.operator.seg"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "op09Spec":Ljava/lang/String;
    const-string v2, "OP09"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SEGDEFAULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSwitchInAirplaneMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1455
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isFlightModePowerOffModemSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1465
    :cond_0
    :goto_0
    return v1

    .line 1458
    :cond_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1460
    .local v0, "airplaneMode":I
    if-ne v0, v2, :cond_0

    .line 1461
    const-string v1, "[isSwitchInAirplaneMode] Switch mode by previous mode."

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1462
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->printRadioModes([I)V

    move v1, v2

    .line 1463
    goto :goto_0
.end method

.method private static isUsimOnlyCard(I)Z
    .locals 1
    .param p0, "cardType"    # I

    .prologue
    .line 1218
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsUsim(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->containsCdma(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveRestrictMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[leaveRestrictMode] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRestrictModeState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1581
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRestrictModeState:Z

    if-eqz v0, :cond_0

    .line 1582
    const-string v0, "[leaveRestrictMode] wait EVENT_LEAVE_RESTRICT_MODE_C2K/GSM_DONE"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1583
    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRestrictModemState(ILandroid/os/Message;)V

    .line 1586
    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRestrictModemState(ILandroid/os/Message;)V

    .line 1592
    :goto_0
    return-void

    .line 1590
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->finishSwitchMode()V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1473
    const-string v0, "SvlteModeController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    return-void
.end method

.method private static logicLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1481
    const-string v0, "SvlteModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMC]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    if-eqz v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "SvlteRatController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 469
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    .line 470
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sInstance:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private notifyRfOffInIdle()V
    .locals 3

    .prologue
    .line 1112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1113
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1115
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method private onC2kCardTypeReady()V
    .locals 2

    .prologue
    .line 666
    const-string v0, "[onC2kCardTypeReady] Start switch"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    .line 669
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->prepareForModeSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->enterRestrictMode()V

    .line 672
    :cond_0
    return-void
.end method

.method private prepareForModeSwitch()Z
    .locals 3

    .prologue
    .line 675
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    .line 676
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSwitchInAirplaneMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 677
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->calculateCardMode()[I

    move-result-object v0

    .line 679
    .local v0, "cardModes":[I
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchCardType()V

    .line 681
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setAndGetRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .line 682
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->notifyRfOffInIdle()V

    .line 683
    const/4 v1, 0x0

    .line 688
    .end local v0    # "cardModes":[I
    :goto_0
    return v1

    .line 685
    .restart local v0    # "cardModes":[I
    :cond_0
    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    .line 687
    .end local v0    # "cardModes":[I
    :cond_1
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setupSvlteSystemProp([I)V

    .line 688
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private printRadioModes([I)V
    .locals 4
    .param p1, "cardModes"    # [I

    .prologue
    .line 1049
    array-length v2, p1

    if-nez v2, :cond_1

    .line 1050
    const-string v2, "[printRadioModes] error cardModes."

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1059
    :cond_0
    return-void

    .line 1053
    :cond_1
    const/4 v1, 0x0

    .local v1, "slot":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1054
    aget v2, p1, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v0, "RADIO_TECH_MODE_CSFB"

    .line 1056
    .local v0, "mode":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[printRadioModes] slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : mCardTypes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1054
    .end local v0    # "mode":Ljava/lang/String;
    :cond_2
    const-string v0, "RADIO_TECH_MODE_SVLTE"

    goto :goto_1
.end method

.method private registerForRadioAvailable()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 647
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    .line 648
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    if-nez v0, :cond_0

    .line 649
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    .line 650
    sget v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 654
    :cond_0
    return-void
.end method

.method private restartRadio()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1595
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1596
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 1597
    .local v2, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v5

    .line 1598
    .local v5, "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 1599
    .local v0, "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 1601
    .local v3, "ltePhone":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getSuggestedRadioCapability()I

    move-result v4

    .line 1602
    .local v4, "suggested":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[restartRadio] slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : suggestedRadioCapability = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1607
    packed-switch v4, :pswitch_data_0

    .line 1595
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1609
    :pswitch_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto :goto_1

    .line 1613
    :pswitch_1
    sget v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    if-ne v1, v6, :cond_0

    .line 1614
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto :goto_1

    .line 1619
    :pswitch_2
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 1621
    sget v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    if-ne v1, v6, :cond_0

    .line 1622
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    goto :goto_1

    .line 1630
    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v3    # "ltePhone":Lcom/android/internal/telephony/PhoneBase;
    .end local v4    # "suggested":I
    .end local v5    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_1
    return-void

    .line 1607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendBroadcast(Landroid/content/Intent;I)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 1103
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    move/from16 v12, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    :goto_0
    return-void

    .line 1106
    :catch_0
    move-exception v13

    .line 1107
    .local v13, "ex":Landroid/os/RemoteException;
    const-string v0, "SvlteModeController"

    const-string v1, "Error while calling sendBroadcast"

    invoke-static {v0, v1, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setCdmaSocketSlotId(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 1187
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    sput p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    .line 1189
    const-string v0, "persist.radio.cdma_slot"

    add-int/lit8 v1, p0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCdmaSocketSlotId] slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->log(Ljava/lang/String;)V

    .line 1192
    :cond_0
    return-void
.end method

.method private setSvlteModeProperties()V
    .locals 3

    .prologue
    .line 1290
    const/4 v0, 0x0

    .local v0, "slotId":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1291
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1292
    const-string v1, "ro.mtk_svlte_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    const-string v1, "[setSvlteModeProperties] svlte"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1294
    const-string v1, "persist.radio.svlte.mode"

    const-string v2, "svlte"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :goto_1
    return-void

    .line 1296
    :cond_0
    const-string v1, "[setSvlteModeProperties] srlte"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1297
    const-string v1, "persist.radio.svlte.mode"

    const-string v2, "srlte"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1290
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1302
    :cond_2
    const-string v1, "[setSvlteModeProperties] csfb"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1303
    const-string v1, "persist.radio.svlte.mode"

    const-string v2, "csfb"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setupSvlteSystemProp([I)V
    .locals 4
    .param p1, "cardModes"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 944
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 946
    const-string v0, "persist.radio.svlte_slot"

    aget v1, p1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :goto_0
    return-void

    .line 948
    :cond_0
    const-string v0, "persist.radio.svlte_slot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupSwitchQueue()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 692
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 693
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    .line 694
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 695
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v1, v1, v0

    if-ne v1, v4, :cond_0

    sget v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    if-eq v0, v1, :cond_0

    .line 699
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 700
    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    .line 702
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v1, v1, v0

    if-ne v1, v4, :cond_1

    .line 703
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSvlteModeOn:Z

    .line 694
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_2
    return-void
.end method

.method private startSwitchMode()V
    .locals 3

    .prologue
    .line 1080
    const-string v1, "Broadcast startSwitchMode"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1081
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1083
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1085
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sendBroadcast(Landroid/content/Intent;I)V

    .line 1086
    return-void
.end method

.method private switchCardType()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    .line 1658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[switchCardType] mode switch return here. AS slot: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " switch to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypeBeSwitch:I

    if-nez v0, :cond_0

    const-string v0, "SIM"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1661
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypeBeSwitch:I

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypeBeSwitch:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/internal/telephony/uicc/UiccController;->switchCardType(IIZ)V

    .line 1663
    iput v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 1664
    iput v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypeBeSwitch:I

    .line 1665
    return-void

    .line 1658
    :cond_0
    const-string v0, "RUIM"

    goto :goto_0

    .line 1661
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private switchRadioTechnology(I)V
    .locals 13
    .param p1, "slotId"    # I

    .prologue
    .line 814
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[switchRadioTechnology] Switch slotId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOldCardModes:[I

    aget v10, v10, p1

    const/4 v12, 0x3

    if-ne v10, v12, :cond_0

    const-string v10, " SVLTE"

    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v10, v10, p1

    const/4 v12, 0x3

    if-ne v10, v12, :cond_1

    const-string v10, " SVLTE"

    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 817
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v10, v10, p1

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v1

    .line 818
    .local v1, "is4GCdmaCard":Z
    const-string v10, "ro.mtk_lte_support"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v2, 0x1

    .line 819
    .local v2, "isLteSupport":Z
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[switchRadioTechnology][is4GCdmaCard]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", [isLteSupport]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 822
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 823
    .local v3, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v9

    .line 824
    .local v9, "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    const/16 v4, 0x8

    .line 825
    .local v4, "netWorkType":I
    sget-object v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v10, v10, p1

    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    .line 826
    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-eqz v10, :cond_3

    .line 827
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->connectRilSocket()V

    .line 902
    :goto_3
    return-void

    .line 814
    .end local v1    # "is4GCdmaCard":Z
    .end local v2    # "isLteSupport":Z
    .end local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v4    # "netWorkType":I
    .end local v9    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_0
    const-string v10, " CSFB"

    goto :goto_0

    :cond_1
    const-string v10, " CSFB"

    goto :goto_1

    .line 818
    .restart local v1    # "is4GCdmaCard":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 831
    .restart local v2    # "isLteSupport":Z
    .restart local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .restart local v4    # "netWorkType":I
    .restart local v9    # "svlteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_3
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSubId()I

    move-result v8

    .line 832
    .local v8, "subId":I
    if-gez v8, :cond_5

    .line 833
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    const/4 v11, 0x1

    aput-boolean v11, v10, p1

    .line 834
    invoke-virtual {v9, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setPreviousSubId(I)I

    move-result v7

    .line 835
    .local v7, "resetSubId":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resetSubId for rat switch="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 839
    .end local v7    # "resetSubId":I
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[switchRadioTechnology][needReSwitch][slotId]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aget-boolean v11, v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " subId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 842
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v12}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 845
    .local v6, "ratMode":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getRatMode ratMode= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " subId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 846
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v10

    aget-object v5, v10, v6

    .line 849
    .local v5, "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    const-string v10, "persist.radio.simswitch"

    const-string v11, "1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .line 851
    .local v0, "capabilityPhoneId":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[switchRadioTechnology] capabilityPhoneId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 852
    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    .line 853
    sget-object v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v10, :cond_6

    .line 854
    const/16 v4, 0xc0

    .line 867
    :goto_5
    if-eq p1, v0, :cond_4

    .line 868
    and-int/lit8 v4, v4, -0x41

    .line 899
    .end local v0    # "capabilityPhoneId":I
    .end local v5    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v6    # "ratMode":I
    .end local v8    # "subId":I
    :cond_4
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[switchRadioTechnology][netWorkType]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 900
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 901
    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechnology(ILandroid/os/Message;)Z

    goto/16 :goto_3

    .line 837
    .restart local v8    # "subId":I
    :cond_5
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    const/4 v11, 0x0

    aput-boolean v11, v10, p1

    goto/16 :goto_4

    .line 856
    .restart local v0    # "capabilityPhoneId":I
    .restart local v5    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .restart local v6    # "ratMode":I
    :cond_6
    sget-object v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v10, :cond_7

    .line 857
    const/16 v4, 0xb0

    goto :goto_5

    .line 861
    :cond_7
    const/16 v4, 0xf0

    goto :goto_5

    .line 872
    :cond_8
    iget-object v10, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v10, v10, p1

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isUsimOnlyCard(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 875
    sget-object v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v10, :cond_9

    .line 876
    const/16 v4, 0xc0

    .line 889
    :goto_7
    if-eq p1, v0, :cond_4

    .line 890
    and-int/lit8 v4, v4, -0x41

    goto :goto_6

    .line 878
    :cond_9
    sget-object v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v10, :cond_a

    .line 879
    const/16 v4, 0xb0

    goto :goto_7

    .line 883
    :cond_a
    const/16 v4, 0xf0

    goto :goto_7

    .line 893
    :cond_b
    const/16 v4, 0xb0

    goto :goto_6
.end method

.method private tryToSwitchMode()V
    .locals 3

    .prologue
    .line 615
    sget v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 618
    .local v0, "rs":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToSwitchMode, RadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitC2KRadioAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAlreadyRegistForRadioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 621
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    .line 622
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_MODE_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setAndGetRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_MODE_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    if-eq v1, v2, :cond_1

    .line 624
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRadioAvailable()V

    .line 625
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_SIM_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    if-ne v1, v2, :cond_0

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[tryToSwitchMode] RfOffState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pended"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 627
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    .line 644
    :goto_0
    return-void

    .line 630
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[tryToSwitchMode] RfOffState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 633
    const-string v1, "[tryToSwitchMode] Switching now, pended"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 634
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRadioAvailable()V

    .line 635
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    goto :goto_0

    .line 637
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_4

    .line 639
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRadioAvailable()V

    .line 640
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->onC2kCardTypeReady()V

    goto :goto_0

    .line 642
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->registerForRadioAvailable()V

    goto :goto_0
.end method

.method private unregisterForRadioAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 657
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    .line 658
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    if-eqz v0, :cond_0

    .line 659
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 661
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mAlreadyRegistForRadioState:Z

    .line 663
    :cond_0
    return-void
.end method

.method private unregisterForRilConnected()V
    .locals 2

    .prologue
    .line 1324
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterForRilConnected, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1326
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 1329
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 503
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForC2KWPCardTypeReady(Landroid/os/Handler;)V

    .line 504
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 505
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 506
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    .line 508
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 509
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSwitchingSlotId:I

    .line 510
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRilConnected()V

    .line 511
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotBeSwitchCardType:I

    .line 512
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypeBeSwitch:I

    .line 513
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mEmdstatusChanged:Z

    .line 514
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2kERMSState:I

    .line 515
    iput v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mGsmERMSState:I

    .line 516
    const-string v0, "dispose!"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public getNeedReSwitch(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mNeedReSwitch:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getNetWorkTypeBySlotId(I)I
    .locals 11
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 747
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v9, v9, p1

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z

    move-result v1

    .line 748
    .local v1, "is4GCdmaCard":Z
    const/16 v4, 0x8

    .line 749
    .local v4, "netWorkType":I
    const-string v9, "ro.mtk_lte_support"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v2, :cond_1

    .line 750
    .local v2, "isLteSupport":Z
    :goto_0
    sget-object v8, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCardModes:[I

    aget v8, v8, p1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 751
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 752
    .local v3, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSubId()I

    move-result v7

    .line 753
    .local v7, "subId":I
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 756
    .local v6, "ratMode":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRatMode ratMode= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v8

    aget-object v5, v8, v6

    .line 759
    .local v5, "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    const-string v8, "persist.radio.simswitch"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .line 761
    .local v0, "capabilityPhoneId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[switchRadioTechnology] capabilityPhoneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 763
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 764
    sget-object v8, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v8, :cond_2

    .line 765
    const/16 v4, 0xc0

    .line 778
    :goto_1
    if-eq p1, v0, :cond_0

    .line 779
    and-int/lit8 v4, v4, -0x41

    .line 810
    .end local v0    # "capabilityPhoneId":I
    .end local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v5    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .end local v6    # "ratMode":I
    .end local v7    # "subId":I
    :cond_0
    :goto_2
    return v4

    .end local v2    # "isLteSupport":Z
    :cond_1
    move v2, v8

    .line 749
    goto/16 :goto_0

    .line 767
    .restart local v0    # "capabilityPhoneId":I
    .restart local v2    # "isLteSupport":Z
    .restart local v3    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .restart local v5    # "orginMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .restart local v6    # "ratMode":I
    .restart local v7    # "subId":I
    :cond_2
    sget-object v8, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v8, :cond_3

    .line 768
    const/16 v4, 0xb0

    goto :goto_1

    .line 772
    :cond_3
    const/16 v4, 0xf0

    goto :goto_1

    .line 783
    :cond_4
    iget-object v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mCardTypes:[I

    aget v8, v8, p1

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isUsimOnlyCard(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 786
    sget-object v8, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v8, :cond_5

    .line 787
    const/16 v4, 0xc0

    .line 800
    :goto_3
    if-eq p1, v0, :cond_0

    .line 801
    and-int/lit8 v4, v4, -0x41

    goto :goto_2

    .line 789
    :cond_5
    sget-object v8, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v5, v8, :cond_6

    .line 790
    const/16 v4, 0xb0

    goto :goto_3

    .line 794
    :cond_6
    const/16 v4, 0xf0

    goto :goto_3

    .line 804
    :cond_7
    const/16 v4, 0xb0

    goto :goto_2
.end method

.method public getRestrictModeState()Z
    .locals 2

    .prologue
    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getRestrictModeState] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRestrictModeState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1688
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRestrictModeState:Z

    return v0
.end method

.method public getRfOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;
    .locals 3

    .prologue
    .line 1515
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLockRfOffState:Ljava/lang/Object;

    monitor-enter v1

    .line 1516
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getRfOffState] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1517
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    monitor-exit v1

    return-object v0

    .line 1518
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWaitSwitch()Z
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 521
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 522
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 523
    .local v1, "cdmaPhone":Lcom/android/internal/telephony/PhoneBase;
    const/4 v2, 0x0

    .line 524
    .local v2, "gsmPhone":Lcom/android/internal/telephony/PhoneBase;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 605
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 526
    :sswitch_0
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    if-eqz v3, :cond_0

    .line 527
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    .line 528
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->tryToSwitchMode()V

    goto :goto_0

    .line 532
    :sswitch_1
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitC2KRadioAvailable:Z

    .line 533
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setWaitSwitch(Z)V

    .line 534
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->tryToSwitchMode()V

    goto :goto_0

    .line 537
    :sswitch_2
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 538
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v6, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RIL_CONNECTED, mWaitingRilSocketConnect ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 544
    :goto_2
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitingRilSocketConnect:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->resetProperties(I)V

    .line 546
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setCdmaSocketSlotId(I)V

    .line 547
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->configModemStatus()V

    .line 548
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->unregisterForRilConnected()V

    goto :goto_0

    :cond_1
    move v3, v5

    .line 538
    goto :goto_1

    .line 542
    :cond_2
    const-string v3, "Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_2

    .line 552
    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_ENTER_RESTRICT_MODE_C2K_DONE. exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 553
    iput v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2kERMSState:I

    .line 554
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mGsmERMSState:I

    if-ne v3, v5, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->handleTurnOffRadio()V

    goto/16 :goto_0

    .line 559
    :sswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_ENTER_RESTRICT_MODE_GSM_DONE. exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 560
    iput v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mGsmERMSState:I

    .line 561
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2kERMSState:I

    if-ne v3, v5, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->handleTurnOffRadio()V

    goto/16 :goto_0

    .line 566
    :sswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_LEAVE_RESTRICT_MODE_C2K_DONE. exception : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 567
    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2kERMSState:I

    .line 568
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mGsmERMSState:I

    if-nez v3, :cond_0

    .line 569
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setRestrictModeState(Z)V

    .line 570
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->finishSwitchMode()V

    goto/16 :goto_0

    .line 574
    :sswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_LEAVE_RESTRICT_MODE_GSM_DONE. exception : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 575
    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mGsmERMSState:I

    .line 576
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mC2kERMSState:I

    if-nez v3, :cond_0

    .line 577
    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setRestrictModeState(Z)V

    .line 578
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->finishSwitchMode()V

    goto/16 :goto_0

    .line 582
    :sswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_C2K_RADIO_OFF_DONE. exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 583
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOffRadioCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOffRadioCount:I

    .line 584
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOffRadioCount:I

    if-ne v3, v7, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTech()V

    goto/16 :goto_0

    .line 589
    :sswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GSM_RADIO_OFF_DONE. exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 590
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOffRadioCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOffRadioCount:I

    .line 591
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mOffRadioCount:I

    if-ne v3, v7, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTech()V

    goto/16 :goto_0

    .line 596
    :sswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_CONFIG_MODEM_STATUS_DONE. exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 597
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    if-eq v3, v6, :cond_3

    .line 598
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->switchRadioTechnology(I)V

    .line 599
    iput v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mSlotIdWaitConnect:I

    goto/16 :goto_0

    .line 601
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->doSwitchRadioTechImpl()V

    goto/16 :goto_0

    .line 524
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public hasPendedSwitch()Z
    .locals 1

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mPendingCardTypes:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSvlteModeSwitching()Z
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setAndGetRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;
    .locals 3
    .param p1, "state"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .prologue
    .line 1538
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLockRfOffState:Ljava/lang/Object;

    monitor-enter v1

    .line 1539
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    if-eq v0, p1, :cond_1

    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    if-ne p1, v0, :cond_2

    .line 1542
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAndGetRfOffState] success."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1543
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .line 1547
    :goto_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    monitor-exit v1

    return-object v0

    .line 1545
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAndGetRfOffState] fail."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRestrictModeState(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 1672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRestrictModeState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRestrictModeState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1673
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRestrictModeState:Z

    if-eq v1, p1, :cond_0

    .line 1674
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRestrictModeState:Z

    .line 1675
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.intent.action.INTENT_ACTION_RESTRICT_MODE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1676
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1677
    const-string v1, "RestrictModeState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1678
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sendBroadcast(Landroid/content/Intent;I)V

    .line 1680
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)V
    .locals 3
    .param p1, "state"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .prologue
    .line 1526
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mLockRfOffState:Ljava/lang/Object;

    monitor-enter v1

    .line 1527
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRfOffState] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V

    .line 1528
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mRfOffState:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    .line 1529
    monitor-exit v1

    .line 1530
    return-void

    .line 1529
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWaitSwitch(Z)V
    .locals 3
    .param p1, "hasWaiting"    # Z

    .prologue
    .line 1397
    const-string v0, "SvlteModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWaitSwitch, hasWaiting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->mWaitSwitch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1399
    return-void
.end method
