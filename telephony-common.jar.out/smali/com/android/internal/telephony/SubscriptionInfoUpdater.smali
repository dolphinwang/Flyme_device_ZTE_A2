.class public Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;,
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    }
.end annotation


# static fields
.field private static final COMMON_SLOT_PROPERTY:Ljava/lang/String; = "ro.mtk_sim_hot_swap_common_slot"

.field public static final CURR_SUBID:Ljava/lang/String; = "curr_subid"

.field private static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x2

.field private static final EVENT_RADIO_AVAILABLE:I = 0x65

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x66

.field private static final EVENT_SIM_ABSENT:I = 0x4

.field private static final EVENT_SIM_LOADED:I = 0x3

.field private static final EVENT_SIM_LOCKED:I = 0x5

.field private static final EVENT_SIM_LOCKED_QUERY_ICCID_DONE:I = 0x1

.field private static final EVENT_SIM_NO_CHANGED:I = 0x67

.field private static final EVENT_SIM_PLUG_OUT:I = 0x69

.field private static final EVENT_SIM_READY:I = 0x64

.field private static final EVENT_TRAY_PLUG_IN:I = 0x68

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = "N/A"

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionInfoUpdater"

.field private static final MTK_C2K_SUPPORT:Z

.field private static final MTK_FLIGHTMODE_POWEROFF_MD_SUPPORT:Z

.field private static final MTK_LTEDC_SUPPORT:Z

.field private static final PROJECT_SIM_NUM:I

.field static PROPERTY_ICCID_SIM:[Ljava/lang/String; = null

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static mCommonSlotResetDone:Z = false

.field private static mContext:Landroid/content/Context; = null

.field private static mIccId:[Ljava/lang/String; = null

.field private static mInsertSimState:[I = null

.field private static mPhone:[Lcom/android/internal/telephony/Phone; = null

.field private static sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler; = null

.field private static sIsUpdateAvailable:[I = null

.field private static final sReadICCID_retry_time:I = 0x3e8


# instance fields
.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field private mOldSvlteSlotId:I

.field private mReadIccIdCount:I

.field private mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 87
    sput-boolean v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 123
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccFileHandler;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 125
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    .line 126
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    .line 129
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    .line 137
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ril.iccid.sim1"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "ril.iccid.sim2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ril.iccid.sim3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ril.iccid.sim4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isMtkC2KSupport()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_C2K_SUPPORT:Z

    .line 145
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_LTEDC_SUPPORT:Z

    .line 146
    const-string v0, "1"

    const-string v1, "ro.mtk_flight_mode_power_off_md"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_FLIGHTMODE_POWEROFF_MD_SUPPORT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 151
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 122
    iput-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 127
    iput-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 131
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 134
    iput v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    .line 135
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    .line 148
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSvlteSlotId:I

    .line 229
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 1171
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    .line 152
    const-string v3, "Constructor invoked"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 154
    sput-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    .line 155
    sput-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 156
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 159
    array-length v3, p3

    new-array v3, v3, [Lcom/android/internal/telephony/CommandsInterface;

    iput-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, p3, v0

    aput-object v4, v3, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v3, :cond_2

    .line 165
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    aput v7, v3, v0

    .line 166
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 167
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No SIM insert :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 169
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_LTEDC_SUPPORT:Z

    if-eqz v3, :cond_1

    .line 170
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimSim(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    const-string v3, "CT 3G card is not ready, set iccid to null!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 173
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v6, v3, v0

    .line 177
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIccId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->start()V

    .line 189
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 191
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v3, "com.mediatek.phone.ACTION_COMMON_SLOT_NO_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v3, "OP09"

    const-string v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "SEGDEFAULT"

    const-string v4, "ro.operator.seg"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const-string v3, "1"

    const-string v4, "ro.ct6m_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 196
    :cond_5
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    :cond_6
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_LTEDC_SUPPORT:Z

    if-eqz v3, :cond_7

    .line 199
    const-string v3, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v3, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    :cond_7
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.internal_sim_state_changed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v2    # "intentFilter":Landroid/content/IntentFilter;
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 209
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 210
    .local v1, "index":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x66

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 211
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x65

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    const-string v3, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 213
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x68

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForTrayPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x69

    invoke-interface {v3, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 216
    :cond_8
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_LTEDC_SUPPORT:Z

    if-eqz v3, :cond_9

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCis["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "svlte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lte ci:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "svlte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nlte ci:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "svlte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " active ci:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 208
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 227
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    return-void
.end method

.method static synthetic access$1600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    return p1
.end method

.method static synthetic access$204(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->clearIccId(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubName(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSvlteSlotId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSvlteSlotId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$900()[I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    return-object v0
.end method

.method private broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 1127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1134
    const-string v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    const-string v1, "ss"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1137
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for mCardIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1141
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1143
    return-void
.end method

.method private checkAllIccIdReady()Z
    .locals 4

    .prologue
    .line 1185
    const-string v1, ""

    .line 1186
    .local v1, "iccId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAllIccIdReady +, retry_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_3

    .line 1188
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1189
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No SIM insert :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1191
    sget-boolean v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_LTEDC_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 1192
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimSim(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1194
    const-string v2, "CT 3G card is not ready, set iccid to null!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1195
    const/4 v1, 0x0

    .line 1199
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1200
    :cond_1
    const/4 v2, 0x0

    .line 1205
    :goto_1
    return v2

    .line 1202
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1205
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private checkIsAvailable()Z
    .locals 4

    .prologue
    .line 1267
    const/4 v1, 0x1

    .line 1268
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 1269
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    aget v2, v2, v0

    if-gtz v2, :cond_1

    .line 1270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sIsUpdateAvailable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1271
    const/4 v1, 0x0

    .line 1275
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIsAvailable result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1276
    return v1

    .line 1268
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clearIccId(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1165
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[clearIccId], slotId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1166
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 1167
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 1168
    monitor-exit v1

    .line 1169
    return-void

    .line 1168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1246
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1253
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 1254
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1255
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 1263
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 1256
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 1257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1258
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1259
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 833
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hot plug out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 840
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " absent - card state no changed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 858
    :cond_1
    :goto_0
    return-void

    .line 847
    :cond_2
    const-string v0, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 848
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    goto :goto_0

    .line 852
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v1, "N/A"

    aput-object v1, v0, p1

    .line 853
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto :goto_0
.end method

.method private handleSimLoaded(I)V
    .locals 30
    .param p1, "slotId"    # I

    .prologue
    .line 676
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "handleSimStateLoadedInternal: slotId: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 678
    const/4 v12, 0x0

    .line 684
    .local v12, "needUpdate":Z
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v26, v26, p1

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v16

    .line 685
    .local v16, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v16, :cond_0

    .line 686
    const-string v26, "onRecieve: IccRecords null"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 830
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_1

    .line 690
    const-string v26, "onRecieve: IccID null"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :cond_1
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v26, v26, p1

    const-string v27, ""

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, "iccId":Ljava/lang/String;
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v26, v26, p1

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 697
    const-string v26, "NeedUpdate"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 698
    const/4 v12, 0x1

    .line 699
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v8, v26, p1

    .line 705
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v26

    if-eqz v26, :cond_3

    if-eqz v12, :cond_3

    .line 706
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    .line 709
    :cond_3
    const v22, 0x7fffffff

    .line 710
    .local v22, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v23

    .line 711
    .local v23, "subIds":[I
    if-eqz v23, :cond_4

    .line 712
    const/16 v26, 0x0

    aget v22, v23, v26

    .line 715
    :cond_4
    invoke-static/range {v22 .. v22}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 716
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    .line 717
    .local v14, "operator":Ljava/lang/String;
    if-eqz v14, :cond_a

    .line 718
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v26

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 719
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v14, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 721
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 725
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v25

    .line 726
    .local v25, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 727
    .local v9, "msisdn":Ljava/lang/String;
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 729
    .local v6, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v9, :cond_6

    .line 736
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;I)I

    .line 740
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v24

    .line 742
    .local v24, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v17

    .line 743
    .local v17, "simCarrierName":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 745
    .local v10, "name":Landroid/content/ContentValues;
    if-eqz v24, :cond_7

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    .line 749
    const/16 v26, 0x0

    aget v26, v23, v26

    invoke-virtual/range {v25 .. v26}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForSubscription(I)Ljava/lang/String;

    move-result-object v19

    .line 751
    .local v19, "simNumeric":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v26

    const/16 v27, 0x0

    aget v27, v23, v27

    const/16 v28, 0x1

    sget-object v29, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v19

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 753
    .local v18, "simMvnoName":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[handleSimLoaded]- simNumeric: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", simMvnoName: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 755
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 756
    move-object/from16 v11, v18

    .line 771
    .local v11, "nameToSet":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;I)I

    .line 772
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "[handleSimLoaded] subId = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", sim name = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 778
    .end local v11    # "nameToSet":Ljava/lang/String;
    .end local v18    # "simMvnoName":Ljava/lang/String;
    .end local v19    # "simNumeric":Ljava/lang/String;
    :cond_7
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 780
    .local v20, "sp":Landroid/content/SharedPreferences;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "curr_subid"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 782
    .local v21, "storedSubId":I
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    .line 785
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v26, v26, p1

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "preferred_network_mode"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget v28, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 793
    .local v13, "networkType":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Possibly a new IMSI. Set sub("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") networkType to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 797
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v26, v26, p1

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "preferred_network_mode"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 802
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getSimType(I)I

    move-result v5

    .line 803
    .local v5, "cardType":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Possibly a new IMSI. cardType is:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 804
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v5, v0, :cond_8

    .line 805
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v26, v26, p1

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "lte_on_cdma_rat_mode"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v28, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v28

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 810
    .local v15, "ratMode":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Possibly a new IMSI. Set sub("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") ratMode to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 811
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v26, v26, p1

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "lte_on_cdma_rat_mode"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 817
    .end local v15    # "ratMode":I
    :cond_8
    sget-object v26, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v26, v26, p1

    const/16 v27, 0x2

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 821
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 822
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "curr_subid"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 823
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 829
    .end local v5    # "cardType":I
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "msisdn":Ljava/lang/String;
    .end local v10    # "name":Landroid/content/ContentValues;
    .end local v13    # "networkType":I
    .end local v14    # "operator":Ljava/lang/String;
    .end local v17    # "simCarrierName":Ljava/lang/String;
    .end local v20    # "sp":Landroid/content/SharedPreferences;
    .end local v21    # "storedSubId":I
    .end local v24    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v25    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    :goto_3
    const-string v26, "LOADED"

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    .restart local v14    # "operator":Ljava/lang/String;
    :cond_a
    const-string v26, "EVENT_RECORDS_LOADED Operator name is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 758
    .restart local v6    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v9    # "msisdn":Ljava/lang/String;
    .restart local v10    # "name":Landroid/content/ContentValues;
    .restart local v17    # "simCarrierName":Ljava/lang/String;
    .restart local v18    # "simMvnoName":Ljava/lang/String;
    .restart local v19    # "simNumeric":Ljava/lang/String;
    .restart local v24    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v25    # "tm":Landroid/telephony/TelephonyManager;
    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_c

    .line 759
    move-object/from16 v11, v17

    .restart local v11    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_2

    .line 761
    .end local v11    # "nameToSet":Ljava/lang/String;
    :cond_c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CARD "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, p1, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_2

    .line 826
    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "msisdn":Ljava/lang/String;
    .end local v10    # "name":Landroid/content/ContentValues;
    .end local v11    # "nameToSet":Ljava/lang/String;
    .end local v14    # "operator":Ljava/lang/String;
    .end local v17    # "simCarrierName":Ljava/lang/String;
    .end local v18    # "simMvnoName":Ljava/lang/String;
    .end local v19    # "simNumeric":Ljava/lang/String;
    .end local v24    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v25    # "tm":Landroid/telephony/TelephonyManager;
    :cond_d
    const-string v26, "Invalid subId, could not update ContentResolver"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private handleSimLocked(ILjava/lang/String;)V
    .locals 8
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 610
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 612
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v6, "N/A"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " hot plug in"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 614
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v4, p1

    .line 618
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, p1

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    if-nez v4, :cond_2

    .line 621
    .local v0, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :goto_0
    if-eqz v0, :cond_6

    .line 622
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v4, p1

    .line 624
    .local v1, "iccId":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 632
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v6, v6, p1

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, p1

    .line 634
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 635
    const-string v4, "Use Icc ID system property for performance enhancement"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 636
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    new-instance v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    invoke-direct {v4, p2, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x2

    invoke-direct {v3, p0, v4, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 639
    .local v3, "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    .line 671
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v3    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :goto_1
    monitor-exit v5

    .line 673
    return-void

    .line 618
    .end local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, p1

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    goto :goto_0

    .line 642
    .restart local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v1    # "iccId":Ljava/lang/String;
    :cond_3
    const-string v4, "Querying IccId"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 643
    const/16 v4, 0x2fe2

    const/4 v6, 0x1

    new-instance v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    invoke-direct {v7, p2, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_1

    .line 671
    .end local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1    # "iccId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 651
    .restart local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v1    # "iccId":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOT Querying IccId its already set sIccid["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 653
    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "tempIccid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tempIccid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", mIccId[slotId]:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 655
    sget-boolean v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_FLIGHTMODE_POWEROFF_MD_SUPPORT:Z

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 657
    const-string v4, "All iccids are not ready and iccid changed"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 658
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 662
    :cond_5
    const-string v4, "LOCKED"

    invoke-direct {p0, p1, v4, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 667
    .end local v1    # "iccId":Ljava/lang/String;
    .end local v2    # "tempIccid":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sFh["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] is null, ignore"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private isAllIccIdQueryDone()Z
    .locals 3

    .prologue
    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_2

    .line 357
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IccId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 360
    const/4 v1, 0x0

    .line 365
    :goto_1
    return v1

    .line 355
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_2
    const-string v1, "All IccIds query complete"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "oldIccId"    # [Ljava/lang/String;

    .prologue
    .line 1109
    const/4 v1, 0x1

    .line 1110
    .local v1, "newSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 1113
    if-eqz p1, :cond_1

    aget-object v2, p2, v0

    if-eqz v2, :cond_1

    .line 1114
    aget-object v2, p2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1115
    const/4 v1, 0x0

    .line 1121
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1123
    return v1

    .line 1110
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1151
    const-string v0, "SubscriptionInfoUpdater"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    return-void
.end method

.method private setAllDefaultSub(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1156
    .local p1, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const-string v0, "[setAllDefaultSub]+ "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1157
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mediatek/internal/telephony/DefaultSmsSimSettings;->setSmsTalkDefaultSim(Ljava/util/List;Landroid/content/Context;)V

    .line 1158
    const-string v0, "[setSmsTalkDefaultSim]- "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1159
    invoke-static {p1}, Lcom/mediatek/internal/telephony/DefaultVoiceCallSubSettings;->setVoiceCallDefaultSub(Ljava/util/List;)V

    .line 1160
    const-string v0, "[setVoiceCallDefaultSub]- "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1161
    return-void
.end method

.method private setUpdatedData(III)Landroid/content/Intent;
    .locals 6
    .param p1, "detectedType"    # I
    .param p2, "subCount"    # I
    .param p3, "newSimStatus"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1081
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "[setUpdatedData]+ "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1085
    if-ne p1, v2, :cond_1

    .line 1086
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1088
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1089
    const-string v1, "newSIMSlot"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1103
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setUpdatedData]- ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1104
    return-object v0

    .line 1090
    :cond_1
    if-ne p1, v4, :cond_2

    .line 1091
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1094
    :cond_2
    if-ne p1, v3, :cond_3

    .line 1095
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1097
    const-string v1, "simCount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1098
    :cond_3
    if-ne p1, v5, :cond_0

    .line 1099
    const-string v1, "simDetectStatus"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateSubName(I)V
    .locals 7
    .param p1, "subId"    # I

    .prologue
    .line 1280
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 1282
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 1284
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v3

    .line 1286
    .local v3, "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1287
    .local v0, "carrierName":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 1288
    .local v2, "slotId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSubName, carrierName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1289
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1290
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrierEx(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1291
    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1, v0, v5, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1293
    .local v1, "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPN found, name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1298
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v1, p1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;I)I

    .line 1301
    .end local v0    # "carrierName":Ljava/lang/String;
    .end local v1    # "nameToSet":Ljava/lang/String;
    .end local v2    # "slotId":I
    .end local v3    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    :cond_0
    return-void

    .line 1295
    .restart local v0    # "carrierName":Ljava/lang/String;
    .restart local v2    # "slotId":I
    .restart local v3    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CARD "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1296
    .restart local v1    # "nameToSet":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPN not found, set name to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 24

    .prologue
    .line 866
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 868
    :try_start_1
    const-string v20, "updateSubscriptionInfoByIccId:+ Start"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 873
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v20

    if-nez v20, :cond_0

    .line 874
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1076
    :goto_0
    monitor-exit p0

    return-void

    .line 878
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    .line 881
    const/16 v20, 0x0

    sput-boolean v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    .line 882
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_1

    .line 883
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, 0x0

    aput v22, v20, v6

    .line 882
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 886
    :cond_1
    sget v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .line 887
    .local v8, "insertedSimCount":I
    const/4 v6, 0x0

    :goto_2
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_3

    .line 888
    const-string v20, "N/A"

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 889
    add-int/lit8 v8, v8, -0x1

    .line 890
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x63

    aput v22, v20, v6

    .line 887
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 893
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "insertedSimCount = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 895
    const/4 v7, 0x0

    .line 896
    .local v7, "index":I
    const/4 v6, 0x0

    :goto_3
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_7

    .line 897
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    const/16 v22, -0x63

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 896
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 900
    :cond_5
    const/4 v7, 0x2

    .line 901
    add-int/lit8 v10, v6, 0x1

    .local v10, "j":I
    :goto_4
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 902
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v10

    if-nez v20, :cond_6

    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v10

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 903
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, 0x1

    aput v22, v20, v6

    .line 904
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v7, v20, v10

    .line 905
    add-int/lit8 v7, v7, 0x1

    .line 901
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 910
    .end local v10    # "j":I
    :cond_7
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 911
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/String;

    .line 912
    .local v15, "oldIccId":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_5
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_c

    .line 913
    const/16 v20, 0x0

    aput-object v20, v15, v6

    .line 914
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v20

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZ)Ljava/util/List;

    move-result-object v16

    .line 916
    .local v16, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v16, :cond_a

    .line 917
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v15, v6

    .line 918
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateSubscriptionInfoByIccId: oldSubId = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v20

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 920
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    if-nez v20, :cond_8

    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    aget-object v22, v15, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 921
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x1

    aput v22, v20, v6

    .line 923
    :cond_8
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    if-eqz v20, :cond_9

    .line 924
    new-instance v19, Landroid/content/ContentValues;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/content/ContentValues;-><init>(I)V

    .line 925
    .local v19, "value":Landroid/content/ContentValues;
    const-string v20, "sim_id"

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    sget-object v22, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "_id="

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 912
    .end local v19    # "value":Landroid/content/ContentValues;
    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 932
    :cond_a
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    if-nez v20, :cond_b

    .line 934
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x1

    aput v22, v20, v6

    .line 936
    :cond_b
    const-string v20, "N/A"

    aput-object v20, v15, v6

    .line 937
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateSubscriptionInfoByIccId: No SIM in slot "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, " last time"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_6

    .line 1074
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "insertedSimCount":I
    .end local v15    # "oldIccId":[Ljava/lang/String;
    .end local v16    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 866
    :catchall_1
    move-exception v20

    monitor-exit p0

    throw v20

    .line 941
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v6    # "i":I
    .restart local v7    # "index":I
    .restart local v8    # "insertedSimCount":I
    .restart local v15    # "oldIccId":[Ljava/lang/String;
    :cond_c
    const/4 v6, 0x0

    :goto_7
    :try_start_4
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_d

    .line 942
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateSubscriptionInfoByIccId: oldIccId["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "] = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v22, v15, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ", sIccId["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "] = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 941
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 947
    :cond_d
    const/4 v12, 0x0

    .line 948
    .local v12, "nNewCardCount":I
    const/4 v13, 0x0

    .line 949
    .local v13, "nNewSimStatus":I
    const/4 v6, 0x0

    :goto_8
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_11

    .line 950
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    const/16 v22, -0x63

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 951
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateSubscriptionInfoByIccId: No SIM inserted in slot "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, " this time"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 949
    :cond_e
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 953
    :cond_f
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    if-lez v20, :cond_10

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v20, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v23, v23, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v23, v23, v6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    .line 958
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SUB"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v22, v6, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, " has invalid IccId"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 962
    :goto_a
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 963
    add-int/lit8 v12, v12, 0x1

    .line 964
    packed-switch v6, :pswitch_data_0

    .line 979
    :goto_b
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x2

    aput v22, v20, v6

    goto :goto_9

    .line 960
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v20, v0

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v22, v22, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_a

    .line 966
    :pswitch_0
    or-int/lit8 v13, v13, 0x1

    .line 967
    goto :goto_b

    .line 969
    :pswitch_1
    or-int/lit8 v13, v13, 0x2

    .line 970
    goto :goto_b

    .line 972
    :pswitch_2
    or-int/lit8 v13, v13, 0x4

    goto :goto_b

    .line 984
    :cond_11
    const/4 v6, 0x0

    :goto_c
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_13

    .line 985
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 986
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v22, -0x3

    aput v22, v20, v6

    .line 988
    :cond_12
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateSubscriptionInfoByIccId: sInsertSimState["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "] = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v22, v22, v6

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 984
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 992
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v17

    .line 993
    .local v17, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v17, :cond_15

    const/4 v14, 0x0

    .line 994
    .local v14, "nSubCount":I
    :goto_d
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateSubscriptionInfoByIccId: nSubCount = "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 995
    const/4 v6, 0x0

    :goto_e
    if-ge v6, v14, :cond_16

    .line 996
    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/SubscriptionInfo;

    .line 998
    .local v18, "temp":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v11

    .line 1001
    .local v11, "msisdn":Ljava/lang/String;
    if-eqz v11, :cond_14

    .line 1008
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDisplayNumber(Ljava/lang/String;I)I

    .line 995
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 993
    .end local v11    # "msisdn":Ljava/lang/String;
    .end local v14    # "nSubCount":I
    .end local v18    # "temp":Landroid/telephony/SubscriptionInfo;
    :cond_15
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_d

    .line 1015
    .restart local v14    # "nSubCount":I
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setAllDefaultSub(Ljava/util/List;)V

    .line 1018
    const/4 v5, 0x0

    .line 1019
    .local v5, "hasSimRemoved":Z
    const/4 v6, 0x0

    :goto_f
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_17

    .line 1020
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    if-eqz v20, :cond_1a

    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v20, v20, v6

    const-string v22, "N/A"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    aget-object v20, v15, v6

    const-string v22, "N/A"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1a

    .line 1022
    const/4 v5, 0x1

    .line 1027
    :cond_17
    const/4 v9, 0x0

    .line 1028
    .local v9, "intent":Landroid/content/Intent;
    if-nez v12, :cond_1f

    .line 1030
    if-eqz v5, :cond_1c

    .line 1032
    const/4 v6, 0x0

    :goto_10
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_18

    .line 1033
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    const/16 v22, -0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1b

    .line 1034
    const-string v20, "No new SIM detected and SIM repositioned"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1035
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .line 1040
    :cond_18
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ne v6, v0, :cond_19

    .line 1042
    const-string v20, "No new SIM detected and SIM removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1043
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .line 1070
    :cond_19
    :goto_11
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged(Landroid/content/Intent;)V

    .line 1072
    const-string v20, "updateSubscriptionInfoByIccId:- SsubscriptionInfo update complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1074
    monitor-exit v21

    goto/16 :goto_0

    .line 1019
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    .line 1032
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 1048
    :cond_1c
    const/4 v6, 0x0

    :goto_12
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ge v6, v0, :cond_1d

    .line 1049
    sget-object v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v20, v20, v6

    const/16 v22, -0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    .line 1050
    const-string v20, "No new SIM detected and SIM repositioned"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1051
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    .line 1056
    :cond_1d
    sget v20, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v20

    if-ne v6, v0, :cond_19

    .line 1058
    const-string v20, "[updateSimInfoByIccId] All SIM inserted into the same slot"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1059
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;

    move-result-object v9

    goto :goto_11

    .line 1048
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 1064
    :cond_1f
    const-string v20, "New SIM detected"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1065
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v14, v13}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setUpdatedData(III)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    goto :goto_11

    .line 964
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSubscriptionInfoIfNeed()V
    .locals 6

    .prologue
    .line 1209
    const-string v3, "[updateSubscriptionInfoIfNeed]+"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1210
    const/4 v2, 0x0

    .line 1211
    .local v2, "needUpdate":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v3, :cond_2

    .line 1212
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1214
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateSubscriptionInfoIfNeed] icc id change, slot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1215
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v0

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1216
    const/4 v2, 0x1

    .line 1211
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1220
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1221
    if-eqz v2, :cond_4

    .line 1223
    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;->start()V

    .line 1241
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateSubscriptionInfoIfNeed]- return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1242
    return-void

    .line 1232
    :cond_4
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->MTK_C2K_SUPPORT:Z

    if-eqz v3, :cond_3

    .line 1233
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "simDetectStatus"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1236
    const-string v3, "Broadcast ACTION_SUBINFO_RECORD_UPDATED with nochange"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1237
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 1146
    const-string v0, "[dispose]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 1147
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1148
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 392
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 537
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 394
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 395
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    .line 396
    .local v6, "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    iget v5, v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    .line 397
    .local v5, "slotId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage : <EVENT_SIM_LOCKED_QUERY_ICCID_DONE> SIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 398
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2

    .line 399
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_1

    .line 400
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    move-object v1, v8

    check-cast v1, [B

    .line 403
    .local v1, "data":[B
    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    array-length v9, v1

    invoke-static {v1, v10, v9}, Lcom/android/internal/telephony/uicc/IccUtils;->parseIccIdToString([BII)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    .line 423
    .end local v1    # "data":[B
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sIccId["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 430
    new-instance v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget-object v9, v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    invoke-direct {v8, v9, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    const/4 v9, 0x2

    invoke-direct {v7, p0, v8, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 433
    .local v7, "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto :goto_0

    .line 406
    .end local v7    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :cond_1
    const-string v8, "Null ar"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 407
    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v9, "N/A"

    aput-object v9, v8, v5

    goto :goto_1

    .line 411
    :cond_2
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/CommandException;

    if-eqz v8, :cond_3

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_3

    .line 414
    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v8, v5

    .line 421
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query IccId fail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 417
    :cond_3
    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v9, "N/A"

    aput-object v9, v8, v5

    goto :goto_2

    .line 439
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "slotId":I
    .end local v6    # "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v3

    .line 440
    .local v3, "index":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage : <EVENT_RADIO_UNAVAILABLE> SIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 441
    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v10, v8, v9

    .line 442
    const-string v8, "ro.mtk_sim_hot_swap_common_slot"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 443
    const-string v8, "[Common slot] reset mCommonSlotResetDone in EVENT_RADIO_UNAVAILABLE"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 444
    sput-boolean v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    goto/16 :goto_0

    .line 448
    .end local v3    # "index":Ljava/lang/Integer;
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v3

    .line 449
    .restart local v3    # "index":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage : <EVENT_RADIO_AVAILABLE> SIM"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 450
    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sIsUpdateAvailable:[I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v12, v8, v9

    .line 452
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkIsAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 453
    iput v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdCount:I

    .line 454
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z

    move-result v8

    if-nez v8, :cond_4

    .line 455
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReadIccIdPropertyRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 457
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V

    goto/16 :goto_0

    .line 463
    .end local v3    # "index":Ljava/lang/Integer;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 464
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 465
    .local v5, "slotId":Ljava/lang/Integer;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_5

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v8, :cond_5

    .line 466
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v4, v8

    check-cast v4, [I

    .line 467
    .local v4, "modes":[I
    aget v8, v4, v10

    if-ne v8, v12, :cond_0

    .line 468
    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-interface {v8, v11}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 471
    .end local v4    # "modes":[I
    :cond_5
    const-string v8, "EVENT_GET_NETWORK_SELECTION_MODE_DONE: error getting network mode."

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "slotId":Ljava/lang/Integer;
    :sswitch_4
    new-instance v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v8, v11, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    invoke-direct {v7, p0, v8, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 487
    .restart local v7    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 494
    .end local v7    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_5
    new-instance v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v8, v11, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    invoke-direct {v7, p0, v8, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 497
    .restart local v7    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 502
    .end local v7    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_6
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v9, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLocked(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 506
    :sswitch_7
    new-instance v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v8, v11, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    const/4 v9, 0x3

    invoke-direct {v7, p0, v8, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 509
    .restart local v7    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 513
    .end local v7    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_8
    new-instance v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;

    new-instance v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v8, v11, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    const/4 v9, 0x4

    invoke-direct {v7, p0, v8, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V

    .line 516
    .restart local v7    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->start()V

    goto/16 :goto_0

    .line 521
    .end local v7    # "updatorThread":Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
    :sswitch_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Common Slot] handle EVENT_TRAY_PLUG_IN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 522
    sget-boolean v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    if-nez v8, :cond_0

    .line 523
    sput-boolean v12, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    .line 524
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    sget v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v2, v8, :cond_0

    .line 525
    sget-object v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v9, ""

    aput-object v9, v8, v2

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 531
    .end local v2    # "i":I
    :sswitch_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Common Slot] handle EVENT_SIM_PLUG_OUT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 532
    sput-boolean v10, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCommonSlotResetDone:Z

    goto/16 :goto_0

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x67 -> :sswitch_8
        0x68 -> :sswitch_9
        0x69 -> :sswitch_a
    .end sparse-switch
.end method

.method public setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p1, "newSubName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "newNameSource"    # I

    .prologue
    .line 369
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 370
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_3

    .line 372
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    .line 373
    .local v0, "oldNameSource":I
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 374
    .local v1, "oldSubName":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayNameForNewSub] subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldSimName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newSubName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .line 377
    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 382
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    int-to-long v6, p3

    invoke-virtual {v3, p1, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .line 388
    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void

    .line 386
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SubInfo not created yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
