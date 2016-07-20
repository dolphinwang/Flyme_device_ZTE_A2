.class public final Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;
.super Ljava/lang/Object;
.source "GsmCallTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$1;,
        Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;
    }
.end annotation


# static fields
.field protected static final EVENT_CALL_INFO_INDICATION:I = 0x21

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CDMA_CALL_ACCEPTED:I = 0x1b

.field protected static final EVENT_CDMA_DIAL_THREEWAY_DELAY:I = 0x1c

.field protected static final EVENT_CNAP_INDICATION:I = 0x19

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_DIAL_CALL_RESULT:I = 0x16

.field protected static final EVENT_ECONF_RESULT_INDICATION:I = 0x1f

.field protected static final EVENT_ECONF_SRVCC_INDICATION:I = 0x1e

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_EXIT_ECM_RESPONSE_DIAL_THREEWAY:I = 0x1d

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_HANG_UP_RESULT:I = 0x15

.field protected static final EVENT_INCOMING_CALL_INDICATION:I = 0x18

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x17

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_RETRIEVE_HELD_CALL_RESULT:I = 0x20

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SPEECH_CODEC_INFO:I = 0x1a

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_BLANK_FLASH:I = 0x14

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field static final LOG_TAG:Ljava/lang/String; = "GsmCallTracker"

.field private static final MTK_SWITCH_ANTENNA_SUPPORT:Z


# instance fields
.field private hasPendingHangupRequest:Z

.field public isFullLock:Z

.field public isInLock:Z

.field private mContainForwardingAddress:Z

.field private mContext:Landroid/content/Context;

.field private mDmAgent:Lcom/mediatek/common/dm/DmAgent;

.field private mForwardingAddress:Ljava/lang/String;

.field private mForwardingAddressCallId:I

.field public mIsRejectedByMoms:Z

.field private mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field public needHangupMOCall:Z

.field public needHangupMTCall:Z

.field private pendingHangupRequest:I

.field private pendingMTCallId:I

.field private pendingMTSeqNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "ro.mtk_switch_antenna"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MTK_SWITCH_ANTENNA_SUPPORT:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tracker"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 118
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    .line 120
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    .line 121
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    .line 128
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 129
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 132
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 133
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 137
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 138
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 139
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 149
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 153
    const-string v3, "DmAgent"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 154
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    .line 156
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$GsmCallTrackerReceiver;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper$1;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.mediatek.dm.LAWMO_LOCK"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 162
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->DmUpdateStatus()V

    .line 164
    return-void
.end method

.method private DmUpdateStatus()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v1}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    .line 305
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v1}, Lcom/mediatek/common/dm/DmAgent;->getLockType()I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInLock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFullLock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isHangMoCallLocking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mDmAgent:Lcom/mediatek/common/dm/DmAgent;

    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isHangMtCallLocking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needHangupMOCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMOCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needHangupMTCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->needHangupMTCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_1
    return-void

    .line 305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->DmUpdateStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;)Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method private shouldNotifyMtCall()Z
    .locals 8

    .prologue
    .line 698
    sget-boolean v5, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MTK_SWITCH_ANTENNA_SUPPORT:Z

    if-eqz v5, :cond_1

    .line 699
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldNotifyMtCall, mTracker.mPhone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 701
    .local v4, "phones":[Lcom/android/internal/telephony/Phone;
    move-object v0, v4

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 702
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eq v3, v5, :cond_0

    .line 704
    const-string v5, "GsmCallTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldNotifyMtCall, another phone active, phone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v5, 0x0

    .line 710
    .end local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phones":[Lcom/android/internal/telephony/Phone;
    :goto_1
    return v5

    .line 701
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "phones":[Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v0    # "arr$":[Lcom/android/internal/telephony/Phone;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phones":[Lcom/android/internal/telephony/Phone;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public CallIndicationEnd()V
    .locals 3

    .prologue
    .line 663
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 664
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 668
    :cond_0
    return-void
.end method

.method public CallIndicationGetId()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    return v0
.end method

.method public CallIndicationGetSeqNo()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    return v0
.end method

.method public CallIndicationProcess(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 498
    const/4 v8, 0x0

    .line 499
    .local v8, "mode":I
    iget-object v11, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/String;

    move-object v7, v11

    check-cast v7, [Ljava/lang/String;

    .line 500
    .local v7, "incomingCallInfo":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 501
    .local v1, "callId":I
    const/4 v11, 0x3

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 502
    .local v2, "callMode":I
    const/4 v11, 0x4

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 504
    .local v9, "seqNumber":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CallIndicationProcess "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pendingMTCallId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pendingMTSeqNum "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 508
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v12, "persist.radio.terminal-based.cw"

    const-string v13, "disabled_tbcw"

    invoke-virtual {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, "tbcwMode":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-nez v11, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 513
    .local v5, "fgState":Lcom/android/internal/telephony/Call$State;
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-nez v11, :cond_3

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 516
    .local v0, "bgState":Lcom/android/internal/telephony/Call$State;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PROPERTY_TERMINAL_BASED_CALL_WAITING_MODE = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , ForgroundCall State = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , BackgroundCall State = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 519
    const-string v11, "enabled_tbcw_off"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v11, :cond_0

    sget-object v11, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v11, :cond_4

    .line 521
    :cond_0
    const-string v11, "PROPERTY_TERMINAL_BASED_CALL_WAITING_MODE = TERMINAL_BASED_CALL_WAITING_ENABLED_OFF. Reject the call as UDUB "

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 524
    const/4 v8, 0x1

    .line 525
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v1, v9, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 630
    :cond_1
    :goto_2
    return-void

    .line 511
    .end local v0    # "bgState":Lcom/android/internal/telephony/Call$State;
    .end local v5    # "fgState":Lcom/android/internal/telephony/Call$State;
    :cond_2
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    goto :goto_0

    .line 513
    .restart local v5    # "fgState":Lcom/android/internal/telephony/Call$State;
    :cond_3
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_1

    .line 534
    .restart local v0    # "bgState":Lcom/android/internal/telephony/Call$State;
    :cond_4
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 535
    const/4 v11, 0x5

    aget-object v11, v7, v11

    if-eqz v11, :cond_5

    const/4 v11, 0x5

    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 537
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 538
    const/4 v11, 0x5

    aget-object v11, v7, v11

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 539
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 540
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EAIC message contains forwarding address - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 545
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v11, v12, :cond_a

    .line 546
    const/4 v8, 0x1

    .line 579
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentResetIsBlocking()V

    .line 580
    if-nez v8, :cond_8

    .line 581
    const/4 v11, 0x1

    aget-object v11, v7, v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {p0, v11, v2, v12, v13}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentQueryPermission(Ljava/lang/String;IJ)V

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->MobileManagermentGetIsBlocking()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->shouldNotifyMtCall()Z

    move-result v11

    if-nez v11, :cond_f

    .line 583
    :cond_7
    const/4 v8, 0x1

    .line 592
    :cond_8
    :goto_4
    if-nez v8, :cond_9

    .line 593
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 594
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 595
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v11}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 596
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notify mVoiceCallIncomingIndicationRegistrants "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 600
    :cond_9
    const/4 v11, 0x1

    if-ne v8, v11, :cond_1

    .line 601
    new-instance v4, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v4}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 602
    .local v4, "dc":Lcom/android/internal/telephony/DriverCall;
    const/4 v11, 0x1

    iput-boolean v11, v4, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 603
    iput v1, v4, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 604
    sget-object v11, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v11, v4, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 606
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x0

    invoke-interface {v11, v8, v1, v9, v12}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 610
    if-nez v2, :cond_10

    .line 611
    const/4 v11, 0x1

    iput-boolean v11, v4, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 612
    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 621
    :goto_5
    const/4 v11, 0x1

    aget-object v11, v7, v11

    iput-object v11, v4, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 622
    const/4 v11, 0x1

    iput v11, v4, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 623
    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v4, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 624
    iget-object v11, v4, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v12, v4, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v11, v12}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 626
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v3, v11, v4, v12, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    .line 627
    .local v3, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->onReplaceDisconnect(I)V

    goto/16 :goto_2

    .line 550
    .end local v3    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v4    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_a
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v11, v12, :cond_6

    .line 551
    const/16 v11, 0xa

    if-ne v2, v11, :cond_c

    .line 554
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v11, 0x7

    if-ge v6, v11, :cond_6

    .line 555
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v11, v6

    .line 556
    .local v3, "cn":Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_b

    .line 557
    const/4 v8, 0x1

    .line 558
    goto/16 :goto_3

    .line 554
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 561
    .end local v3    # "cn":Lcom/android/internal/telephony/Connection;
    .end local v6    # "i":I
    :cond_c
    if-nez v2, :cond_e

    .line 563
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v11, 0x7

    if-ge v6, v11, :cond_6

    .line 564
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v11, v6

    .line 565
    .restart local v3    # "cn":Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 566
    const/4 v8, 0x1

    .line 567
    goto/16 :goto_3

    .line 563
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 572
    .end local v3    # "cn":Lcom/android/internal/telephony/Connection;
    .end local v6    # "i":I
    :cond_e
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 586
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 613
    .restart local v4    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_10
    const/16 v11, 0xa

    if-ne v2, v11, :cond_11

    .line 614
    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 615
    const/4 v11, 0x1

    iput-boolean v11, v4, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto :goto_5

    .line 617
    :cond_11
    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 618
    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    goto/16 :goto_5
.end method

.method public CallIndicationResponse(Z)V
    .locals 7
    .param p1, "accept"    # Z

    .prologue
    const/4 v6, 0x0

    .line 633
    const/4 v0, 0x0

    .line 635
    .local v0, "mode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIncomingCallIndicationResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTCallId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pendingMTSeqNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 637
    if-eqz p1, :cond_1

    .line 638
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 640
    .local v1, "pid":I
    const/4 v0, 0x0

    .line 641
    const/16 v2, -0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust the priority of process - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 647
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 648
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 655
    .end local v1    # "pid":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    const/4 v5, 0x0

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setCallIndication(IIILandroid/os/Message;)V

    .line 656
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTCallId:I

    .line 657
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingMTSeqNum:I

    .line 658
    return-void

    .line 653
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public DmCheckIfCallCanComing(Lcom/android/internal/telephony/gsm/GsmConnection;)Z
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFullLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 318
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isInLock:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->isFullLock:Z

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "hang up MT call because of in DM lock state"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    const/4 v1, 0x0

    .line 328
    :goto_1
    return v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GsmCallTracker"

    const-string v2, "unexpected error on hangup"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    .end local v0    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public ForceReleaseAllConnection(Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v1

    .line 381
    .local v1, "forceReleaseFg":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v0

    .line 382
    .local v0, "forceReleaseBg":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v2

    .line 385
    .local v2, "forceReleaseRing":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    .line 386
    :cond_0
    const-string v3, "GsmCallTracker"

    const-string v4, "hangup(GsmCall)Hang up disconnecting call, return directly"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v3, 0x1

    .line 390
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "hangupCall"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 366
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 367
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 368
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 369
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->forceReleaseCall(ILandroid/os/Message;)V

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    if-ne p1, p2, :cond_1

    .line 373
    const/4 v2, 0x1

    .line 376
    .end local v1    # "i":I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public ForceReleaseNotRingingConnection(Lcom/android/internal/telephony/gsm/GsmCall;)Z
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    const/4 v4, 0x1

    .line 394
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v1

    .line 395
    .local v1, "forceReleaseFg":Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->ForceReleaseConnection(Lcom/android/internal/telephony/gsm/GsmCall;Lcom/android/internal/telephony/gsm/GsmCall;)Z

    move-result v0

    .line 398
    .local v0, "forceReleaseBg":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    const-string v2, "GsmCallTracker"

    const-string v3, "hangup(GsmCall)Hang up disconnecting call, return directly"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    return v4
.end method

.method LogState()V
    .locals 7

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "callId":I
    const/4 v1, 0x0

    .line 251
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v3, 0x7

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 252
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 253
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v0, v4, 0x1

    .line 254
    add-int/lit8 v1, v1, 0x1

    .line 255
    const-string v4, "GsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* conn id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_1
    const-string v4, "GsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "* GsmCT has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connection"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public LogerMessage(I)V
    .locals 1
    .param p1, "msgType"    # I

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 240
    :pswitch_0
    const-string v0, "handle XXXXX"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 174
    :pswitch_1
    const-string v0, "handle EVENT_POLL_CALLS_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :pswitch_2
    const-string v0, "handle EVENT_CALL_STATE_CHANGE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :pswitch_3
    const-string v0, "handle EVENT_REPOLL_AFTER_DELAY"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :pswitch_4
    const-string v0, "handle EVENT_OPERATION_COMPLETE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :pswitch_5
    const-string v0, "handle EVENT_GET_LAST_CALL_FAIL_CAUSE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :pswitch_6
    const-string v0, "handle EVENT_SWITCH_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :pswitch_7
    const-string v0, "handle EVENT_RADIO_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_8
    const-string v0, "handle EVENT_RADIO_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :pswitch_9
    const-string v0, "handle EVENT_CONFERENCE_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_a
    const-string v0, "handle EVENT_SEPARATE_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :pswitch_b
    const-string v0, "handle EVENT_ECT_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_c
    const-string v0, "handle EVENT_HANG_UP_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_d
    const-string v0, "handle EVENT_DIAL_CALL_RESULT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_e
    const-string v0, "handle EVENT_INCOMING_CALL_INDICATION"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :pswitch_f
    const-string v0, "handle EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_10
    const-string v0, "handle EVENT_CNAP_INDICATION"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public MobileManagermentGetIsBlocking()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    return v0
.end method

.method public MobileManagermentQueryPermission(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "CallMode"    # I
    .param p3, "subId"    # J

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v3, :cond_0

    .line 268
    const-string v3, "mobile"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 271
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInterceptionEnabledSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v4}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-interface {v3}, Lcom/mediatek/common/mom/IMobileManagerService;->getInterceptionEnabledSetting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v1, "parameter":Landroid/os/Bundle;
    const-string v3, "phoneNumber"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v3, "callType"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v3, "slotId"

    long-to-int v4, p3

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v5}, Lcom/mediatek/common/mom/IMobileManagerService;->triggerManagerApListener(ILandroid/os/Bundle;I)I

    move-result v2

    .line 278
    .local v2, "result":I
    if-nez v2, :cond_2

    .line 279
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 289
    .end local v1    # "parameter":Landroid/os/Bundle;
    .end local v2    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 281
    .restart local v1    # "parameter":Landroid/os/Bundle;
    .restart local v2    # "result":I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v1    # "parameter":Landroid/os/Bundle;
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MoMS, Suppressing notification faild!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    goto :goto_0
.end method

.method public MobileManagermentResetIsBlocking()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mIsRejectedByMoms:Z

    .line 293
    return-void
.end method

.method public PendingHangupRequestDec()V
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    if-eqz v0, :cond_0

    .line 473
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 474
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    if-nez v0, :cond_0

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 478
    :cond_0
    return-void
.end method

.method public PendingHangupRequestInc()V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 468
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 469
    return-void
.end method

.method public PendingHangupRequestReset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 482
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 483
    return-void
.end method

.method protected PendingHangupRequestUpdate()V
    .locals 2

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePendingHangupRequest - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    if-eqz v0, :cond_0

    .line 457
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    if-eqz v0, :cond_0

    .line 458
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    .line 459
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->pendingHangupRequest:I

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    .line 464
    :cond_0
    return-void
.end method

.method public clearForwardingAddressVariables(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 675
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 677
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    .line 679
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    .line 681
    :cond_0
    return-void
.end method

.method protected getCurrentTotalConnections()I
    .locals 3

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 448
    add-int/lit8 v0, v0, 0x1

    .line 446
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    :cond_1
    return v0
.end method

.method public hangupBgConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z
    .locals 6
    .param p1, "c"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I

    .prologue
    .line 407
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 408
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 409
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 412
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 413
    const-string v4, "GsmCallTracker"

    const-string v5, "hangupConnectionByIndex: hangup a DISCONNECTED conn"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 418
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 419
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    const/4 v4, 0x1

    .line 428
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_2
    return v4

    .line 422
    .restart local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v2

    .line 425
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GsmCallTracker"

    const-string v5, "GsmCallTracker hangupConnectionByIndex() on absent connection "

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 428
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public hangupFgConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hangupRingingConnectionByIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Z

    move-result v0

    return v0
.end method

.method public hasPendingHangupRequest()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->hasPendingHangupRequest:Z

    return v0
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v0, "GsmCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CC][GsmCT][Helper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public setForwardingAddressToConnection(ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mContainForwardingAddress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddressCallId:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/Connection;->setForwardingAddress(Ljava/lang/String;)V

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Store forwarding address - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->mForwardingAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get forwarding address - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getForwardingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->log(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTrackerHelper;->clearForwardingAddressVariables(I)V

    .line 695
    :cond_0
    return-void
.end method
