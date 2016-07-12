.class public Lcom/android/internal/telephony/ProxyController;
.super Ljava/lang/Object;
.source "ProxyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;
    }
.end annotation


# static fields
.field private static final EVENT_APPLY_RC_RESPONSE:I = 0x3

.field private static final EVENT_FINISH_RC_RESPONSE:I = 0x4

.field private static final EVENT_NOTIFICATION_RC_CHANGED:I = 0x1

.field private static final EVENT_RADIO_AVAILABLE:I = 0x6

.field private static final EVENT_START_RC_RESPONSE:I = 0x2

.field private static final EVENT_TIMEOUT:I = 0x5

.field public static final INTENT_ACTION_RF_OFF_IN_IDLE:Ljava/lang/String; = "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

.field static final LOG_TAG:Ljava/lang/String; = "ProxyController"

.field private static final RC_RETRY_CAUSE_AIRPLANE_MODE:I = 0x5

.field private static final RC_RETRY_CAUSE_CAPABILITY_SWITCHING:I = 0x2

.field private static final RC_RETRY_CAUSE_IN_CALL:I = 0x3

.field private static final RC_RETRY_CAUSE_NONE:I = 0x0

.field private static final RC_RETRY_CAUSE_RADIO_UNAVAILABLE:I = 0x4

.field private static final RC_RETRY_CAUSE_WORLD_MODE_SWITCHING:I = 0x1

.field private static final SET_RC_STATUS_APPLYING:I = 0x3

.field private static final SET_RC_STATUS_FAIL:I = 0x5

.field private static final SET_RC_STATUS_IDLE:I = 0x0

.field private static final SET_RC_STATUS_STARTED:I = 0x2

.field private static final SET_RC_STATUS_STARTING:I = 0x1

.field private static final SET_RC_STATUS_SUCCESS:I = 0x4

.field private static final SET_RC_TIMEOUT_WAITING_MSEC:I = 0xafc8

.field private static sProxyController:Lcom/android/internal/telephony/ProxyController;


# instance fields
.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

.field private mHandler:Landroid/os/Handler;

.field private mHasRegisterPhoneStateReceiver:Z

.field private mHasRegisterWorldModeReceiver:Z

.field private mIsCapSwitching:Z

.field private mLogicalModemIds:[Ljava/lang/String;

.field private mNewRadioAccessFamily:[I

.field mNextRafs:[Landroid/telephony/RadioAccessFamily;

.field private mOldRadioAccessFamily:[I

.field private mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRadioAccessFamilyStatusCounter:I

.field private mRadioCapabilitySessionId:I

.field private mSetRadioAccessFamilyStatus:[I

.field mSetRadioCapabilityRunnable:Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

.field private mSetRafRetryCause:I

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

.field private mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

.field private mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWorldModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p3, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p4, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 145
    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    .line 146
    iput-boolean v5, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    .line 147
    iput-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 163
    new-instance v3, Lcom/android/internal/telephony/ProxyController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$1;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 621
    new-instance v3, Lcom/android/internal/telephony/ProxyController$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$2;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    .line 1071
    new-instance v3, Lcom/android/internal/telephony/ProxyController$3;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$3;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    .line 1097
    new-instance v3, Lcom/android/internal/telephony/ProxyController$4;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$4;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    const-string v3, "Constructor - Enter"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 194
    iput-object p3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 195
    iput-object p4, p0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 197
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DctController;->makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 198
    new-instance v3, Lcom/android/internal/telephony/UiccPhoneBookController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/UiccPhoneBookController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccPhoneBookController:Lcom/android/internal/telephony/UiccPhoneBookController;

    .line 199
    new-instance v3, Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/PhoneSubInfoController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneSubInfoController:Lcom/android/internal/telephony/PhoneSubInfoController;

    .line 200
    new-instance v3, Lcom/android/internal/telephony/UiccSmsController;

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/UiccSmsController;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mUiccSmsController:Lcom/android/internal/telephony/UiccSmsController;

    .line 201
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    .line 202
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    .line 203
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    .line 204
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mLogicalModemIds:[Ljava/lang/String;

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mLogicalModemIds:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;-><init>(Lcom/android/internal/telephony/ProxyController;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioCapabilityRunnable:Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

    .line 214
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 215
    .local v2, "pm":Landroid/os/PowerManager;
    const-string v3, "ProxyController"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 216
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 219
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 220
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 221
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/internal/telephony/PhoneProxy;->registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/android/internal/telephony/ProxyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    const-string v3, "Constructor - Exit"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ProxyController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ProxyController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/ProxyController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ProxyController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/ProxyController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ProxyController;->issueFinish(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ProxyController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onStartRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onApplyRadioCapabilityResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onNotificationRadioCapabilityChanged(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/ProxyController;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ProxyController;->onRetryWhenRadioAvailable(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/ProxyController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/ProxyController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/ProxyController;)[Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ProxyController;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    return-object v0
.end method

.method private checkAllRadioCapabilitySuccess()Z
    .locals 4

    .prologue
    .line 970
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 971
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 972
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v1, v1, v0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 973
    const/4 v1, 0x0

    monitor-exit v2

    .line 976
    :goto_1
    return v1

    .line 971
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    :cond_1
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_1

    .line 977
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearTransaction()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 953
    const-string v1, "clearTransaction"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 954
    iput-boolean v2, p0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    .line 955
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 956
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearTransaction: phoneId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " status=IDLE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 958
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 959
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 960
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 956
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 966
    :cond_1
    monitor-exit v2

    .line 967
    return-void

    .line 966
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private completeRadioCapabilityTransaction()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 899
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->checkAllRadioCapabilitySuccess()Z

    move-result v7

    .line 900
    .local v7, "success":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onFinishRadioCapabilityResponse: success="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 901
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 902
    sget-object v8, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_SIM_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRfOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v9

    if-ne v8, v9, :cond_0

    .line 904
    const-string v8, "clearTransaction,reset RfOffState"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v8

    sget-object v9, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)V

    .line 908
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 909
    .local v2, "idleIntent":Landroid/content/Intent;
    const-string v8, "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    const/high16 v8, 0x20000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 911
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2, v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 914
    .end local v2    # "idleIntent":Landroid/content/Intent;
    :cond_0
    if-eqz v7, :cond_4

    .line 915
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .local v4, "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v8, v8

    if-ge v1, v8, :cond_1

    .line 917
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v6

    .line 918
    .local v6, "raf":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "radioAccessFamily["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 919
    new-instance v5, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v5, v1, v6}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    .line 920
    .local v5, "phoneRC":Landroid/telephony/RadioAccessFamily;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 922
    .end local v5    # "phoneRC":Landroid/telephony/RadioAccessFamily;
    .end local v6    # "raf":I
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "rafs"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 928
    .end local v1    # "i":I
    .end local v4    # "phoneRAFList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/RadioAccessFamily;>;"
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->updateIccid([Lcom/android/internal/telephony/Phone;)V

    .line 930
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 933
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 935
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 937
    const-string v8, "has next capability switch request,trigger it"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 939
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 940
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :cond_2
    :goto_2
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 946
    iput-object v10, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 949
    :cond_3
    return-void

    .line 926
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->sendCapabilityFailBroadcast()V

    goto :goto_2
.end method

.method public static getInstance()Lcom/android/internal/telephony/ProxyController;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p2, "uiccController"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 153
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/android/internal/telephony/ProxyController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/ProxyController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 156
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ProxyController;->sProxyController:Lcom/android/internal/telephony/ProxyController;

    return-object v0
.end method

.method private issueFinish(II)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "sessionId"    # I

    .prologue
    const/4 v9, 0x5

    .line 870
    iget-object v8, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v8

    .line 871
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v0, v0, v1

    if-eq v0, v9, :cond_1

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueFinish: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 875
    const/4 v3, 0x4

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    const/4 v7, 0x4

    move-object v0, p0

    move v2, p2

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 883
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueFinish: phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status: FAIL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x5

    aput v2, v0, v1

    .line 871
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issueFinish: Ignore already FAIL, Phone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 893
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1036
    const-string v0, "ProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1040
    const-string v0, "ProxyController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void
.end method

.method private onApplyRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x20000000

    .line 722
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v3, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/RadioCapability;

    .line 723
    .local v3, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v4

    iget v5, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v4, v5, :cond_2

    .line 724
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApplyRadioCapabilityResponse: Ignore session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 728
    const-string v4, "onApplyRadioCapabilityResponse: rc == null and exception"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 729
    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_SIM_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRfOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 731
    const-string v4, "onApplyRadioCapabilityResponse,reset RfOffState"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 732
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v4

    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)V

    .line 734
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 735
    .local v2, "idleIntent":Landroid/content/Intent;
    const-string v4, "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 737
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 773
    .end local v2    # "idleIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 742
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApplyRadioCapabilityResponse: rc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 743
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v4, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    .line 744
    iget-object v5, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v5

    .line 745
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApplyRadioCapabilityResponse: Error response session="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    .line 747
    .local v0, "id":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 748
    const/16 v4, 0xa

    if-ne v0, v4, :cond_3

    .line 750
    const/4 v0, 0x0

    .line 752
    :cond_3
    const/16 v4, 0xb

    if-ne v0, v4, :cond_4

    .line 754
    const/4 v0, 0x1

    .line 756
    :cond_4
    sget-object v4, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_SIM_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRfOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v6

    if-ne v4, v6, :cond_5

    .line 758
    const-string v4, "onApplyRadioCapabilityResponse 2,reset RfOffState"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 759
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v4

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v4, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)V

    .line 761
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 762
    .local v1, "idle2Intent":Landroid/content/Intent;
    const-string v4, "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 764
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 767
    .end local v1    # "idle2Intent":Landroid/content/Intent;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApplyRadioCapabilityResponse: phoneId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " status=FAIL"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 768
    iget-object v4, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v6, 0x5

    aput v6, v4, v0

    .line 769
    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "id":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 771
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApplyRadioCapabilityResponse: Valid start expecting notification rc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onNotificationRadioCapabilityChanged(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 780
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v2, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/RadioCapability;

    .line 781
    .local v2, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v5

    iget v6, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v5, v6, :cond_1

    .line 782
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 845
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v6

    .line 787
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRadioCapabilityChanged: rc="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 789
    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v5

    iget v7, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v5, v7, :cond_2

    .line 790
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRadioCapabilityChanged: Ignore session="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " rc="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 792
    monitor-exit v6

    goto :goto_0

    .line 844
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 795
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v0

    .line 796
    .local v0, "id":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 797
    const/16 v5, 0xa

    if-ne v0, v5, :cond_3

    .line 799
    const/4 v0, 0x0

    .line 801
    :cond_3
    const/16 v5, 0xb

    if-ne v0, v5, :cond_4

    .line 803
    const/4 v0, 0x1

    .line 806
    :cond_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getStatus()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_8

    .line 808
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " status=FAIL"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 809
    iget-object v5, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v7, 0x5

    aput v7, v5, v0

    .line 816
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 817
    iget v5, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v5, :cond_7

    .line 818
    const-string v5, "onNotificationRadioCapabilityChanged: removing callback from handler"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 820
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 821
    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_SIM_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRfOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v7

    if-ne v5, v7, :cond_6

    .line 823
    const-string v5, "RadioCapabilityChanged,reset RfOffState"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 824
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v5

    sget-object v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v5, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)V

    .line 826
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 827
    .local v1, "idleIntent":Landroid/content/Intent;
    const-string v5, "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const/high16 v5, 0x20000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 829
    iget-object v5, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 832
    .end local v1    # "idleIntent":Landroid/content/Intent;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioCapabilityRunnable:Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 833
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 834
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->checkAllRadioCapabilitySuccess()Z

    move-result v4

    .line 835
    .local v4, "success":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRadioCapabilityChanged: APPLY URC success="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 837
    if-eqz v4, :cond_9

    .line 838
    const/4 v3, 0x1

    .line 842
    .local v3, "status":I
    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/ProxyController;->issueFinish(II)V

    .line 844
    .end local v3    # "status":I
    .end local v4    # "success":Z
    :cond_7
    monitor-exit v6

    goto/16 :goto_0

    .line 811
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRadioCapabilityChanged: phoneId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " status=SUCCESS"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 812
    iget-object v5, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v7, 0x4

    aput v7, v5, v0

    .line 813
    iget-object v5, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/PhoneProxy;->setRadioAccessFamily(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 840
    .restart local v4    # "success":Z
    :cond_9
    const/4 v3, 0x2

    .restart local v3    # "status":I
    goto :goto_2
.end method

.method private onRetryWhenRadioAvailable(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRetryWhenRadioAvailable,mSetRafRetryCause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1062
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1064
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :cond_0
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private onStartRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 657
    iget-object v11, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v11

    .line 658
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/RadioCapability;

    .line 659
    .local v9, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v0, v2, :cond_1

    .line 660
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: Ignore session="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 662
    monitor-exit v11

    .line 715
    :goto_0
    return-void

    .line 664
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 665
    invoke-virtual {v9}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v8

    .line 666
    .local v8, "id":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 667
    const/16 v0, 0xa

    if-ne v8, v0, :cond_2

    .line 669
    const/4 v8, 0x0

    .line 671
    :cond_2
    const/16 v0, 0xb

    if-ne v8, v0, :cond_3

    .line 673
    const/4 v8, 0x1

    .line 676
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: Error response session="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status=FAIL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x5

    aput v2, v0, v8

    .line 685
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v0, :cond_4

    .line 686
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->resetRadioAccessFamilyStatusCounter()V

    .line 687
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->checkAllRadioCapabilitySuccess()Z

    move-result v10

    .line 688
    .local v10, "success":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: success="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 689
    if-nez v10, :cond_6

    .line 690
    const/4 v0, 0x2

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ProxyController;->issueFinish(II)V

    .line 714
    .end local v10    # "success":Z
    :cond_4
    :goto_2
    monitor-exit v11

    goto/16 :goto_0

    .end local v8    # "id":I
    .end local v9    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 681
    .restart local v8    # "id":I
    .restart local v9    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status=STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x2

    aput v2, v0, v8

    goto :goto_1

    .line 694
    .restart local v10    # "success":Z
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 695
    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v4, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mLogicalModemIds:[Ljava/lang/String;

    aget-object v5, v0, v1

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartRadioCapabilityResponse: phoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " status=APPLYING"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 707
    :cond_7
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 710
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setRestrictModeState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private registerPhoneStateReceiver()V
    .locals 3

    .prologue
    .line 1152
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1153
    const-string v1, "registerPhoneStateReceiver, context is null => return"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1161
    :goto_0
    return-void

    .line 1157
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1158
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1159
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1160
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    goto :goto_0
.end method

.method private registerWorldModeReceiver()V
    .locals 3

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1131
    const-string v1, "registerWorldModeReceiver, context is null => return"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1139
    :goto_0
    return-void

    .line 1135
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1136
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    goto :goto_0
.end method

.method private resetRadioAccessFamilyStatusCounter()V
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 982
    return-void
.end method

.method private sendCapabilityFailBroadcast()V
    .locals 2

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1127
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendRadioCapabilityRequest(IIIILjava/lang/String;II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "sessionId"    # I
    .param p3, "rcPhase"    # I
    .param p4, "radioFamily"    # I
    .param p5, "logicalModemId"    # Ljava/lang/String;
    .param p6, "status"    # I
    .param p7, "eventId"    # I

    .prologue
    .line 986
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 988
    .local v0, "requestRC":Lcom/android/internal/telephony/RadioCapability;
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V

    .line 990
    return-void
.end method

.method private unRegisterPhoneStateReceiver()V
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1165
    const-string v0, "unRegisterPhoneStateReceiver, context is null => return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1171
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mPhoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    goto :goto_0
.end method

.method private unRegisterWorldModeReceiver()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1143
    const-string v0, "unRegisterWorldModeReceiver, context is null => return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 1149
    :goto_0
    return-void

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mWorldModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    goto :goto_0
.end method


# virtual methods
.method public disableDataConnectivity(ILandroid/os/Message;)V
    .locals 2
    .param p1, "sub"    # I
    .param p2, "dataCleanedUpMsg"    # Landroid/os/Message;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 243
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1045
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :goto_0
    return-void

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableDataConnectivity(I)V
    .locals 2
    .param p1, "sub"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->setInternalDataEnabled(Z)V

    .line 238
    return-void
.end method

.method public getRadioAccessFamily(I)I
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 284
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v0

    goto :goto_0
.end method

.method public isCapabilitySwitching()Z
    .locals 1

    .prologue
    .line 1057
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    return v0
.end method

.method public isDataDisconnected(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 266
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 268
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 270
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .end local v0    # "activePhone":Lcom/android/internal/telephony/Phone;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    .line 272
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onFinishRadioCapabilityResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 852
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/RadioCapability;

    .line 853
    .local v0, "rc":Lcom/android/internal/telephony/RadioCapability;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioCapability;->getSession()I

    move-result v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    if-eq v1, v2, :cond_1

    .line 854
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishRadioCapabilityResponse: Ignore session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 866
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v2

    .line 859
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onFinishRadioCapabilityResponse mRadioAccessFamilyStatusCounter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 861
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 862
    iget v1, p0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    if-nez v1, :cond_2

    .line 863
    invoke-direct {p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 865
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 250
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 252
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    :cond_0
    return-void
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    .locals 28
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    .line 299
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 301
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    const-string v2, "world mode switching"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    if-nez v2, :cond_0

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->registerWorldModeReceiver()V

    .line 306
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 307
    const/4 v2, 0x1

    .line 618
    :goto_0
    return v2

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterWorldModeReceiver:Z

    if-eqz v2, :cond_2

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->unRegisterWorldModeReceiver()V

    .line 311
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 312
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 316
    :cond_2
    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v4, v4

    if-eq v2, v4, :cond_3

    .line 317
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Length of input rafs must equal to total phone count"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :cond_3
    const-string v2, "gsm.gcf.testmode"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 322
    const-string v2, "skip switching because FTA mode"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 323
    const/4 v2, 0x1

    goto :goto_0

    .line 326
    :cond_4
    const-string v2, "persist.radio.simswitch.emmode"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 328
    const-string v2, "skip switching because EM disable mode"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 329
    const/4 v2, 0x1

    goto :goto_0

    .line 332
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_7

    .line 334
    const-string v2, "setCapability in calling, fail to set RAT for phones"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    if-nez v2, :cond_6

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->registerPhoneStateReceiver()V

    .line 338
    :cond_6
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 339
    const/4 v2, 0x0

    goto :goto_0

    .line 340
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_8

    .line 341
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/ProxyController;->mHasRegisterPhoneStateReceiver:Z

    if-eqz v2, :cond_8

    .line 342
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->unRegisterPhoneStateReceiver()V

    .line 343
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 344
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 347
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 350
    .local v12, "airplaneMode":I
    if-lez v12, :cond_9

    .line 352
    const-string v2, "airplane mode is on, fail to set RAT for phones"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 353
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 354
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 357
    :cond_9
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v15, v2, :cond_c

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->isRadioAvailable()Z

    move-result v2

    if-nez v2, :cond_a

    .line 360
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCapability fail,Phone"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is not available"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 363
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 364
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_b

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCapability,Phone"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is available"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 367
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 368
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 357
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 372
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 374
    const-string v2, "keep it and return,because capability swithing"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 375
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 376
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 377
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_e

    .line 378
    const-string v2, "setCapability, mIsCapSwitching is not switching, can switch"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 379
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 380
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 382
    :cond_e
    const-string v2, "persist.radio.simswitch"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 385
    .local v26, "switchStatus":I
    const/4 v14, 0x0

    .line 386
    .local v14, "bIsboth3G":Z
    const/4 v13, 0x0

    .line 387
    .local v13, "bIsMajorPhone":Z
    const/16 v20, 0x0

    .line 388
    .local v20, "newMajorPhoneId":I
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_16

    .line 389
    const/4 v13, 0x0

    .line 390
    const-string v2, "ro.mtk_lte_support"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 391
    aget-object v2, p1, v15

    invoke-virtual {v2}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v2

    and-int/lit16 v2, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_f

    .line 393
    const/4 v13, 0x1

    .line 401
    :cond_f
    :goto_3
    if-eqz v13, :cond_15

    .line 402
    aget-object v2, p1, v15

    invoke-virtual {v2}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v20

    .line 403
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 404
    const/16 v2, 0xa

    move/from16 v0, v20

    if-ne v0, v2, :cond_10

    .line 406
    const/16 v20, 0x0

    .line 408
    :cond_10
    const/16 v2, 0xb

    move/from16 v0, v20

    if-ne v0, v2, :cond_11

    .line 410
    const/16 v20, 0x1

    .line 413
    :cond_11
    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_13

    .line 414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRafRetryCause:I

    .line 415
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mNextRafs:[Landroid/telephony/RadioAccessFamily;

    .line 416
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 417
    const-string v2, "no change, skip setRadioCapability"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 418
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 396
    :cond_12
    aget-object v2, p1, v15

    invoke-virtual {v2}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_f

    .line 398
    const/4 v13, 0x1

    goto :goto_3

    .line 420
    :cond_13
    if-eqz v14, :cond_14

    .line 421
    const-string v2, "set more than one 3G phone, fail"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 422
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "input parameter is incorrect"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 424
    :cond_14
    const/4 v14, 0x1

    .line 388
    :cond_15
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 428
    :cond_16
    if-nez v14, :cond_17

    .line 429
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "input parameter is incorrect - no 3g phone"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 432
    :cond_17
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 433
    const/16 v16, 0x0

    .line 434
    .local v16, "isSvlteModeSwitching":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isSvlteModeSwitching()Z

    move-result v16

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability,and isSvlteModeSwitching = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 436
    if-eqz v16, :cond_18

    .line 438
    const-string v2, "setRadioCapability,ModeSwitching wait for next trigger"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 439
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 442
    :cond_18
    const/16 v24, 0x0

    .line 443
    .local v24, "simState":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v23

    .line 444
    .local v23, "simNum":I
    const/16 v25, 0x0

    .line 445
    .local v25, "skipCapabilitySwitch":Z
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v23

    if-ge v15, v0, :cond_1b

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v24

    .line 447
    const/4 v2, 0x2

    move/from16 v0, v24

    if-eq v0, v2, :cond_19

    const/4 v2, 0x3

    move/from16 v0, v24

    if-eq v0, v2, :cond_19

    const/4 v2, 0x4

    move/from16 v0, v24

    if-eq v0, v2, :cond_19

    const/4 v2, 0x6

    move/from16 v0, v24

    if-ne v0, v2, :cond_1a

    .line 451
    :cond_19
    const/16 v25, 0x1

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability,sim is locked simState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 445
    :cond_1a
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 455
    :cond_1b
    if-eqz v25, :cond_1c

    .line 456
    const-string v2, "setRadioCapability,sim is locked wait for unlock trigger"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 457
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 459
    :cond_1c
    const-string v2, "ro.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 460
    .local v11, "OPTR":Ljava/lang/String;
    const-string v2, "ro.operator.seg"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 461
    .local v10, "OPSEG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPTR = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OPSEG = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 463
    const-string v2, "OP09"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "SEGDEFAULT"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 464
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimContainsCdmaApp(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 465
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_1d

    .line 466
    const-string v2, "CDMA sim is inserted in slot1, skip sim switch"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 467
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 468
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 471
    :cond_1d
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1f

    .line 473
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_1f

    .line 475
    const-string v2, "ril.iccid.sim1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 476
    .local v22, "sim1IccId":Ljava/lang/String;
    const-string v2, "N/A"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 477
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 478
    const-string v2, "want to switch 3/4G to GSMphone in SVLTE mode, skip it"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 479
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 485
    .end local v22    # "sim1IccId":Ljava/lang/String;
    :cond_1e
    const-string v2, "Non OP09 A project follow OM project rule"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 487
    :cond_1f
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_IN_IDLE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRfOffState()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v4

    if-ne v2, v4, :cond_24

    .line 489
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_SIM_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v4

    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_SIM_SWITCH:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v4, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setAndGetRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v4

    if-ne v2, v4, :cond_23

    .line 491
    const-string v2, "setRadioCapability,RfOffState set sucess"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 503
    .end local v10    # "OPSEG":Ljava/lang/String;
    .end local v11    # "OPTR":Ljava/lang/String;
    .end local v16    # "isSvlteModeSwitching":Z
    .end local v23    # "simNum":I
    .end local v24    # "simState":I
    .end local v25    # "skipCapabilitySwitch":Z
    :cond_20
    const-string v2, "ro.mtk_external_sim_support"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_25

    .line 504
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v18

    .line 505
    .local v18, "mainPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 506
    const/16 v2, 0xa

    move/from16 v0, v18

    if-ne v0, v2, :cond_21

    .line 507
    const/16 v18, 0x0

    .line 509
    :cond_21
    const/16 v2, 0xb

    move/from16 v0, v18

    if-ne v0, v2, :cond_22

    .line 510
    const/16 v18, 0x1

    .line 513
    :cond_22
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v2, "gsm.external.sim.enabled"

    const-string v4, "0"

    move/from16 v0, v18

    invoke-static {v0, v2, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 516
    .local v17, "isVsimEnabledOnMain":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v2, "gsm.external.sim.inserted"

    const-string v4, "0"

    move/from16 v0, v18

    invoke-static {v0, v2, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 520
    .local v19, "mainPhoneIdSimType":Ljava/lang/String;
    const-string v2, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 521
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "vsim enabled, can\'t switch to another sim!"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    .end local v17    # "isVsimEnabledOnMain":Ljava/lang/String;
    .end local v18    # "mainPhoneId":I
    .end local v19    # "mainPhoneIdSimType":Ljava/lang/String;
    .restart local v10    # "OPSEG":Ljava/lang/String;
    .restart local v11    # "OPTR":Ljava/lang/String;
    .restart local v16    # "isSvlteModeSwitching":Z
    .restart local v23    # "simNum":I
    .restart local v24    # "simState":I
    .restart local v25    # "skipCapabilitySwitch":Z
    :cond_23
    const-string v2, "setRadioCapability,RfOffState set Fail ,return"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 494
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 497
    :cond_24
    const-string v2, "setRadioCapability,RfOffState not idle"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 498
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 526
    .end local v10    # "OPSEG":Ljava/lang/String;
    .end local v11    # "OPTR":Ljava/lang/String;
    .end local v16    # "isSvlteModeSwitching":Z
    .end local v23    # "simNum":I
    .end local v24    # "simState":I
    .end local v25    # "skipCapabilitySwitch":Z
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 538
    const-string v2, "should not be here...!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 539
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 528
    :pswitch_0
    const-string v2, "do setRadioCapability"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    monitor-enter v4

    .line 545
    const/4 v15, 0x0

    :goto_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v2, v2

    if-ge v15, v2, :cond_27

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRadioCapability: mSetRadioAccessFamilyStatus["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v5, v5, v15

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    aget v2, v2, v15

    if-eqz v2, :cond_26

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRadioCapability: Phone["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] is not idle. Rejecting request."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->loge(Ljava/lang/String;)V

    .line 551
    const/4 v2, 0x0

    monitor-exit v4

    goto/16 :goto_0

    .line 554
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 531
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->completeRadioCapabilityTransaction()V

    .line 532
    const-string v2, "no change in op check, skip setRadioCapability"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 533
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 535
    :pswitch_2
    const-string v2, "Sim status/info is not ready, skip setRadioCapability"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 536
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 545
    :cond_26
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 554
    :cond_27
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 556
    const-string v2, "set ril.cdma.switch.needupdate to 1"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 557
    const-string v2, "ril.cdma.switch.needupdate"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v2, "ril.cdma.switching"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_28
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 563
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v2

    move/from16 v0, v20

    invoke-interface {v2, v0}, Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;->notifyRadioCapabilityChange(I)V

    .line 566
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ProxyController;->clearTransaction()V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioCapabilityRunnable:Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;->setTimeoutState(I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioCapabilityRunnable:Lcom/android/internal/telephony/ProxyController$RadioCapabilityRunnable;

    const-wide/32 v6, 0xafc8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/ProxyController;->mIsCapSwitching:Z

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    move-object/from16 v27, v0

    monitor-enter v27

    .line 581
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability: new request session id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 582
    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/ProxyController;->mRadioAccessFamilyStatusCounter:I

    .line 583
    const/4 v15, 0x0

    :goto_6
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_2c

    .line 584
    aget-object v2, p1, v15

    invoke-virtual {v2}, Landroid/telephony/RadioAccessFamily;->getPhoneId()I

    move-result v3

    .line 585
    .local v3, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 586
    const/16 v2, 0xa

    if-ne v3, v2, :cond_2a

    .line 588
    const/4 v3, 0x0

    .line 590
    :cond_2a
    const/16 v2, 0xb

    if-ne v3, v2, :cond_2b

    .line 592
    const/4 v3, 0x1

    .line 595
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability: phoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " status=STARTING"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mSetRadioAccessFamilyStatus:[I

    const/4 v4, 0x1

    aput v4, v2, v3

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getRadioAccessFamily()I

    move-result v4

    aput v4, v2, v3

    .line 598
    aget-object v2, p1, v15

    invoke-virtual {v2}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v21

    .line 602
    .local v21, "requestedRaf":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aput v21, v2, v3

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability: mOldRadioAccessFamily["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRadioCapability: mNewRadioAccessFamily["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ProxyController;->mNewRadioAccessFamily:[I

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ProxyController;->logd(Ljava/lang/String;)V

    .line 607
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/ProxyController;->mRadioCapabilitySessionId:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mOldRadioAccessFamily:[I

    aget v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ProxyController;->mLogicalModemIds:[Ljava/lang/String;

    aget-object v7, v2, v3

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/ProxyController;->sendRadioCapabilityRequest(IIIILjava/lang/String;II)V

    .line 583
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 616
    .end local v3    # "phoneId":I
    .end local v21    # "requestedRaf":I
    :cond_2c
    monitor-exit v27

    .line 618
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 616
    :catchall_1
    move-exception v2

    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public unregisterForAllDataDisconnected(ILandroid/os/Handler;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 258
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 260
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 263
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateCurrentCarrierInProvider()Z

    .line 247
    return-void
.end method

.method public updateDataConnectionTracker(I)V
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/ProxyController;->mProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateDataConnectionTracker()V

    .line 234
    return-void
.end method
