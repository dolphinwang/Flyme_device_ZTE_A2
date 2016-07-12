.class public final Lcom/android/internal/telephony/dataconnection/DcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.source "DcTracker.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTracker$5;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$FdnChangeObserver;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field private static final APN_CHANGE_MILLIS:I = 0x3e8

.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field public static final APP_FAM_UNKNOWN:I = 0x0

.field private static final BSP_PACKAGE:Z

.field private static final FDN_CONTENT_PATH_WITH_SUB_ID:Ljava/lang/String; = "content://icc/fdn/subId/"

.field private static final FDN_CONTENT_URI:Landroid/net/Uri;

.field private static final FDN_FOR_ALLOW_DATA:Ljava/lang/String; = "*99#"

.field private static final HIGH_THROUGHPUT_APN:[Ljava/lang/String;

.field private static final IMS_APN:[Ljava/lang/String;

.field private static final MAX_CID_NUMBER:I = 0xb

.field private static final MAX_ID_HIGH_TROUGHPUT:I = 0x1

.field private static final MAX_ID_IMS_TROUGHPUT:I = 0x6

.field private static final MAX_ID_OTHERS_TROUGHPUT:I = 0x3

.field private static final MIN_ID_HIGH_TROUGHPUT:I = 0x0

.field private static final MIN_ID_IMS_TROUGHPUT:I = 0x4

.field private static final MIN_ID_OTHERS_TROUGHPUT:I = 0x2

.field private static final MTK_IMS_SUPPORT:Z

.field private static final PDP_CONNECTION_POOL_SIZE:I = 0x3

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PROPERTY_THROTTLING_APN_ENABLED:Ljava/lang/String; = "ril.throttling.enabled"

.field private static final PROP_NAME_SET_TEST_RAT:Ljava/lang/String; = "mtk.test.rat"

.field private static final PROVISIONING_SPINNER_TIMEOUT_MILLIS:I = 0x1d4c0

.field private static final PUPPET_MASTER_RADIO_STRESS_TEST:Ljava/lang/String; = "gsm.defaultpdpcontext.active"

.field private static final TC1_FEATURE:Z

.field private static final THROTTLING_APN_ENABLED:Z

.field private static final THROTTLING_MAX_PDP_SIZE:I = 0x8

.field private static final VOLTE_DEFAULT_EMERGENCY_PDN_APN_NAME:Ljava/lang/String; = ""

.field private static final VOLTE_DEFAULT_EMERGENCY_PDN_PROTOCOL:Ljava/lang/String; = "IPV4V6"

.field private static final VOLTE_EMERGENCY_PDN_APN_NAME:Ljava/lang/String; = "volte.emergency.pdn.name"

.field private static final VOLTE_EMERGENCY_PDN_PROTOCOL:Ljava/lang/String; = "volte.emergency.pdn.protocol"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

.field private mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

.field private mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCanSetPreferApn:Z

.field private mConflictApn:Z

.field private mCreateApnLock:Ljava/lang/Integer;

.field private mDeactivatingByNW:Z

.field private mDeactivatingByNWLock:Ljava/lang/Object;

.field private mDedicateConnectionAcs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;",
            ">;"
        }
    .end annotation
.end field

.field private mDedicateConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mDeregistrationAlarmState:Z

.field private mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisconnectPendingCount:I

.field protected mFdMgr:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

.field private mFdnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$FdnChangeObserver;

.field private mGsmDctExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

.field private mHasPendingApnChange:Z

.field private mHasPendingLteRecordLoaded:Z

.field private mHighThroughputIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mImsDeregistrationDelayIntent:Landroid/app/PendingIntent;

.field public mImsRegistrationState:Z

.field private mImsUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

.field private mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

.field private mIsFdnChecked:Z

.field private mIsMatchFdnForAllowData:Z

.field private mIsPhbStateChangedIntentRegistered:Z

.field private mLteIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field private mOthersUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPreRilRat:I

.field private final mProvisionActionName:Ljava/lang/String;

.field private mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProvisioningSpinner:Landroid/app/ProgressDialog;

.field private mReregisterOnReconnectFailure:Z

.field private mSetupDataBlocked:Z

.field private mWaitCleanUpApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    .line 224
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->BSP_PACKAGE:Z

    .line 231
    const-string v0, "ro.mtk_ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->MTK_IMS_SUPPORT:Z

    .line 233
    const-string v0, "ro.mtk_tc1_feature"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->TC1_FEATURE:Z

    .line 242
    const-string v0, "ro.mtk_volte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->THROTTLING_APN_ENABLED:Z

    .line 245
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "*"

    aput-object v3, v0, v2

    const-string v3, "default"

    aput-object v3, v0, v1

    const-string v3, "dun"

    aput-object v3, v0, v5

    const/4 v3, 0x3

    const-string v4, "hipri"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "tethering"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->HIGH_THROUGHPUT_APN:[Ljava/lang/String;

    .line 254
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "ims"

    aput-object v3, v0, v2

    const-string v2, "emergency"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->IMS_APN:[Ljava/lang/String;

    .line 302
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->FDN_CONTENT_URI:Landroid/net/Uri;

    return-void

    :cond_0
    move v0, v2

    .line 231
    goto :goto_0

    :cond_1
    move v0, v2

    .line 233
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 9
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 330
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 150
    const-string v4, "DCT"

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    .line 156
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    .line 158
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    .line 160
    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    .line 186
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 204
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    .line 206
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsRegistrationState:Z

    .line 216
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWaitCleanUpApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 217
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeregistrationAlarmState:Z

    .line 218
    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsDeregistrationDelayIntent:Landroid/app/PendingIntent;

    .line 228
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mConflictApn:Z

    .line 269
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHighThroughputIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 270
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOthersUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 271
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 275
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCreateApnLock:Ljava/lang/Integer;

    .line 283
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 295
    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreRilRat:I

    .line 298
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNWLock:Ljava/lang/Object;

    .line 299
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNW:Z

    .line 306
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsFdnChecked:Z

    .line 307
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsMatchFdnForAllowData:Z

    .line 308
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 309
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 4791
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    .line 4792
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    .line 331
    const-string v4, "DcTracker.constructor"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 333
    iput-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createWorkerHandler()V

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllEvents()V

    .line 342
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    .line 343
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initApnContexts()V

    .line 348
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 350
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v2, "filter":Landroid/content/IntentFilter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.internal.telephony.data-reconnect."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.internal.telephony.data-restart-trysetup."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v5, v2, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 358
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CLEAR_DATA_BEARER_NOTIFY"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v5, v2, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 363
    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->BSP_PACKAGE:Z

    if-nez v4, :cond_1

    .line 365
    :try_start_0
    const-class v4, Lcom/mediatek/common/telephony/IGsmDCTExt;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/telephony/IGsmDCTExt;

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mGsmDctExt:Lcom/mediatek/common/telephony/IGsmDCTExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.internal.telephony.PROVISION"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    .line 379
    const v4, 0x42212

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendEmptyMessage(I)Z

    .line 382
    new-instance v4, Lcom/android/internal/telephony/dataconnection/DcTracker$FdnChangeObserver;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$FdnChangeObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFdnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$FdnChangeObserver;

    .line 383
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->FDN_CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFdnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$FdnChangeObserver;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 385
    return-void

    .line 367
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "mGsmDctExt init fail"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingApnChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isFdnEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanOrSetupDataConnByCheckFdn()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onFdnChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DcTracker;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCreateApnLock:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onApnChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initEmergencyApnSetting()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    return-void
.end method

.method private addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "networkConfig"    # Landroid/net/NetworkConfig;

    .prologue
    .line 690
    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "DCT"

    move-object v2, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkConfig;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 692
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    return-object v0
.end method

.method private addEmergencyApnSetting()V
    .locals 5

    .prologue
    .line 4443
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_0

    .line 4444
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 4445
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 4462
    :cond_0
    :goto_0
    return-void

    .line 4447
    :cond_1
    const/4 v1, 0x0

    .line 4448
    .local v1, "hasEmergencyApn":Z
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 4449
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    const-string v4, "emergency"

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4450
    const/4 v1, 0x1

    .line 4455
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    if-nez v1, :cond_4

    .line 4456
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4458
    :cond_4
    const-string v3, "addEmergencyApnSetting - E-APN setting is already present"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3702
    .local p1, "apns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3704
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 3705
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3709
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 3710
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 3711
    const/4 v4, 0x0

    .line 3713
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_1
    return-object v4

    .restart local v3    # "size":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private apnToStringIgnoreName(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Ljava/lang/String;
    .locals 4
    .param p1, "apnSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 4680
    if-nez p1, :cond_0

    .line 4681
    const/4 v2, 0x0

    .line 4705
    :goto_0
    return-object v2

    .line 4684
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4685
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4694
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 4695
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4696
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 4697
    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4694
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4700
    :cond_2
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4701
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4702
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4703
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apnToStringIgnoreName: sb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4705
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private apnTypeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 6
    .param p1, "first"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "second"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 3473
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3474
    .local v0, "apnType1":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "index1":I
    :goto_0
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 3475
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3476
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3474
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3479
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3480
    .local v1, "apnType2":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 3481
    iget-object v4, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3482
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3480
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3484
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APN1: is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APN2: is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3488
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 3489
    const/4 v3, 0x0

    .local v3, "index2":I
    :goto_3
    iget-object v4, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 3490
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v2

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3493
    :cond_2
    const-string v4, "apnTypeSameAny: return true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3494
    const/4 v4, 0x1

    .line 3500
    .end local v3    # "index2":I
    :goto_4
    return v4

    .line 3489
    .restart local v3    # "index2":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3488
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3499
    .end local v3    # "index2":I
    :cond_5
    const-string v4, "apnTypeSameAny: return false"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3500
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private apnsSimilar(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 2
    .param p1, "first"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "second"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 3505
    const-string v0, "dun"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dun"

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnTypeSameAny(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    iget-boolean v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    iget v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    iget v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->xorEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private apnsToStringIgnoreName(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4661
    .local p1, "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 4662
    :cond_0
    const/4 v3, 0x0

    .line 4669
    :goto_0
    return-object v3

    .line 4664
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4665
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 4666
    .local v2, "t":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnToStringIgnoreName(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4668
    .end local v2    # "t":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apnsToStringIgnoreName: sb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4669
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "enabled"    # Z
    .param p3, "met"    # Z

    .prologue
    .line 2515
    const/4 v0, 0x0

    .line 2516
    .local v0, "cleanup":Z
    const/4 v2, 0x0

    .line 2518
    .local v2, "trySetup":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyNewState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2522
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2523
    const/4 v0, 0x1

    .line 2524
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 2525
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 2526
    .local v1, "state":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2587
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    .line 2588
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDependencyMet(Z)V

    .line 2592
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSetupDataBlocked:Z

    if-eqz v3, :cond_8

    .line 2593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyNewState: block during IRAT: apnContext = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2599
    :cond_1
    :goto_1
    return-void

    .line 2532
    .restart local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :pswitch_0
    const-string v3, "applyNewState: \'ready\' so return"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2540
    :pswitch_1
    const/4 v2, 0x1

    .line 2541
    const-string v3, "dataEnabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 2546
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_2
    if-nez p2, :cond_4

    .line 2547
    const/4 v0, 0x1

    .line 2548
    const-string v3, "queryPLMN"

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSetDataAllowedReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2549
    const-string v3, "queryPLMN"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 2551
    :cond_3
    const-string v3, "dataDisabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 2572
    :cond_4
    const-string v3, "dependencyUnmet"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 2575
    :cond_5
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 2576
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2577
    const-string v3, "dependencyMet"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2581
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_6

    .line 2582
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2584
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 2579
    :cond_7
    const-string v3, "dataEnabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_2

    .line 2597
    :cond_8
    if-eqz v0, :cond_9

    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2598
    :cond_9
    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    goto :goto_1

    .line 2526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 36
    .param p1, "requestedApnType"    # Ljava/lang/String;
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: E requestedApnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3603
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 3605
    .local v29, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const-string v3, "dun"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3606
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v30

    .line 3607
    .local v30, "dun":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v30, :cond_0

    .line 3608
    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X added APN_TYPE_DUN apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3698
    .end local v30    # "dun":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :goto_0
    return-object v29

    .line 3615
    :cond_0
    const-string v3, "emergency"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3616
    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "emergency"

    aput-object v4, v15, v3

    .line 3617
    .local v15, "apnTypes":[Ljava/lang/String;
    const-string v3, "volte.emergency.pdn.name"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3618
    .local v6, "emergencyApnName":Ljava/lang/String;
    const-string v3, "volte.emergency.pdn.protocol"

    const-string v4, "IPV4V6"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3620
    .local v16, "emergencyProtocol":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v3, -0x1

    const-string v4, "46692"

    const-string v5, "Emergency"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const/4 v14, -0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, ""

    const-string v27, ""

    move-object/from16 v17, v16

    invoke-direct/range {v2 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;)V

    .line 3623
    .local v2, "fakeApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn for emergency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3624
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3627
    .end local v2    # "fakeApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v6    # "emergencyApnName":Ljava/lang/String;
    .end local v15    # "apnTypes":[Ljava/lang/String;
    .end local v16    # "emergencyProtocol":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3628
    .local v34, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v34, :cond_3

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v33

    .line 3635
    .local v33, "operator":Ljava/lang/String;
    :goto_1
    const/16 v35, 0x1

    .line 3637
    .local v35, "usePreferred":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_4

    const/16 v35, 0x1

    .line 3644
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: usePreferred="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " canSetPreferApn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPreferredApn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " radioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IccRecords r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3651
    if-eqz v35, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: Preferred APN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_5

    .line 3659
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X added preferred apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3628
    .end local v33    # "operator":Ljava/lang/String;
    .end local v35    # "usePreferred":Z
    :cond_3
    const-string v33, ""

    goto/16 :goto_1

    .line 3637
    .restart local v33    # "operator":Ljava/lang/String;
    .restart local v35    # "usePreferred":Z
    :cond_4
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 3639
    :catch_0
    move-exception v31

    .line 3640
    .local v31, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "buildWaitingApns: usePreferred NotFoundException set to true"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3641
    const/16 v35, 0x1

    goto/16 :goto_2

    .line 3663
    .end local v31    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    const-string v3, "buildWaitingApns: no preferred APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3664
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 3665
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3673
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 3674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: mAllApnSettings="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3676
    .local v28, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: apn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3677
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3678
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    if-eqz v3, :cond_7

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_9

    .line 3679
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: adding apn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3680
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3668
    .end local v28    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v32    # "i$":Ljava/util/Iterator;
    :cond_8
    const-string v3, "buildWaitingApns: no preferred APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3669
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 3670
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    goto/16 :goto_3

    .line 3683
    .restart local v28    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v32    # "i$":Ljava/util/Iterator;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: bearer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "radioTech:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3689
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: couldn\'t handle requesedApnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3695
    .end local v28    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v32    # "i$":Ljava/util/Iterator;
    :cond_b
    const-string v3, "mAllApnSettings is empty!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3697
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildWaitingApns: X apnList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1628
    if-nez p1, :cond_1

    .line 1638
    :cond_0
    :goto_0
    return-void

    .line 1630
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 1632
    .local v1, "intent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 1633
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1635
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1636
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 12
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 2602
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 2603
    .local v1, "apnType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2604
    .local v6, "dunSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v10, "emergency"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v2, 0x1

    .line 2606
    .local v2, "bIsRequestApnTypeEmergency":Z
    :goto_0
    const-string v10, "dun"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2607
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v6

    .line 2610
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkForCompatibleConnectedApnContext: apnContext="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2613
    const/4 v9, 0x0

    .line 2614
    .local v9, "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const/4 v8, 0x0

    .line 2615
    .local v8, "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2616
    .local v4, "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v5

    .line 2617
    .local v5, "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "curDcac: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2618
    if-eqz v5, :cond_5

    .line 2619
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 2620
    .local v0, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apnSetting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2621
    if-eqz v6, :cond_3

    .line 2622
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2623
    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 2626
    :pswitch_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkForCompatibleConnectedApnContext: found dun conn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " curApnCtx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2688
    .end local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v4    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_2
    return-object v5

    .line 2604
    .end local v2    # "bIsRequestApnTypeEmergency":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v9    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2634
    .restart local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v2    # "bIsRequestApnTypeEmergency":Z
    .restart local v4    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v5    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v9    # "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :pswitch_2
    move-object v9, v5

    .line 2635
    move-object v8, v4

    goto :goto_1

    .line 2641
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2642
    const/4 v3, 0x0

    .line 2643
    .local v3, "bIsSkip":Z
    if-eqz v2, :cond_4

    .line 2644
    const-string v10, "emergency"

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2646
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkForCompatibleConnectedApnContext: found canHandle conn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " curApnCtx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", but not emergency type (skip)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2650
    const/4 v3, 0x1

    .line 2653
    :cond_4
    sget-object v10, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_1

    .line 2655
    :pswitch_4
    if-nez v3, :cond_1

    .line 2657
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkForCompatibleConnectedApnContext: found canHandle conn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " curApnCtx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2665
    :pswitch_5
    if-nez v3, :cond_1

    .line 2666
    move-object v9, v5

    .line 2667
    move-object v8, v4

    goto/16 :goto_1

    .line 2675
    .end local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v3    # "bIsSkip":Z
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkForCompatibleConnectedApnContext: not conn curApnCtx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2679
    .end local v4    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_6
    if-eqz v9, :cond_7

    .line 2681
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkForCompatibleConnectedApnContext: found potential conn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " curApnCtx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v5, v9

    .line 2684
    goto/16 :goto_2

    .line 2687
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkForCompatibleConnectedApnContext: NO conn apnContext="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2688
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2623
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2653
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private cleanOrSetupDataConnByCheckFdn()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 2442
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2443
    const-string v2, "invalid sub id, skip cleanOrSetupDataConnByCheckFdn()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2478
    :goto_0
    return-void

    .line 2446
    :cond_0
    const-string v2, "cleanOrSetupDataConnByCheckFdn()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2448
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsMatchFdnForAllowData:Z

    .line 2449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://icc/fdn/subId/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2450
    .local v1, "uriFdn":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2451
    .local v0, "cr":Landroid/content/ContentResolver;
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "number"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2453
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 2454
    iput-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsFdnChecked:Z

    .line 2455
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 2456
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2458
    :cond_1
    const-string v2, "number"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2460
    .local v7, "strFdnNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strFdnNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2461
    const-string v2, "*99#"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2462
    iput-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsMatchFdnForAllowData:Z

    .line 2468
    .end local v7    # "strFdnNumber":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2471
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsMatchFdnForAllowData:Z

    if-eqz v2, :cond_5

    .line 2472
    const-string v2, "match FDN for allow data, call setupDataOnConnectableApns(REASON_FDN_DISABLED)"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2473
    const-string v2, "FdnDisabled"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2465
    .restart local v7    # "strFdnNumber":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 2475
    .end local v7    # "strFdnNumber":Ljava/lang/String;
    :cond_5
    const-string v2, "not match FDN for allow data, call cleanUpAllConnections(REASON_FDN_ENABLED)"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2476
    const-string v2, "FdnEnabled"

    invoke-virtual {p0, v8, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private cleanUpConnectionsOnUpdatedApns(Z)V
    .locals 9
    .param p1, "tearDown"    # Z

    .prologue
    .line 4465
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleanUpConnectionsOnUpdatedApns: tearDown="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4466
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4467
    const-string v7, "apnChanged"

    invoke-virtual {p0, p1, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 4500
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4501
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 4502
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 4505
    :cond_1
    const-string v7, "default"

    iput-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    .line 4507
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDisconnectPendingCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4508
    if-eqz p1, :cond_2

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez v7, :cond_2

    .line 4509
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    .line 4510
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    .line 4512
    :cond_2
    return-void

    .line 4469
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4470
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cleanUpConnectionsOnUpdatedApns for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4472
    const/4 v1, 0x1

    .line 4473
    .local v1, "cleanUpApn":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v2

    .line 4475
    .local v2, "currentWaitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v7

    if-nez v7, :cond_5

    .line 4476
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    .line 4477
    .local v5, "radioTech":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 4479
    .local v6, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new waitingApns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4480
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 4481
    const/4 v1, 0x0

    .line 4482
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 4483
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 4484
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new waiting apn is different at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4485
    const/4 v1, 0x1

    .line 4486
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 4493
    .end local v3    # "i":I
    .end local v5    # "radioTech":I
    .end local v6    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_5
    if-eqz v1, :cond_4

    .line 4494
    const-string v7, "apnChanged"

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 4495
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto/16 :goto_0

    .line 4482
    .restart local v3    # "i":I
    .restart local v5    # "radioTech":I
    .restart local v6    # "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private createAllApnList()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 3397
    const/4 v7, 0x0

    .line 3398
    .local v7, "hasResult":Z
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3399
    .local v9, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 3400
    .local v8, "operator":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_1

    .line 3401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3405
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3407
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3410
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3411
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3412
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 3413
    const/4 v7, 0x1

    .line 3415
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3419
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-nez v7, :cond_2

    .line 3420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 3423
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addEmergencyApnSetting()V

    .line 3425
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dedupeApnSettings()V

    .line 3427
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3429
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3440
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: X mAllApnSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3442
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataProfilesAsNeeded()V

    .line 3443
    return-void

    .line 3399
    .end local v8    # "operator":Ljava/lang/String;
    :cond_3
    const-string v8, ""

    goto/16 :goto_0

    .line 3433
    .restart local v8    # "operator":Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3434
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3435
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3436
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 3438
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1757
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1758
    .local v1, "mnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1759
    .local v2, "mvnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1761
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1763
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 1764
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v0, :cond_3

    .line 1775
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1778
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v4, v1

    .line 1779
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createApnList: X result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1780
    return-object v4

    .line 1768
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1769
    if-eqz v3, :cond_1

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1770
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1773
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_5
    move-object v4, v2

    .line 1778
    goto :goto_1
.end method

.method private createApnListWithRecord(Landroid/database/Cursor;Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5854
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5855
    .local v1, "mnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5857
    .local v2, "mvnoApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5859
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 5860
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v0, :cond_3

    .line 5872
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5875
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v3, v1

    .line 5876
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IRAT_DcTracker] createApnListWithRecord: X result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5877
    return-object v3

    .line 5864
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->hasMvnoParams()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5865
    if-eqz p2, :cond_1

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5867
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5870
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_5
    move-object v3, v2

    .line 5875
    goto :goto_1
.end method

.method private createDataConnection(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 7
    .param p1, "reqApnType"    # Ljava/lang/String;
    .param p2, "apnSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v1, 0x0

    .line 3553
    const-string v4, "createDataConnection E"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3555
    const/4 v2, 0x0

    .line 3556
    .local v2, "id":I
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isSupportThrottlingApn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3557
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->generateDataConnectionId(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting;)I

    move-result v2

    .line 3558
    if-gez v2, :cond_1

    .line 3582
    :goto_0
    return-object v1

    .line 3562
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 3563
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPdpConnectionPoolSize()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 3564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max PDP count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPdpConnectionPoolSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",but request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3565
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_0

    .line 3570
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v4, v2, p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    .line 3572
    .local v0, "conn":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3573
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    const-string v4, "DCT"

    invoke-direct {v1, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 3574
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v1, v4, p0, v5}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v3

    .line 3575
    .local v3, "status":I
    if-nez v3, :cond_2

    .line 3576
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3581
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDataConnection() X id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3578
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDataConnection: Could not connect to dcac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createDedicateDataConnection()Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .locals 7

    .prologue
    const/16 v6, 0xb

    .line 4957
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge v4, v6, :cond_2

    .line 4958
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 4959
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4961
    new-instance v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v4, v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;I)V

    .line 4962
    .local v0, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4963
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->start()V

    .line 4964
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dedicate]createDedicateDataConnection create DedicateDataConnection with ID ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4966
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    invoke-direct {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;)V

    .line 4967
    .local v1, "ddcac":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v1, v4, p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v3

    .line 4968
    .local v3, "status":I
    if-nez v3, :cond_0

    .line 4969
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4970
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dedicate]createDedicateDataConnection: Connect to ddcac.mDc-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " succeed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4978
    .end local v0    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .end local v1    # "ddcac":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;
    .end local v2    # "i":I
    .end local v3    # "status":I
    :goto_1
    return-object v0

    .line 4972
    .restart local v0    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .restart local v1    # "ddcac":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;
    .restart local v2    # "i":I
    .restart local v3    # "status":I
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDedicateDataConnection: Could not connect to ddcac.mDc-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4958
    .end local v0    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .end local v1    # "ddcac":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;
    .end local v3    # "status":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 4978
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private createWorkerHandler()V
    .locals 2

    .prologue
    .line 4516
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWorkerHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 4517
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$4;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 4526
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4528
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private dataConnectionNotInUse(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)Z
    .locals 4
    .param p1, "dcac"    # Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .prologue
    .line 1784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataConnectionNotInUse: check if dcac is inuse dcac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1785
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1786
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataConnectionNotInUse: in use by apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1788
    const/4 v2, 0x0

    .line 1800
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    return v2

    .line 1799
    :cond_1
    const-string v2, "dataConnectionNotInUse: not in use return true"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1800
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private deactivateLinkDownPdn(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 6123
    const-string v0, "[IRAT_DcTracker]deactivateLinkDownPdn..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 6124
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestDeactivateLinkDownPdn(Landroid/os/Message;)V

    .line 6125
    return-void
.end method

.method private dedupeApnSettings()V
    .locals 7

    .prologue
    .line 3446
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3450
    .local v4, "resultApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v1, 0x0

    .line 3451
    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    .line 3452
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3453
    .local v0, "first":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v5, 0x0

    .line 3454
    .local v5, "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    add-int/lit8 v2, v1, 0x1

    .line 3455
    .local v2, "j":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 3456
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3457
    .restart local v5    # "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnsSimilar(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3458
    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->mergeApns(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v3

    .line 3459
    .local v3, "newApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3460
    move-object v0, v3

    .line 3461
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3463
    .end local v3    # "newApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3466
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 3467
    goto :goto_0

    .line 3468
    .end local v0    # "first":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "j":I
    .end local v5    # "second":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    return-void
.end method

.method private destroyDataConnections()V
    .locals 1

    .prologue
    .line 3586
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 3587
    const-string v0, "destroyDataConnections: clear mDataConnectionList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3588
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3592
    :goto_0
    return-void

    .line 3590
    :cond_0
    const-string v0, "destroyDataConnections: mDataConnecitonList is empty, ignore"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findDataConnectionAcByCid(I)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 3
    .param p1, "cid"    # I

    .prologue
    .line 2125
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 2126
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getCidSync()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2130
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findFreeDataConnection(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 10
    .param p1, "reqApnType"    # Ljava/lang/String;
    .param p2, "apnSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v8, 0x0

    .line 1804
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1805
    .local v2, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isInactiveSync()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1806
    move-object v3, v2

    .line 1807
    .local v3, "dcacForTeardown":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isSupportThrottlingApn()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1808
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->HIGH_THROUGHPUT_APN:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v0, v1, v5

    .line 1809
    .local v0, "apn":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "emergency"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "ims"

    invoke-virtual {p2, v9}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v2, :cond_2

    .line 1813
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v6

    .line 1814
    .local v6, "id":I
    if-ltz v6, :cond_1

    const/4 v9, 0x1

    if-le v6, v9, :cond_2

    .line 1815
    :cond_1
    const/4 v2, 0x0

    .line 1808
    .end local v6    # "id":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1819
    .end local v0    # "apn":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->IMS_APN:[Ljava/lang/String;

    array-length v7, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_7

    aget-object v0, v1, v5

    .line 1820
    .restart local v0    # "apn":Ljava/lang/String;
    const-string v9, "emergency"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "emergency"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1819
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1824
    :cond_5
    if-eqz p2, :cond_4

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v2, :cond_4

    .line 1826
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v6

    .line 1827
    .restart local v6    # "id":I
    const/4 v9, 0x4

    if-lt v6, v9, :cond_6

    const/4 v9, 0x6

    if-le v6, v9, :cond_4

    .line 1828
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1836
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "id":I
    .end local v7    # "len$":I
    :cond_7
    const-string v9, "findFreeDataConnection: tearDownAll is executed on un-used dcac"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1838
    const-string v9, "No connection"

    invoke-virtual {v3, v9, v8}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 1840
    if-eqz v2, :cond_0

    .line 1842
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findFreeDataConnection: found free DataConnection= dcac="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1850
    .end local v2    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v3    # "dcacForTeardown":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_3
    return-object v2

    .line 1849
    :cond_8
    const-string v9, "findFreeDataConnection: NO free DataConnection"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v2, v8

    .line 1850
    goto :goto_3
.end method

.method private generateDataConnectionId(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting;)I
    .locals 8
    .param p1, "reqApnType"    # Ljava/lang/String;
    .param p2, "apnSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 4568
    const/4 v3, -0x1

    .line 4570
    .local v3, "id":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOthersUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4571
    .local v4, "idGenerator":Ljava/util/concurrent/atomic/AtomicInteger;
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->HIGH_THROUGHPUT_APN:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v1, v2

    .line 4572
    .local v0, "apn":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "emergency"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ims"

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4575
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHighThroughputIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4576
    const-string v6, "generateDataConnectionId use high throughput DataConnection id generator"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4580
    .end local v0    # "apn":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHighThroughputIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq v4, v6, :cond_4

    .line 4581
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->IMS_APN:[Ljava/lang/String;

    array-length v5, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v0, v1, v2

    .line 4582
    .restart local v0    # "apn":Ljava/lang/String;
    const-string v6, "emergency"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "emergency"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 4581
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4571
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4586
    :cond_3
    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4587
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4588
    const-string v6, "generateDataConnectionId use ims DataConnection id generator"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4595
    .end local v0    # "apn":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 4596
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHighThroughputIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v4, v6, :cond_6

    const/4 v6, 0x1

    if-le v3, v6, :cond_6

    .line 4597
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Max id of highthrouthput is 1, but generated id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 4599
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 4600
    const/4 v3, -0x1

    .line 4613
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateDataConnectionId id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4615
    return v3

    .line 4601
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOthersUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v4, v6, :cond_7

    const/4 v6, 0x3

    if-le v3, v6, :cond_7

    .line 4602
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Max id of others is 3, but generated id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 4604
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 4605
    const/4 v3, -0x1

    goto :goto_2

    .line 4606
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v4, v6, :cond_5

    const/4 v6, 0x6

    if-le v3, v6, :cond_5

    .line 4607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Max id of others is 6, but generated id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 4609
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 4610
    const/4 v3, -0x1

    goto :goto_2
.end method

.method private getApnDelay()I
    .locals 2

    .prologue
    .line 3038
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    if-eqz v0, :cond_0

    .line 3039
    const-string v0, "persist.radio.apn_ff_delay"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3042
    :goto_0
    return v0

    :cond_0
    const-string v0, "persist.radio.apn_delay"

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getCallStatePeer()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 7

    .prologue
    .line 6099
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 6100
    .local v0, "callState":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6101
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 6102
    .local v4, "phoneCount":I
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v5

    .line 6103
    .local v5, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6104
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhone(Lcom/android/internal/telephony/Phone;)I

    move-result v5

    .line 6106
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 6107
    if-eq v1, v5, :cond_2

    .line 6108
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 6109
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_2

    .line 6110
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 6111
    .local v2, "peerCallState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v6, :cond_2

    .line 6112
    move-object v0, v2

    .line 6119
    .end local v1    # "i":I
    .end local v2    # "peerCallState":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneCount":I
    .end local v5    # "phoneId":I
    :cond_1
    return-object v0

    .line 6106
    .restart local v1    # "i":I
    .restart local v4    # "phoneCount":I
    .restart local v5    # "phoneId":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCellLocationId()I
    .locals 3

    .prologue
    .line 4087
    const/4 v0, -0x1

    .line 4088
    .local v0, "cid":I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 4090
    .local v1, "loc":Landroid/telephony/CellLocation;
    if-eqz v1, :cond_0

    .line 4091
    instance-of v2, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_1

    .line 4092
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 4097
    :cond_0
    :goto_0
    return v0

    .line 4093
    .restart local v1    # "loc":Landroid/telephony/CellLocation;
    :cond_1
    instance-of v2, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    .line 4094
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_0
.end method

.method private getDisconnectDoneRetryTimer(Ljava/lang/String;)I
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3207
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    move-result v1

    .line 3208
    .local v1, "timer":I
    const-string v2, "apnChanged"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3210
    const/16 v1, 0xbb8

    .line 3221
    :cond_0
    :goto_0
    return v1

    .line 3211
    :cond_1
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->BSP_PACKAGE:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mGsmDctExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    if-eqz v2, :cond_0

    .line 3214
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mGsmDctExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    move-result v3

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/telephony/IGsmDCTExt;->getDisconnectDoneRetryTimer(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 3215
    :catch_0
    move-exception v0

    .line 3216
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GsmDCTExt.getDisconnectDoneRetryTimer fail!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getFreeDedicateDataConnection()Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .locals 5

    .prologue
    .line 4946
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4947
    .local v2, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->isInactiveSync()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4948
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dedicate]getFreeDedicateDataConnection reuse DedicateDataConnection with ID ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4949
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .line 4953
    .end local v2    # "key":Ljava/lang/Integer;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIMSApnSetting(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4625
    .local p1, "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 4626
    :cond_0
    const-string v3, ""

    .line 4636
    :goto_0
    return-object v3

    .line 4629
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4630
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 4631
    .local v2, "t":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v3, "ims"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4632
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnToStringIgnoreName(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4635
    .end local v2    # "t":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIMSApnSetting, apnsToStringIgnoreName: sb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4636
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 3747
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3748
    const-string v0, "getPreferredApn: X not found mAllApnSettings.isEmpty"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3796
    :goto_0
    return-object v3

    .line 3752
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v11

    .line 3753
    .local v11, "subId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3756
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v7

    .line 3757
    .local v7, "dataNetworkType":I
    const/16 v0, 0xe

    if-ne v7, v0, :cond_1

    invoke-static {v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcSubId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3759
    invoke-static {v11}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotIdbySubId(I)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcSubId(I)I

    move-result v11

    .line 3760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn: ehrpd network query by subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3763
    .end local v7    # "dataNetworkType":I
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    int-to-long v4, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3764
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v12

    const-string v4, "name"

    aput-object v4, v2, v13

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3768
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 3769
    iput-boolean v13, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    .line 3773
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn: mRequestedApnType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cursor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cursor.count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " subId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3777
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-eqz v0, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 3779
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3780
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 3781
    .local v10, "pos":I
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 3782
    .local v9, "p":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn: apnSetting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pos = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",subId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3783
    iget v0, v9, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    if-ne v0, v10, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn: X found apnSetting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3785
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v9

    .line 3786
    goto/16 :goto_0

    .line 3771
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "p":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v10    # "pos":I
    :cond_3
    iput-boolean v12, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    goto/16 :goto_1

    :cond_4
    move v0, v12

    .line 3773
    goto/16 :goto_2

    .line 3791
    :cond_5
    if-eqz v6, :cond_6

    .line 3792
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3795
    :cond_6
    const-string v0, "getPreferredApn: X not found"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getRilDataRadioTechnology(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 5842
    const-string v1, "mtk.test.rat"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5843
    .local v0, "testRat":I
    if-eqz v0, :cond_0

    .line 5844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IRAT_DcTracker] Use test RAT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for test."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5849
    .end local v0    # "testRat":I
    :goto_0
    return v0

    .restart local v0    # "testRat":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    goto :goto_0
.end method

.method private getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;
    .locals 2

    .prologue
    .line 5673
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    .line 5674
    .local v0, "phoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v1

    return-object v1
.end method

.method private getUiccFamily(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x2

    .line 5820
    const/4 v0, 0x1

    .line 5821
    .local v0, "family":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5822
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 5823
    const/4 v0, 0x2

    .line 5838
    :cond_1
    :goto_0
    return v0

    .line 5826
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRilDataRadioTechnology(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    .line 5827
    .local v1, "radioTech":I
    if-eqz v1, :cond_4

    .line 5828
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccFamilyByRat(I)I

    move-result v0

    .line 5835
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IRAT_DcTracker] getUiccFamily: radioTech = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", family="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5831
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 5832
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private static getUiccFamilyByRat(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .prologue
    .line 5926
    if-nez p0, :cond_0

    .line 5927
    const/4 v0, 0x0

    .line 5935
    :goto_0
    return v0

    .line 5930
    :cond_0
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1

    const/16 v0, 0x8

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0xc

    if-ne p0, v0, :cond_3

    .line 5933
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 5935
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .param p1, "appFamily"    # I

    .prologue
    .line 4102
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    .line 4103
    .local v0, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4104
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v0

    .line 4106
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    return-object v1
.end method

.method private handleApnConflict(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 9
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "apnSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v6, 0x1

    .line 4709
    sget-boolean v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->DUALTALK_SPPORT:Z

    if-eqz v7, :cond_4

    .line 4710
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 4711
    .local v5, "phoneCount":I
    const-string v7, "handleApnConflict"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4713
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_4

    .line 4714
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->getApnContexts(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 4717
    .local v1, "apnContexts":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    if-eqz v1, :cond_2

    .line 4718
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4719
    .local v2, "currApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 4721
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eq v2, p1, :cond_0

    .line 4724
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isSameProxy(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4730
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found conflict APN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4733
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 4734
    iget v7, p1, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    iget v8, v2, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    if-le v7, v8, :cond_1

    .line 4736
    const-string v7, "Clean up current apn context"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4738
    invoke-virtual {p0, v6, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 4739
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mConflictApn:Z

    .line 4754
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "apnContexts":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    .end local v2    # "currApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "phoneCount":I
    :goto_1
    return v6

    .line 4742
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v1    # "apnContexts":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    .restart local v2    # "currApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "phoneCount":I
    :cond_1
    const-string v7, "Waiting for high pripority apn context"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4744
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    move-result v7

    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_1

    .line 4750
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v2    # "currApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Phone"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " apnContext is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 4713
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 4754
    .end local v1    # "apnContexts":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    .end local v3    # "i":I
    .end local v5    # "phoneCount":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private handleCdmaFallback(II)V
    .locals 2
    .param p1, "sourceRat"    # I
    .param p2, "targetRat"    # I

    .prologue
    .line 5452
    const v1, 0x45002

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 5454
    .local v0, "disconnectMessage":Landroid/os/Message;
    const-string v1, "CdmaFallbackHappened"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    .line 5456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSetupDataBlocked:Z

    .line 5457
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateIccRecordAndApn(II)V

    .line 5458
    const-string v1, "CdmaIratEnded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 5459
    return-void
.end method

.method private imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "imsiDB"    # Ljava/lang/String;
    .param p2, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1663
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1664
    .local v3, "len":I
    const/4 v2, 0x0

    .line 1666
    .local v2, "idxCompare":I
    if-gtz v3, :cond_1

    .line 1677
    :cond_0
    :goto_0
    return v4

    .line 1667
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v3, v5, :cond_0

    .line 1669
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1670
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1671
    .local v0, "c":C
    const/16 v5, 0x78

    if-eq v0, v5, :cond_2

    const/16 v5, 0x58

    if-eq v0, v5, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    .line 1669
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1677
    .end local v0    # "c":C
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private initEmergencyApnSetting()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 4425
    const-string v3, "type=\"emergency\""

    .line 4426
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4429
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 4430
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4431
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4432
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mEmergencyApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 4435
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4437
    :cond_1
    return-void
.end method

.method private isCdmaFallbackCase(II)Z
    .locals 9
    .param p1, "sourceRat"    # I
    .param p2, "targetRat"    # I

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5804
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccFamilyByRat(I)I

    move-result v1

    .line 5805
    .local v1, "sourceFamily":I
    invoke-static {p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccFamilyByRat(I)I

    move-result v2

    .line 5806
    .local v2, "targetFamily":I
    if-eq v1, v2, :cond_2

    move v0, v3

    .line 5807
    .local v0, "isFallback":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IRAT_DcTracker]isIratFallbackCase: sourceFamily = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", targetFamily = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5809
    if-ne p1, v8, :cond_0

    if-eq v2, v7, :cond_1

    :cond_0
    if-ne p2, v8, :cond_3

    if-ne v1, v7, :cond_3

    .line 5816
    :cond_1
    :goto_1
    return v3

    .end local v0    # "isFallback":Z
    :cond_2
    move v0, v4

    .line 5806
    goto :goto_0

    .restart local v0    # "isFallback":Z
    :cond_3
    move v3, v4

    .line 5816
    goto :goto_1
.end method

.method private isConcurrentVoiceAndDataAllowedWithPeer()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5945
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5946
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isSrlteSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5962
    :cond_0
    :goto_0
    return v0

    .line 5948
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isSvlteSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5949
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isSamePhoneTypeWithPeer()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 5952
    goto :goto_0

    .line 5956
    :cond_2
    const-string v2, "ro.mtk_dt_support"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 5957
    goto :goto_0
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1011
    const/4 v0, 0x1

    .line 1013
    .local v0, "checkDefaultData":Z
    const-string v1, "mms"

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ims"

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "emergency"

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1016
    :cond_0
    const/4 v0, 0x0

    .line 1018
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFdnEnableSupport()Z
    .locals 2

    .prologue
    .line 2366
    const/4 v0, 0x0

    .line 2367
    .local v0, "isFdnEnableSupport":Z
    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->BSP_PACKAGE:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mGsmDctExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    if-eqz v1, :cond_0

    .line 2368
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mGsmDctExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IGsmDCTExt;->isFdnEnableSupport()Z

    move-result v0

    .line 2370
    :cond_0
    return v0
.end method

.method private isFdnEnabled()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 2374
    const/4 v0, 0x0

    .line 2375
    .local v0, "bFdnEnabled":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isFdnEnableSupport()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2376
    const-string v6, "phoneEx"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v4

    .line 2378
    .local v4, "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v4, :cond_4

    .line 2380
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isFdnEnabled(I)Z

    move-result v0

    .line 2381
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFdnEnabled(), bFdnEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2382
    if-eqz v0, :cond_2

    .line 2383
    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsFdnChecked:Z

    if-eqz v6, :cond_1

    .line 2384
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFdnEnabled(), match FDN for allow data = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsMatchFdnForAllowData:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2386
    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsMatchFdnForAllowData:Z

    if-nez v6, :cond_0

    .line 2408
    .end local v4    # "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :goto_0
    return v5

    .line 2386
    .restart local v4    # "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2388
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isPhbReady(I)Z

    move-result v1

    .line 2389
    .local v1, "bPhbReady":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFdnEnabled(), bPhbReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2390
    if-eqz v1, :cond_3

    .line 2391
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWorkerHandler:Landroid/os/Handler;

    const v6, 0x421fc

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .end local v1    # "bPhbReady":Z
    .end local v4    # "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_2
    :goto_1
    move v5, v0

    .line 2408
    goto :goto_0

    .line 2392
    .restart local v1    # "bPhbReady":Z
    .restart local v4    # "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPhbStateChangedIntentRegistered:Z

    if-nez v5, :cond_2

    .line 2393
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2394
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2395
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2397
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPhbStateChangedIntentRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2401
    .end local v1    # "bPhbReady":Z
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 2402
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2405
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_4
    const-string v5, "isFdnEnabled(), get telephonyEx failed!!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v2, 0x0

    .line 2147
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2148
    .local v1, "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2153
    .end local v1    # "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    :goto_0
    return v2

    .line 2149
    .restart local v1    # "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v3, v4, :cond_0

    .line 2150
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isIMSApnSettingChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4641
    .local p1, "prevApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .local p2, "currApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v0, 0x0

    .line 4642
    .local v0, "bIMSApnChanged":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getIMSApnSetting(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 4643
    .local v2, "prevIMSApn":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getIMSApnSetting(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 4645
    .local v1, "currIMSApn":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4646
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4647
    const/4 v0, 0x1

    .line 4651
    :cond_0
    return v0
.end method

.method private isOnlySingleDcAllowed(I)Z
    .locals 9
    .param p1, "rilRadioTech"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 2163
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107002f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 2165
    .local v3, "singleDcRats":[I
    const/4 v2, 0x0

    .line 2168
    .local v2, "onlySingleDcAllowed":Z
    sget-boolean v6, Lcom/android/internal/telephony/dataconnection/DcTracker;->BSP_PACKAGE:Z

    if-nez v6, :cond_0

    .line 2170
    :try_start_0
    const-class v6, Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/telephony/ITelephonyExt;

    .line 2172
    .local v4, "telExt":Lcom/mediatek/common/telephony/ITelephonyExt;
    invoke-interface {v4}, Lcom/mediatek/common/telephony/ITelephonyExt;->isOnlySingleDcAllowed()Z

    move-result v2

    .line 2174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isOnlySingleDcAllowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2176
    if-ne v2, v5, :cond_0

    .line 2211
    .end local v4    # "telExt":Lcom/mediatek/common/telephony/ITelephonyExt;
    :goto_0
    return v5

    .line 2179
    :catch_0
    move-exception v0

    .line 2180
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v6, "Fail to create or use plug-in"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 2186
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    const-string v6, "ro.mtk_gemini_support"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2187
    const-string v6, "ril.external.md"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 2191
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2193
    const-string v6, "isOnlySingleDcAllowed: external modem"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2200
    :cond_1
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_2

    const-string v5, "persist.telephony.test.singleDc"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2202
    const/4 v2, 0x1

    .line 2204
    :cond_2
    if-eqz v3, :cond_4

    .line 2205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_4

    if-nez v2, :cond_4

    .line 2206
    aget v5, v3, v1

    if-ne p1, v5, :cond_3

    const/4 v2, 0x1

    .line 2205
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2210
    .end local v1    # "i":I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isOnlySingleDcAllowed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move v5, v2

    .line 2211
    goto :goto_0
.end method

.method private isSamePhoneTypeWithPeer()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 5968
    const/4 v1, 0x0

    .line 5969
    .local v1, "peerCsPhone":Lcom/android/internal/telephony/PhoneBase;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 5970
    .local v3, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 5971
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 5972
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    .line 5973
    .local v4, "phoneId":I
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhone(Lcom/android/internal/telephony/Phone;)I

    move-result v4

    .line 5974
    if-eq v0, v4, :cond_0

    if-eqz v2, :cond_0

    .line 5975
    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getCsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .end local v1    # "peerCsPhone":Lcom/android/internal/telephony/PhoneBase;
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 5970
    .restart local v1    # "peerCsPhone":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5978
    .end local v4    # "phoneId":I
    :cond_1
    if-eqz v1, :cond_2

    .line 5979
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v7

    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    .line 5981
    :cond_2
    return v5
.end method

.method private isSameProxy(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 5
    .param p1, "apn1"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "apn2"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const/4 v2, 0x0

    .line 4765
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4785
    :cond_0
    :goto_0
    return v2

    .line 4769
    :cond_1
    const-string v3, "mms"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4770
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 4775
    .local v0, "proxy1":Ljava/lang/String;
    :goto_1
    const-string v3, "mms"

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4776
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 4781
    .local v1, "proxy2":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4782
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 4772
    .end local v0    # "proxy1":Ljava/lang/String;
    .end local v1    # "proxy2":Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .restart local v0    # "proxy1":Ljava/lang/String;
    goto :goto_1

    .line 4778
    :cond_3
    iget-object v1, p2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .restart local v1    # "proxy2":Ljava/lang/String;
    goto :goto_2

    .line 4784
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSameProxy():proxy1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",proxy2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSkipIMSorEIMSforCleanUpDataConns(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5362
    const/4 v0, 0x0

    .line 5363
    .local v0, "bRet":Z
    const-string v1, "ims"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "emergency"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5365
    :cond_0
    const-string v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pdpReset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5367
    :cond_1
    const/4 v0, 0x1

    .line 5368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5371
    :cond_2
    return v0
.end method

.method private isSupportThrottlingApn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4563
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->THROTTLING_APN_ENABLED:Z

    if-nez v2, :cond_0

    const-string v2, "ril.throttling.enabled"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 28
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1715
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1717
    .local v15, "types":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/16 v18, 0x1

    :goto_0
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v20, "profile_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const-string v21, "modem_cognitive"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/16 v21, 0x1

    :goto_1
    const-string v22, "max_conns"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string v23, "wait_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const-string v24, "max_conns_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const-string v25, "mtu"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const-string v26, "mvno_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v27, "mvno_match_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v2 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;)V

    .line 1753
    .local v2, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    return-object v2

    .line 1717
    .end local v2    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_1
    const/16 v21, 0x0

    goto :goto_1
.end method

.method private makeInitialAttachApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 5577
    const/4 v12, 0x0

    .line 5578
    .local v12, "potentialApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v10, 0x0

    .line 5579
    .local v10, "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 5580
    .local v13, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    .line 5581
    .local v11, "operator":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRAT_DcTracker] makeInitialAttachApn with operator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5582
    if-eqz v11, :cond_3

    .line 5583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5584
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRAT_DcTracker] makeInitialAttachApn: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5586
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5592
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 5593
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 5594
    invoke-direct {p0, v8, v13}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createApnListWithRecord(Landroid/database/Cursor;Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/util/ArrayList;

    move-result-object v7

    .line 5596
    .local v7, "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5598
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 5599
    .local v6, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v0, "ia"

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5600
    move-object v10, v6

    .line 5609
    .end local v6    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRAT_DcTracker] makeInitialAttachApn: iaApnSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",potentialApnSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPreferredApn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5615
    if-nez v10, :cond_2

    .line 5616
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->operatorNumericMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5620
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 5629
    .end local v7    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5632
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-object v10

    .line 5580
    .end local v11    # "operator":Ljava/lang/String;
    :cond_4
    const-string v11, ""

    goto/16 :goto_0

    .line 5602
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .restart local v7    # "apnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "operator":Ljava/lang/String;
    :cond_5
    const-string v0, "default"

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5604
    if-nez v12, :cond_0

    .line 5605
    move-object v12, v6

    goto :goto_1

    .line 5621
    .end local v6    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_6
    if-eqz v12, :cond_7

    .line 5622
    move-object v10, v12

    goto :goto_2

    .line 5624
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    check-cast v10, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .restart local v10    # "iaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    goto :goto_2
.end method

.method private mergeApns(Lcom/android/internal/telephony/dataconnection/ApnSetting;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 33
    .param p1, "dest"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "src"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 3529
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 3530
    .local v31, "resultTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3531
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    move-object/from16 v28, v0

    .local v28, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v29, 0x0

    .local v29, "i$":I
    :goto_0
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    aget-object v32, v28, v29

    .line 3532
    .local v32, "srcType":Ljava/lang/String;
    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3531
    :cond_0
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 3534
    .end local v32    # "srcType":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 3535
    .local v9, "mmsc":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 3536
    .local v10, "mmsProxy":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 3537
    .local v11, "mmsPort":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 3538
    .local v7, "proxy":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 3539
    .local v8, "port":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    const-string v3, "IPV4V6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3540
    .local v16, "protocol":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    const-string v3, "IPV4V6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 3543
    .local v17, "roamingProtocol":Ljava/lang/String;
    :goto_7
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    move/from16 v21, v0

    if-nez v21, :cond_2

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    :cond_2
    const/16 v21, 0x1

    :goto_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v2 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3534
    .end local v7    # "proxy":Ljava/lang/String;
    .end local v8    # "port":Ljava/lang/String;
    .end local v9    # "mmsc":Ljava/lang/String;
    .end local v10    # "mmsProxy":Ljava/lang/String;
    .end local v11    # "mmsPort":Ljava/lang/String;
    .end local v16    # "protocol":Ljava/lang/String;
    .end local v17    # "roamingProtocol":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    goto/16 :goto_1

    .line 3535
    .restart local v9    # "mmsc":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    goto/16 :goto_2

    .line 3536
    .restart local v10    # "mmsProxy":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    goto/16 :goto_3

    .line 3537
    .restart local v11    # "mmsPort":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    goto/16 :goto_4

    .line 3538
    .restart local v7    # "proxy":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    goto/16 :goto_5

    .line 3539
    .restart local v8    # "port":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    move-object/from16 v16, v0

    goto/16 :goto_6

    .line 3540
    .restart local v16    # "protocol":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_7

    .line 3543
    .restart local v17    # "roamingProtocol":Ljava/lang/String;
    :cond_a
    const/16 v21, 0x0

    goto :goto_8
.end method

.method private notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V
    .locals 3
    .param p1, "ddcId"    # I
    .param p2, "state"    # Lcom/android/internal/telephony/DctConstants$State;
    .param p3, "property"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p4, "failCause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .line 5214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] notifyDedicateDataConnection ddcId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", properties="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DEDICATE_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5216
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "DdcId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5217
    if-eqz p3, :cond_0

    iget v1, p3, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    if-ltz v1, :cond_0

    .line 5218
    const-string v1, "linkProperties"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5220
    :cond_0
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5221
    const-string v1, "cause"

    invoke-virtual {p4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5222
    const-string v1, "reason"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5224
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5225
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5226
    return-void
.end method

.method private notifyImsAdapterOnClearDataBearerFinished()V
    .locals 3

    .prologue
    .line 5355
    const-string v1, "notifyImsAdapterOnClearDataBearerFinished"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLEAR_DATA_BEARER_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5357
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5358
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5359
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 3
    .param p1, "lastFailCauseCode"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 2292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNoData: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2293
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2295
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    :cond_0
    return-void
.end method

.method private onAbortEnableDedicateBearer(Ljava/lang/String;I)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "ddcId"    # I

    .prologue
    .line 5020
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .line 5021
    .local v0, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->setReasonSync(Ljava/lang/String;)Ljava/lang/String;

    .line 5022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dedicate]onAbortEnableDedicateBearer: [reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ddcId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5023
    const v2, 0x4220c

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5024
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->disableDedicateBearer(Ljava/lang/String;ILandroid/os/Message;)V

    .line 5025
    return-void
.end method

.method private onApnChanged()V
    .locals 11

    .prologue
    .line 2023
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v9, v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v9, :cond_0

    .line 2025
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 2031
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    .line 2032
    .local v3, "prevAllApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2033
    .local v5, "prevPreferredApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v9, "onApnChanged: createAllApnList and set initial attach APN"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2034
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    .line 2036
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2043
    .local v7, "previousAttachApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnToStringIgnoreName(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Ljava/lang/String;

    move-result-object v6

    .line 2044
    .local v6, "prevPreferredApnString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnToStringIgnoreName(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Ljava/lang/String;

    move-result-object v1

    .line 2045
    .local v1, "curPreferredApnString":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnToStringIgnoreName(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Ljava/lang/String;

    move-result-object v4

    .line 2046
    .local v4, "prevAttachApnSettingString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnToStringIgnoreName(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Ljava/lang/String;

    move-result-object v0

    .line 2047
    .local v0, "curAttachApnSettingString":Ljava/lang/String;
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2050
    if-eqz v6, :cond_1

    if-nez v4, :cond_4

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnsToStringIgnoreName(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnsToStringIgnoreName(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2053
    const-string v9, "onApnChanged: all APN setting changed."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2067
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2068
    .local v8, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 2069
    .local v2, "operator":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 2072
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2073
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateInitialAttachApnForSvlte()V

    .line 2075
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    .line 2082
    :goto_1
    const-string v9, "onApnChanged: cleanUpAllConnections and setup connectable APN"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2083
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendOnApnChangedDone(Z)V

    .line 2084
    .end local v2    # "operator":Ljava/lang/String;
    .end local v8    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_2
    return-void

    .line 2055
    :cond_4
    sget-boolean v9, Lcom/android/internal/telephony/dataconnection/DcTracker;->MTK_IMS_SUPPORT:Z

    if-eqz v9, :cond_5

    .line 2056
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isIMSApnSettingChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2057
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendOnApnChangedDone(Z)V

    .line 2058
    const-string v9, "onApnChanged: IMS apn setting changed!!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2062
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onApnChanged: not changed, preferredApn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2068
    .restart local v8    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    const-string v2, ""

    goto :goto_0

    .line 2078
    .restart local v2    # "operator":Ljava/lang/String;
    :cond_7
    const-string v9, "onApnChanged: but no operator numeric"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onApnChangedDone()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2093
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 2094
    .local v1, "overallState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v5, :cond_3

    :cond_0
    move v0, v4

    .line 2099
    .local v0, "isDisconnected":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApnChanged: createAllApnList and cleanUpAllConnections: isDisconnected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2103
    if-nez v0, :cond_4

    :goto_1
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionsOnUpdatedApns(Z)V

    .line 2106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApnChanged: phone.getsubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getDefaultDataSubId()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2110
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    .line 2111
    .local v2, "phoneSubId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2112
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v2

    .line 2115
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 2116
    const-string v3, "apnChanged"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 2118
    :cond_2
    return-void

    .end local v0    # "isDisconnected":Z
    .end local v2    # "phoneSubId":I
    :cond_3
    move v0, v3

    .line 2094
    goto :goto_0

    .restart local v0    # "isDisconnected":Z
    :cond_4
    move v4, v3

    .line 2103
    goto :goto_1
.end method

.method private onDataConnectionAttached()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1042
    const-string v1, "onDataConnectionAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1045
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1046
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->getCurrentRat()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 1049
    const-string v1, "onDataConnectionAttached: cdma phone receive Lte attached,ignore and wait updateIccRecordAndApn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1077
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRilDataRadioTechnology(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    .line 1058
    .local v0, "targetRat":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionAttached targetRat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1060
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateIccRecordAndApn(II)V

    .line 1063
    .end local v0    # "targetRat":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1064
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_3

    .line 1065
    const-string v1, "onDataConnectionAttached: start polling notify attached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 1067
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 1068
    const-string v1, "dataAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1073
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    if-eqz v1, :cond_2

    .line 1074
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    .line 1076
    :cond_2
    const-string v1, "dataAttached"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    :cond_3
    const-string v1, "dataAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized onDedicateBearerDeactivatedByNetwork(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 5109
    monitor-enter p0

    :try_start_0
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v0, v8

    check-cast v0, [I

    move-object v5, v0

    .line 5110
    .local v5, "ints":[I
    const/4 v8, 0x0

    aget v1, v5, v8

    .line 5111
    .local v1, "cid":I
    const/4 v3, -0x1

    .line 5112
    .local v3, "ddcId":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 5113
    .local v6, "key":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->getCidSync()I

    move-result v8

    if-ne v8, v1, :cond_0

    .line 5114
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5119
    .end local v6    # "key":Ljava/lang/Integer;
    :cond_1
    if-ltz v3, :cond_2

    .line 5120
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNWLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5121
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNW:Z

    .line 5122
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5123
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .line 5124
    .local v2, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    const-string v9, "deactivate by network"

    invoke-virtual {v8, v9}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->setReasonSync(Ljava/lang/String;)Ljava/lang/String;

    .line 5125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[dedicate]onDedicateBearerDeactivatedByNetwork: [cid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ddcId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5126
    const v8, 0x42203

    invoke-virtual {p0, v8, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 5127
    .local v7, "msg":Landroid/os/Message;
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v8

    invoke-virtual {v8, v3, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->disconnectDedicateBearer(ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5131
    .end local v2    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .end local v7    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit p0

    return-void

    .line 5122
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5109
    .end local v1    # "cid":I
    .end local v3    # "ddcId":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "ints":[I
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 5129
    .restart local v1    # "cid":I
    .restart local v3    # "ddcId":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "ints":[I
    :cond_2
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[dedicate]onDedicateBearerDeactivatedByNetwork but no match DedicateDataConnection found [cid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method private declared-synchronized onDedicateBearerUpdatedByNetwork(Landroid/os/AsyncResult;)V
    .locals 18
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 5044
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/mediatek/internal/telephony/DedicateDataCallState;

    .line 5045
    .local v7, "dedicateDataCallState":Lcom/mediatek/internal/telephony/DedicateDataCallState;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[dedicate]onDedicateBearerUpdatedByNetwork ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Lcom/mediatek/internal/telephony/DedicateDataCallState;->cid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Lcom/mediatek/internal/telephony/DedicateDataCallState;->interfaceId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5046
    const/4 v11, 0x0

    .line 5047
    .local v11, "isBearerAlreadyActivated":Z
    iget v2, v7, Lcom/mediatek/internal/telephony/DedicateDataCallState;->cid:I

    .line 5049
    .local v2, "cid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNWLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5050
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNW:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v14, :cond_0

    .line 5052
    :try_start_2
    const-string v14, "One dedicate bearer is deactivating now, wait for it"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5053
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNWLock:Ljava/lang/Object;

    const-wide/16 v16, 0x7d0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 5054
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNW:Z

    if-eqz v14, :cond_0

    .line 5055
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNW:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5061
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5063
    const/4 v3, 0x0

    .line 5064
    .local v3, "currentDdcac":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    .line 5065
    .local v6, "ddcac":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->getBearerPropertiesSync()Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v13

    .line 5066
    .local v13, "property":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    iget v14, v13, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->cid:I

    if-ne v14, v2, :cond_1

    .line 5067
    const/4 v11, 0x1

    .line 5068
    move-object v3, v6

    .line 5073
    .end local v6    # "ddcac":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;
    .end local v13    # "property":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    :cond_2
    const/4 v5, 0x0

    .line 5074
    .local v5, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    const/4 v4, 0x0

    .line 5075
    .local v4, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v12

    .line 5077
    .local v12, "msg":Landroid/os/Message;
    if-eqz v11, :cond_5

    .line 5078
    const-string v14, "[dedicate]onDedicateBearerUpdatedByNetwork: and the bearer is already activated before"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5079
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 5080
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 5081
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    check-cast v5, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .line 5082
    .restart local v5    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v4

    .line 5086
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;>;"
    :cond_4
    const v14, 0x42204

    iput v14, v12, Landroid/os/Message;->what:I

    .line 5087
    if-nez v5, :cond_8

    .line 5088
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "onDedicateBearerUpdatedByNetwork no DedicateDataConnection found"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5044
    .end local v2    # "cid":I
    .end local v3    # "currentDdcac":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;
    .end local v4    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v5    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .end local v7    # "dedicateDataCallState":Lcom/mediatek/internal/telephony/DedicateDataCallState;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "isBearerAlreadyActivated":Z
    .end local v12    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 5057
    .restart local v2    # "cid":I
    .restart local v7    # "dedicateDataCallState":Lcom/mediatek/internal/telephony/DedicateDataCallState;
    .restart local v11    # "isBearerAlreadyActivated":Z
    :catch_0
    move-exception v8

    .line 5058
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v14, "happen InterruptedException"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5061
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v14

    .line 5090
    .restart local v3    # "currentDdcac":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;
    .restart local v4    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .restart local v5    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "msg":Landroid/os/Message;
    :cond_5
    const-string v14, "[dedicate]onDedicateBearerUpdatedByNetwork: and the bearer is not activated before"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5091
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getFreeDedicateDataConnection()Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    move-result-object v5

    .line 5092
    if-nez v5, :cond_6

    .line 5093
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDedicateDataConnection()Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    move-result-object v5

    .line 5095
    :cond_6
    if-nez v5, :cond_7

    .line 5096
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "onDedicateBearerUpdatedByNetwork is not found and not created"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 5098
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    iget v15, v7, Lcom/mediatek/internal/telephony/DedicateDataCallState;->interfaceId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 5099
    .restart local v4    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v5, v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 5101
    const v14, 0x42202

    iput v14, v12, Landroid/os/Message;->what:I

    .line 5104
    :cond_8
    iput-object v5, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5105
    invoke-virtual {v4, v5, v7, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateDedicateBearer(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateDataCallState;Landroid/os/Message;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5106
    monitor-exit p0

    return-void
.end method

.method private onDisableDedicateBearer(Ljava/lang/String;I)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "ddcId"    # I

    .prologue
    .line 5002
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .line 5003
    .local v0, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->setReasonSync(Ljava/lang/String;)Ljava/lang/String;

    .line 5004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dedicate]onDisableDedicateBearer: [reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ddcId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5005
    const v2, 0x42203

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5006
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getDataConnection()Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->disableDedicateBearer(Ljava/lang/String;ILandroid/os/Message;)V

    .line 5007
    return-void
.end method

.method private onEnableDedicateBearer(Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;)V
    .locals 10
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    .prologue
    .line 4982
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->apnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4983
    .local v6, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 4984
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v8

    .line 4985
    .local v8, "dcId":I
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 4986
    .local v7, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getCidSync()I

    move-result v0

    iput v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->interfaceId:I

    .line 4987
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->ddc:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-virtual {v0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 4989
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 4990
    .local v9, "msg":Landroid/os/Message;
    const v0, 0x42202

    iput v0, v9, Landroid/os/Message;->what:I

    .line 4991
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->ddc:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dedicate]onEnableDedicateBearer: interfaceId is ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->interfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4994
    invoke-virtual {v7, p1, v9}, Lcom/android/internal/telephony/dataconnection/DataConnection;->enableDedicateBearer(Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V

    .line 4999
    .end local v7    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v8    # "dcId":I
    .end local v9    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 4996
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dedicate]onEnableDedicateBearer failed since default bearer is not activated ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->apnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 4997
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->ddc:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getId()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "activation"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onFdnChanged()V
    .locals 5

    .prologue
    .line 2412
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isFdnEnableSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2413
    const-string v3, "onFdnChanged()"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2414
    const/4 v0, 0x0

    .line 2416
    .local v0, "bFdnEnabled":Z
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 2418
    .local v2, "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    .line 2420
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isFdnEnabled(I)Z

    move-result v0

    .line 2421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFdnChanged(), bFdnEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2429
    :goto_0
    if-eqz v0, :cond_1

    .line 2430
    const-string v3, "fdn enabled, call cleanOrSetupDataConnByCheckFdn()"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2431
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWorkerHandler:Landroid/os/Handler;

    const v4, 0x421fc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2439
    .end local v0    # "bFdnEnabled":Z
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :goto_1
    return-void

    .line 2422
    .restart local v0    # "bFdnEnabled":Z
    .restart local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v1

    .line 2423
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2426
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    const-string v3, "onFdnChanged(), get telephonyEx failed!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2433
    :cond_1
    const-string v3, "fdn disabled, call setupDataOnConnectableApns()"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2434
    const-string v3, "FdnDisabled"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_1

    .line 2437
    .end local v0    # "bFdnEnabled":Z
    .end local v2    # "telephonyEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_2
    const-string v3, "not support fdn enabled, skip onFdnChanged"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onIratDataRatChanged(II)V
    .locals 2
    .param p1, "sourceRat"    # I
    .param p2, "targetRat"    # I

    .prologue
    .line 5407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRAT_DcTracker] onIratDataRatChanged: mIsDuringIrat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDuringIrat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sourceRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5412
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDuringIrat:Z

    if-eqz v0, :cond_0

    .line 5413
    const-string v0, "[IRAT_DcTracker] Ignore RAT change during IRAT."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5448
    :goto_0
    return-void

    .line 5417
    :cond_0
    if-nez p2, :cond_1

    .line 5418
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreRilRat:I

    .line 5419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MD_IRAT_DcTracker] De-register on C2K/LTE network, mPreRilRat + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreRilRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5420
    :cond_1
    if-nez p1, :cond_4

    .line 5421
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreRilRat:I

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCdmaFallbackCase(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5422
    const-string v0, "[MD_IRAT_DcTracker] Fallback happens with unknown ril rat."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5425
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreRilRat:I

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleCdmaFallback(II)V

    goto :goto_0

    .line 5427
    :cond_2
    const-string v0, "[MD_IRAT_DcTracker] First register on C2K/LTE network."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5429
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updatePhoneIfNeeded(Lcom/android/internal/telephony/PhoneBase;)V

    .line 5432
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5435
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5437
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateIccRecordAndApn(II)V

    .line 5438
    const-string v0, "nwTypeChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0

    .line 5440
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCdmaFallbackCase(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5441
    const-string v0, "[MD_IRAT_DcTracker] Fallback happens."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5442
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleCdmaFallback(II)V

    goto :goto_0

    .line 5444
    :cond_5
    const-string v0, "[MD_IRAT_DcTracker] Normal data RAT change."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5445
    const-string v0, "nwTypeChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 5446
    const-string v0, "CdmaIratEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onLteRecordsLoaded()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 5534
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDuringIrat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5535
    const-string v0, "onLteRecordsLoaded setInitialApn: but isDuringIrat."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingLteRecordLoaded:Z

    .line 5574
    :goto_0
    return-void

    .line 5540
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 5541
    .local v9, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 5542
    .local v6, "operatorNumeric":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRAT_DcTracker] onLteRecordsLoaded: operatorNumeric = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5543
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 5544
    :cond_1
    const-string v0, "onLteRecordsLoaded setInitialApn: but no operator numeric"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5541
    .end local v6    # "operatorNumeric":Ljava/lang/String;
    :cond_2
    const-string v6, ""

    goto :goto_1

    .line 5548
    .restart local v6    # "operatorNumeric":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeInitialAttachApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 5549
    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSvlteOperatorNumeric:Ljava/lang/String;

    .line 5550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRAT_DcTracker] onLteRecordsLoaded: mInitialAttachApnSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5552
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_5

    .line 5553
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSvlteIaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 5554
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v10, "ims"

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v7

    invoke-interface/range {v0 .. v8}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    .line 5573
    :cond_4
    :goto_2
    const-string v0, "simLoaded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5564
    :cond_5
    const-string v0, "[IRAT_DcTracker] onLteRecordsLoaded: There in no available apn, use empty"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5565
    if-eqz v6, :cond_4

    .line 5566
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v0

    const-string v1, ""

    const-string v2, "IPV4V6"

    const/4 v3, -0x1

    const-string v4, ""

    const-string v5, ""

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v8}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    goto :goto_2
.end method

.method private onModifyDedicateBearer(Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    .prologue
    .line 5011
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5012
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x42204

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5013
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->ddc:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5014
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;->ddc:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-virtual {v1, p1, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->modify(Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V

    .line 5015
    return-void
.end method

.method private onPcscfDiscovery(Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;)V
    .locals 9
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;

    .prologue
    .line 5028
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;->apnType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 5029
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v4, v5, :cond_1

    .line 5030
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    .line 5031
    .local v2, "dcAsyncChannel":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v2, :cond_0

    .line 5032
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v3

    .line 5033
    .local v3, "dcId":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 5034
    .local v1, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget v4, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;->cid:I

    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;->onCompleteMsg:Landroid/os/Message;

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->pcscfDiscovery(ILandroid/os/Message;)V

    .line 5041
    .end local v1    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v2    # "dcAsyncChannel":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v3    # "dcId":I
    :cond_0
    :goto_0
    return-void

    .line 5037
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dedicate]onPcscfDiscovery but APN is not connected ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;->apnType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 5038
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;->onCompleteMsg:Landroid/os/Message;

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "P-CSCF discovery but APN is not connected ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;->apnType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 5039
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;->onCompleteMsg:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private onRecordsLoaded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2300
    const-string v1, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2301
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    .line 2305
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFdMgr:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    if-eqz v1, :cond_0

    .line 2306
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFdMgr:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->disableFdWhenTethering()V

    .line 2309
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCctSmRetry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2310
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setRemoveRestrictEutranMode(ZLandroid/os/Message;)V

    .line 2311
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    invoke-interface {v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setDataOnToMD(ZLandroid/os/Message;)V

    .line 2315
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsFdnChecked:Z

    .line 2317
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    .line 2318
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    .line 2322
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2323
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateInitialAttachApnForSvlte()V

    .line 2325
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    .line 2326
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2327
    const-string v1, "onRecordsLoaded: notifying data availability"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2328
    const-string v1, "simLoaded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2331
    :cond_3
    const/4 v0, 0x1

    .line 2344
    .local v0, "bGetDataCallList":Z
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 2345
    const/4 v0, 0x0

    .line 2349
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSetupDataBlocked:Z

    if-eqz v1, :cond_5

    .line 2351
    const/4 v0, 0x0

    .line 2355
    :cond_5
    if-eqz v0, :cond_6

    .line 2356
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcController;->getDataCallListForSimLoaded()V

    .line 2361
    :goto_0
    return-void

    .line 2358
    :cond_6
    const v1, 0x421f8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private operatorNumericMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "operNumeric"    # Ljava/lang/String;
    .param p3, "otherOperNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5639
    const/4 v0, 0x0

    .line 5640
    .local v0, "matched":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5642
    :cond_0
    const/4 v0, 0x0

    .line 5658
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IRAT_DcTracker] operatorNumericMatches: matched = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5659
    return v0

    .line 5643
    :cond_2
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5644
    const/4 v0, 0x1

    goto :goto_0

    .line 5645
    :cond_3
    const-string v3, "ctnet"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5647
    const-string v3, "46011"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "46003"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5649
    :cond_4
    const-string v3, "46011"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "46003"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_5
    move v0, v2

    .line 5652
    :cond_6
    :goto_1
    const-string v3, "45507"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "45502"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5654
    :cond_7
    const-string v3, "45507"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "45502"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_8
    move v0, v2

    :goto_2
    goto :goto_0

    :cond_9
    move v0, v1

    .line 5649
    goto :goto_1

    :cond_a
    move v0, v1

    .line 5654
    goto :goto_2
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 1647
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1648
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 1649
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 1653
    :goto_0
    return-object v0

    .line 1651
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method private registerForCallEvents(Lcom/android/internal/telephony/CallTracker;II)V
    .locals 1
    .param p1, "ct"    # Lcom/android/internal/telephony/CallTracker;
    .param p2, "callStartEvent"    # I
    .param p3, "callEndEvent"    # I

    .prologue
    const/4 v0, 0x0

    .line 5996
    if-eqz p1, :cond_0

    .line 5997
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5998
    invoke-virtual {p1, p0, p3, v0}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 6000
    :cond_0
    return-void
.end method

.method private registerForEventsAfterPhoneCreated()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5752
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForVoiceCallEventPeer()V

    .line 5753
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5754
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v1

    .line 5755
    .local v1, "svltePhoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getIratController()Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    .line 5756
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    const v3, 0x45000

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->registerForRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5758
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->addOnIratEventListener(Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;)V

    .line 5760
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getIratDataSwitchHelper()Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    .line 5761
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    const v3, 0x42010

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5763
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    const v3, 0x42009

    invoke-virtual {v2, p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5765
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForVoiceCallEventSvlte()V

    .line 5768
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 5769
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x4220d

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForRemoveRestrictEutran(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5771
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x4220f

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForResetAttachApn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 5773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IRAT_DcTracker] registerForEventsAfterPhoneCreated: mIratController = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIratDataSwitchHelper = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5777
    .end local v0    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v1    # "svltePhoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    :cond_0
    return-void
.end method

.method private registerForVoiceCallEventPeer()V
    .locals 11

    .prologue
    const v10, 0x421fa

    const v9, 0x421f9

    .line 6024
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6025
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    .line 6026
    .local v6, "phoneCount":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    .line 6027
    .local v7, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6028
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhone(Lcom/android/internal/telephony/Phone;)I

    move-result v7

    .line 6030
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 6031
    if-eq v3, v7, :cond_1

    .line 6032
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 6033
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v5, :cond_1

    .line 6034
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6037
    const-string v8, "Register both side for csPhone update"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 6038
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    .line 6040
    .local v2, "gsmCallTracker":Lcom/android/internal/telephony/CallTracker;
    invoke-direct {p0, v2, v9, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForCallEvents(Lcom/android/internal/telephony/CallTracker;II)V

    .line 6044
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    .line 6046
    .local v0, "cdmaCallTracker":Lcom/android/internal/telephony/CallTracker;
    invoke-direct {p0, v0, v9, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForCallEvents(Lcom/android/internal/telephony/CallTracker;II)V

    .line 6030
    .end local v0    # "cdmaCallTracker":Lcom/android/internal/telephony/CallTracker;
    .end local v2    # "gsmCallTracker":Lcom/android/internal/telephony/CallTracker;
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6050
    .restart local v5    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .line 6051
    .local v4, "pb":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    .line 6052
    .local v1, "ct":Lcom/android/internal/telephony/CallTracker;
    invoke-direct {p0, v1, v9, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForCallEvents(Lcom/android/internal/telephony/CallTracker;II)V

    goto :goto_1

    .line 6059
    .end local v1    # "ct":Lcom/android/internal/telephony/CallTracker;
    .end local v3    # "i":I
    .end local v4    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "phoneCount":I
    .end local v7    # "phoneId":I
    :cond_3
    return-void
.end method

.method private registerForVoiceCallEventSvlte()V
    .locals 3

    .prologue
    .line 5985
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    .line 5986
    .local v0, "ct":Lcom/android/internal/telephony/CallTracker;
    const v1, 0x42007

    const v2, 0x42008

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForCallEvents(Lcom/android/internal/telephony/CallTracker;II)V

    .line 5988
    return-void
.end method

.method private resetDcAndApnContext()V
    .locals 4

    .prologue
    .line 5740
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 5741
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IRAT_DcTracker] resetDcAndApnContext: apnContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5744
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->reqReset()V

    .line 5745
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 5746
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    goto :goto_0

    .line 5749
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    return-void
.end method

.method private retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 2239
    const/4 v1, 0x1

    .line 2240
    .local v1, "retry":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 2242
    .local v0, "reason":Ljava/lang/String;
    const-string v2, "radioTurnedOff"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "FdnEnabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2246
    :cond_0
    const/4 v1, 0x0

    .line 2248
    :cond_1
    return v1
.end method

.method private sendOnApnChangedDone(Z)V
    .locals 2
    .param p1, "bImsApnChanged"    # Z

    .prologue
    .line 2087
    const v1, 0x421f7

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2088
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2089
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2090
    return-void

    .line 2088
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPreferredApn(I)V
    .locals 9
    .param p1, "pos"    # I

    .prologue
    const/4 v8, 0x0

    .line 3717
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-nez v5, :cond_1

    .line 3718
    const-string v5, "setPreferredApn: X !canSEtPreferApn"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3744
    :cond_0
    :goto_0
    return-void

    .line 3722
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v2

    .line 3723
    .local v2, "subId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3726
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 3727
    .local v0, "dataNetworkType":I
    const/16 v5, 0xe

    if-ne v0, v5, :cond_2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcSubId(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3729
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotIdbySubId(I)I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcSubId(I)I

    move-result v2

    .line 3730
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferredApn: ehrpd network record by subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3733
    .end local v0    # "dataNetworkType":I
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3734
    .local v3, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferredApn: delete subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3735
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3736
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, v3, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3738
    if-ltz p1, :cond_0

    .line 3739
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferredApn: insert pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",subId ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3740
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3741
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3742
    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method private setRadio(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 576
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 578
    .local v0, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z
    .locals 30
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "radioTech"    # I

    .prologue
    .line 1854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupData: apnContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1856
    const/4 v3, 0x0

    .line 1858
    .local v3, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getNextWaitingApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v19

    .line 1859
    .local v19, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-nez v19, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "emergency"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1860
    const-string v4, "setupData: return for no apn found!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1861
    const/4 v4, 0x0

    .line 2016
    :goto_0
    return v4

    .line 1864
    :cond_0
    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 1865
    .local v6, "profileId":I
    if-nez v6, :cond_1

    .line 1866
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v6

    .line 1873
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dun"

    if-ne v4, v5, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1875
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v3

    .line 1876
    if-eqz v3, :cond_3

    .line 1878
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getApnSettingSync()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v23

    .line 1879
    .local v23, "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v23, :cond_3

    .line 1881
    move-object/from16 v19, v23

    .line 1885
    .end local v23    # "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_3
    if-nez v3, :cond_11

    .line 1886
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1887
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1889
    const-string v4, "setupData: Higher priority ApnContext active.  Ignoring call"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1891
    const/4 v4, 0x0

    goto :goto_0

    .line 1897
    :cond_4
    const/4 v4, 0x1

    const-string v5, "SinglePdnArbitration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1901
    const-string v4, "setupData: Some calls are disconnecting first.  Wait and retry"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1902
    const/4 v4, 0x0

    goto :goto_0

    .line 1906
    :cond_5
    const-string v4, "setupData: Single pdp. Continue setting up data call."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1910
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isSupportThrottlingApn()Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1911
    const/16 v25, 0x0

    .line 1912
    .local v25, "isHighThroughputApn":Z
    sget-object v20, Lcom/android/internal/telephony/dataconnection/DcTracker;->HIGH_THROUGHPUT_APN:[Ljava/lang/String;

    .local v20, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    aget-object v18, v20, v24

    .line 1913
    .local v18, "apn":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1914
    const/16 v25, 0x1

    .line 1919
    .end local v18    # "apn":Ljava/lang/String;
    :cond_7
    if-nez v25, :cond_c

    .line 1920
    const/16 v26, 0x0

    .line 1921
    .local v26, "lastDcAlreadyInUse":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1922
    .local v21, "asyncChannel":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPdpConnectionPoolSize()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 1923
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isInactiveSync()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1925
    const-string v4, "find the last data connection for non-high-throughput apn"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1926
    move-object/from16 v3, v21

    .line 1929
    const-string v4, "setupData: tearDownAll is executed on un-used dcac"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1931
    const-string v4, "No connection"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 1912
    .end local v21    # "asyncChannel":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v26    # "lastDcAlreadyInUse":Z
    .restart local v18    # "apn":Ljava/lang/String;
    .local v24, "i$":I
    :cond_9
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 1933
    .end local v18    # "apn":Ljava/lang/String;
    .restart local v21    # "asyncChannel":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .local v24, "i$":Ljava/util/Iterator;
    .restart local v26    # "lastDcAlreadyInUse":Z
    :cond_a
    const-string v4, "the last data connection is already in-use"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1934
    const/16 v26, 0x1

    goto :goto_2

    .line 1938
    .end local v21    # "asyncChannel":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_b
    if-nez v3, :cond_c

    if-nez v26, :cond_c

    .line 1939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPdpConnectionPoolSize()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0, v7, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v22

    .line 1941
    .local v22, "conn":Lcom/android/internal/telephony/dataconnection/DataConnection;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPdpConnectionPoolSize()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .end local v3    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const-string v4, "DCT"

    move-object/from16 v0, v22

    invoke-direct {v3, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 1943
    .restart local v3    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v29

    .line 1944
    .local v29, "status":I
    if-nez v29, :cond_10

    .line 1945
    const-string v4, "create the last data connection"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v22    # "conn":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "isHighThroughputApn":Z
    .end local v26    # "lastDcAlreadyInUse":Z
    .end local v27    # "len$":I
    .end local v29    # "status":I
    :cond_c
    :goto_3
    if-nez v3, :cond_d

    .line 1956
    const-string v4, "setupData: No ready DataConnection found!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1959
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->findFreeDataConnection(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v3

    .line 1964
    :cond_d
    if-nez v3, :cond_e

    .line 1965
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    if-ne v4, v5, :cond_e

    .line 1966
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v28

    .line 1968
    .local v28, "prevDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isInactiveSync()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1969
    move-object/from16 v3, v28

    .line 1970
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getApnSettingSync()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v23

    .line 1971
    .restart local v23    # "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupData: reuse previous DCAC: dcacApnSetting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1973
    if-eqz v23, :cond_e

    .line 1975
    move-object/from16 v19, v23

    .line 1981
    .end local v23    # "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v28    # "prevDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_e
    if-nez v3, :cond_f

    .line 1982
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataConnection(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v3

    .line 1985
    :cond_f
    if-nez v3, :cond_11

    .line 1986
    const-string v4, "setupData: No free DataConnection and couldn\'t create one, WEIRD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1987
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1948
    .restart local v20    # "arr$":[Ljava/lang/String;
    .restart local v22    # "conn":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v25    # "isHighThroughputApn":Z
    .restart local v26    # "lastDcAlreadyInUse":Z
    .restart local v27    # "len$":I
    .restart local v29    # "status":I
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDataConnection (last): Could not connect to dcac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1990
    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v22    # "conn":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "isHighThroughputApn":Z
    .end local v26    # "lastDcAlreadyInUse":Z
    .end local v27    # "len$":I
    .end local v29    # "status":I
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupData: dcac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1993
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 1994
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 1995
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleApnConflict(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2000
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2004
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 2005
    .local v9, "msg":Landroid/os/Message;
    const v4, 0x42000

    iput v4, v9, Landroid/os/Message;->what:I

    .line 2006
    move-object/from16 v0, p1

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2008
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDefaultBearerConfig()Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    move-result-object v4

    iget v4, v4, Lcom/mediatek/internal/telephony/DefaultBearerConfig;->mIsValid:I

    if-nez v4, :cond_13

    .line 2009
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getInitialMaxRetry()I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V

    .line 2015
    :goto_4
    const-string v4, "setupData: initing!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2016
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 2012
    :cond_13
    const-string v4, "VoLTE default bearer activation!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2013
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getInitialMaxRetry()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDefaultBearerConfig()Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    move/from16 v16, v0

    move-object v10, v3

    move-object/from16 v11, p1

    move v13, v6

    move/from16 v14, p2

    move-object/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILcom/mediatek/internal/telephony/DefaultBearerConfig;ZLandroid/os/Message;)V

    goto :goto_4
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1199
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 1200
    return-void
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryFailures"    # Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    .prologue
    .line 1203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupDataOnConnectableApns: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1204
    const/4 v4, 0x0

    .line 1207
    .local v4, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSetupDataBlocked:Z

    if-eqz v5, :cond_1

    .line 1209
    const-string v5, "DO NOT setup data until clean up finished for IRAT."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1261
    :cond_0
    return-void

    .line 1214
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1215
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const-string v5, "ims"

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "emergency"

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1218
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupDataOnConnectableApns: ignore apnContext "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1220
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupDataOnConnectableApns: apnContext "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_5

    .line 1222
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    if-ne p2, v5, :cond_7

    .line 1223
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1241
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1242
    const-string v5, "setupDataOnConnectableApns: isConnectable() call trySetupData"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1245
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "CdmaFallbackHappened"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_6

    .line 1248
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    .line 1249
    .local v3, "radioTech":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupDataOnConnectableApns: rebuild waitingApn radioTech = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1252
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1253
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 1256
    .end local v3    # "radioTech":I
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1257
    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z

    goto/16 :goto_0

    .line 1224
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1227
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    goto :goto_1

    .line 1230
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    .line 1231
    .restart local v3    # "radioTech":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getOriginalWaitingApns()Ljava/util/ArrayList;

    move-result-object v2

    .line 1232
    .local v2, "originalApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1233
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1234
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_9

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1236
    :cond_9
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    goto/16 :goto_1
.end method

.method private startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 10
    .param p1, "delay"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 2252
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 2254
    .local v1, "apnType":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.internal.telephony.data-reconnect."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2255
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "reconnect_alarm_extra_reason"

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2256
    const-string v4, "reconnect_alarm_extra_type"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2258
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    .line 2259
    .local v3, "subId":I
    const-string v4, "subscription"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAlarmForReconnect: delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2266
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2268
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    .line 2269
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2271
    return-void
.end method

.method private startAlarmForRestartTrySetup(ILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 10
    .param p1, "delay"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 2274
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 2275
    .local v1, "apnType":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.internal.telephony.data-restart-trysetup."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2276
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "restart_trysetup_alarm_extra_type"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2277
    const-string v3, "subscription"

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getSubId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAlarmForRestartTrySetup: delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2283
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2285
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    .line 2286
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2288
    return-void
.end method

.method private teardownForDun()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1616
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 1617
    .local v0, "rilRat":I
    invoke-static {v0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1619
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 1
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1264
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/util/ArrayList;)Z
    .locals 20
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1268
    .local p2, "waitingApns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    .line 1271
    .local v9, "apnType":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "trySetupData for type:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " due to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " apnContext="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1273
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "trySetupData with mIsPsRestricted="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1277
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSetupDataBlocked:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1279
    const-string v17, "DO NOT setup data until clean up finished for IRAT."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1280
    const/4 v15, 0x0

    .line 1411
    :goto_0
    return v15

    .line 1283
    :cond_0
    sget-boolean v17, Lcom/android/internal/telephony/dataconnection/DcTracker;->MTK_IMS_SUPPORT:Z

    if-eqz v17, :cond_3

    sget-boolean v17, Lcom/android/internal/telephony/dataconnection/DcTracker;->TC1_FEATURE:Z

    if-eqz v17, :cond_3

    .line 1284
    const-string v17, "emergency"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1285
    .local v10, "bIsEmergency":Z
    const/4 v4, 0x0

    .line 1286
    .local v4, "isValid":I
    if-eqz v10, :cond_4

    const/4 v6, 0x1

    .line 1287
    .local v6, "emergency_ind":I
    :goto_1
    const/4 v7, 0x0

    .line 1288
    .local v7, "pcscf_discovery_flag":I
    const/4 v8, 0x0

    .line 1289
    .local v8, "signaling_flag":I
    new-instance v5, Lcom/mediatek/internal/telephony/QosStatus;

    invoke-direct {v5}, Lcom/mediatek/internal/telephony/QosStatus;-><init>()V

    .line 1290
    .local v5, "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    if-nez v10, :cond_1

    const-string v17, "ims"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1291
    :cond_1
    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/QosStatus;->reset()V

    .line 1292
    const/16 v17, 0x5

    move/from16 v0, v17

    iput v0, v5, Lcom/mediatek/internal/telephony/QosStatus;->qci:I

    .line 1293
    const/4 v4, 0x1

    .line 1294
    const/4 v7, 0x1

    .line 1295
    const/4 v8, 0x1

    .line 1297
    :cond_2
    new-instance v3, Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/internal/telephony/DefaultBearerConfig;-><init>(ILcom/mediatek/internal/telephony/QosStatus;III)V

    .line 1299
    .local v3, "defaultBearerConfig":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDefaultBearerConfig(Lcom/mediatek/internal/telephony/DefaultBearerConfig;)V

    .line 1302
    .end local v3    # "defaultBearerConfig":Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    .end local v4    # "isValid":I
    .end local v5    # "qosStatus":Lcom/mediatek/internal/telephony/QosStatus;
    .end local v6    # "emergency_ind":I
    .end local v7    # "pcscf_discovery_flag":I
    .end local v8    # "signaling_flag":I
    .end local v10    # "bIsEmergency":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 1305
    sget-object v17, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v17, "trySetupData: X We\'re on the simulator; assuming connected retValue=true"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1309
    const/4 v15, 0x1

    goto :goto_0

    .line 1286
    .restart local v4    # "isValid":I
    .restart local v10    # "bIsEmergency":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 1312
    .end local v4    # "isValid":I
    .end local v10    # "bIsEmergency":Z
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1313
    const-string v17, "ims"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "emergency"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1314
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "trySetupData:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " is DISCONNECTING, but no trun on reactive flag."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1324
    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "emergency"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1325
    .local v13, "isEmergencyApn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v16

    .line 1326
    .local v16, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v12

    .line 1327
    .local v12, "desiredPowerState":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ims"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    const/4 v11, 0x1

    .line 1331
    .local v11, "checkUserDataEnabled":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v17

    if-eqz v17, :cond_10

    if-nez v13, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAnyDataEnabled(Z)Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isEmergency()Z

    move-result v17

    if-nez v17, :cond_10

    .line 1334
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1335
    const-string v17, "trySetupData: make a FAILED ApnContext IDLE so its reusable"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1336
    sget-object v17, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1338
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v14

    .line 1339
    .local v14, "radioTech":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    .line 1340
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "mms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 1344
    :cond_a
    if-nez p2, :cond_b

    .line 1345
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1348
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1349
    sget-object v17, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1350
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1351
    const-string v17, "trySetupData: X No APN found retValue=false"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1352
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1316
    .end local v11    # "checkUserDataEnabled":Z
    .end local v12    # "desiredPowerState":Z
    .end local v13    # "isEmergencyApn":Z
    .end local v14    # "radioTech":I
    .end local v16    # "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "trySetupData:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " is DISCONNECTING, trun on reactive flag."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1327
    .restart local v12    # "desiredPowerState":Z
    .restart local v13    # "isEmergencyApn":Z
    .restart local v16    # "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1354
    .restart local v11    # "checkUserDataEnabled":Z
    .restart local v14    # "radioTech":I
    :cond_e
    invoke-virtual/range {p1 .. p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 1356
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "trySetupData: Create from mAllApnSettings : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1363
    :cond_f
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "trySetupData: call setupData, waitingApns : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1366
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    move-result v15

    .line 1367
    .local v15, "retValue":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1369
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "trySetupData: X retValue="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1372
    .end local v14    # "radioTech":I
    .end local v15    # "retValue":Z
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "default"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 1375
    const-string v17, "emergency"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1377
    const-string v17, "emergency apn try setupData anyway"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1378
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "apnContext: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v14

    .line 1382
    .restart local v14    # "radioTech":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "radioTech: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1384
    if-nez p2, :cond_11

    .line 1385
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1387
    :cond_11
    invoke-virtual/range {p1 .. p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 1389
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    move-result v15

    .line 1390
    .restart local v15    # "retValue":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1392
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "trySetupData: X retValue="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1395
    .end local v14    # "radioTech":I
    .end local v15    # "retValue":Z
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "mms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v17

    if-nez v17, :cond_14

    .line 1398
    const-string v17, "Wait for attach"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1400
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1401
    sget-object v17, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1403
    :cond_13
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1405
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1410
    const-string v17, "trySetupData: X apnContext not \'ready\' retValue=false"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1411
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private unregisterCallEvents(Lcom/android/internal/telephony/CallTracker;)V
    .locals 0
    .param p1, "ct"    # Lcom/android/internal/telephony/CallTracker;

    .prologue
    .line 6003
    if-eqz p1, :cond_0

    .line 6004
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 6005
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 6007
    :cond_0
    return-void
.end method

.method private unregisterForEventsAfterPhoneCreated()V
    .locals 4

    .prologue
    .line 5780
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForVoiceCallEventPeer()V

    .line 5781
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5782
    const-string v2, "[IRAT_DcTracker] unregisterForEventsAfterPhoneCreated."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5783
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->unregisterForRatChanged(Landroid/os/Handler;)V

    .line 5784
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratController:Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratController;->removeOnIratEventListener(Lcom/mediatek/internal/telephony/ltedc/svlte/IratController$OnIratEventListener;)V

    .line 5786
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 5787
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIratDataSwitchHelper:Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;

    invoke-virtual {v2, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/IratDataSwitchHelper;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 5789
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 5791
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRemoveRestrictEutran(Landroid/os/Handler;)V

    .line 5792
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForResetAttachApn(Landroid/os/Handler;)V

    .line 5794
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 5795
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 5796
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 5797
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5800
    .end local v0    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    return-void
.end method

.method private unregisterForVoiceCallEventPeer()V
    .locals 9

    .prologue
    .line 6062
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6063
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    .line 6064
    .local v6, "phoneCount":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    .line 6065
    .local v7, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 6066
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhone(Lcom/android/internal/telephony/Phone;)I

    move-result v7

    .line 6068
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 6069
    if-eq v3, v7, :cond_1

    .line 6070
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 6071
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v5, :cond_1

    .line 6072
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6073
    const-string v8, "Unregister both side for csPhone update"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 6074
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    .line 6076
    .local v2, "gsmCallTracker":Lcom/android/internal/telephony/CallTracker;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterCallEvents(Lcom/android/internal/telephony/CallTracker;)V

    .line 6078
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    .line 6080
    .local v0, "cdmaCallTracker":Lcom/android/internal/telephony/CallTracker;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterCallEvents(Lcom/android/internal/telephony/CallTracker;)V

    .line 6068
    .end local v0    # "cdmaCallTracker":Lcom/android/internal/telephony/CallTracker;
    .end local v2    # "gsmCallTracker":Lcom/android/internal/telephony/CallTracker;
    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6082
    .restart local v5    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .line 6083
    .local v4, "pb":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    .line 6084
    .local v1, "ct":Lcom/android/internal/telephony/CallTracker;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterCallEvents(Lcom/android/internal/telephony/CallTracker;)V

    goto :goto_1

    .line 6090
    .end local v1    # "ct":Lcom/android/internal/telephony/CallTracker;
    .end local v3    # "i":I
    .end local v4    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "phoneCount":I
    .end local v7    # "phoneId":I
    :cond_3
    return-void
.end method

.method private unregisterForVoiceCallEventSvlte()V
    .locals 2

    .prologue
    .line 5991
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    .line 5992
    .local v0, "ct":Lcom/android/internal/telephony/CallTracker;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterCallEvents(Lcom/android/internal/telephony/CallTracker;)V

    .line 5993
    return-void
.end method

.method private updateIccRecord(I)V
    .locals 5
    .param p1, "targetRat"    # I

    .prologue
    .line 5704
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_1

    .line 5733
    :cond_0
    :goto_0
    return-void

    .line 5708
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccFamilyByRat(I)I

    move-result v0

    .line 5709
    .local v0, "family":I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 5710
    .local v1, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 5711
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IRAT_DcTracker] updateIccRecord: targetRat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", family = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newIccRecords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5715
    if-eq v2, v1, :cond_0

    .line 5716
    if-eqz v2, :cond_2

    .line 5717
    const-string v3, "[IRAT_DcTracker] Removing stale icc objects."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5719
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5721
    :cond_2
    if-eqz v1, :cond_0

    .line 5722
    const-string v3, "[IRAT_DcTracker] New records found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5723
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5730
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoaded()V

    goto :goto_0
.end method

.method private updateIccRecordAndApn(II)V
    .locals 2
    .param p1, "sourceRat"    # I
    .param p2, "targetRat"    # I

    .prologue
    .line 5678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRAT_DcTracker] updateIccRecordAndApn: sourceRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5682
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateIccRecord(I)V

    .line 5684
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v0, :cond_0

    .line 5685
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->updateCurrentCarrierInProvider()Z

    .line 5686
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->supplyMessenger()V

    .line 5700
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onApnChanged()V

    .line 5701
    return-void

    .line 5687
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_1

    .line 5688
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 5689
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->supplyMessenger()V

    goto :goto_0

    .line 5690
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v0, :cond_2

    .line 5691
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider()Z

    .line 5692
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->supplyMessenger()V

    goto :goto_0

    .line 5694
    :cond_2
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateInitialAttachApnForSvlte()V
    .locals 3

    .prologue
    .line 5663
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeInitialAttachApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 5664
    .local v0, "newIaApnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IRAT_DcTracker] updateInitialAttachForSvlte: newIaApnSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5666
    if-eqz v0, :cond_0

    .line 5667
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInitialAttachApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 5668
    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSvlteIaApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 5670
    :cond_0
    return-void
.end method

.method private xorEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    .prologue
    .line 3523
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized abortEnableDedicateBearer(Ljava/lang/String;I)I
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "ddcId"    # I

    .prologue
    .line 4892
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .line 4893
    .local v0, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    if-nez v0, :cond_0

    .line 4894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dedicate]abortEnableDedicateBearer, to abort enabling of DedicateDataConnection with ID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] but no DedicateDataConnection found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4895
    const/4 p2, -0x1

    .line 4903
    .end local p2    # "ddcId":I
    :goto_0
    monitor-exit p0

    return p2

    .line 4897
    .restart local p2    # "ddcId":I
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dedicate]abortEnableDedicateBearer, to abort enabling of DedicateDataConnection with ID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4898
    const v2, 0x4220b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4899
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 4900
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4901
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4892
    .end local v0    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 4219
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    .line 4220
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/String;
    .param p2, "disconnectAllCompleteMsg"    # Landroid/os/Message;

    .prologue
    .line 4227
    const-string v1, "cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4228
    if-eqz p2, :cond_0

    .line 4229
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4232
    :cond_0
    const v1, 0x4201d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4233
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4234
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4235
    return-void
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)Z
    .locals 6
    .param p1, "tearDown"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanUpAllConnections: tearDown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1458
    const/4 v1, 0x0

    .line 1459
    .local v1, "didDisconnect":Z
    const/4 v3, 0x0

    .line 1461
    .local v3, "specificdisable":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1462
    const-string v4, "specificDisabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1465
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1466
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 1467
    :cond_2
    if-eqz v3, :cond_3

    .line 1468
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ims"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1469
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApnConextType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 1473
    :cond_3
    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->MTK_IMS_SUPPORT:Z

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isSkipIMSorEIMSforCleanUpDataConns(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1477
    const-string v4, "cleanUpAllConnections but skip IMS/Emergency APN"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1480
    :cond_4
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 1485
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 1486
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 1489
    const-string v4, "default"

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanUpConnection: mDisconnectPendingCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1492
    if-eqz p1, :cond_6

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez v4, :cond_6

    .line 1493
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    .line 1494
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    .line 1497
    :cond_6
    return v1
.end method

.method protected cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 9
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v8, 0x0

    .line 1517
    if-nez p2, :cond_0

    .line 1518
    const-string v5, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1609
    :goto_0
    return-void

    .line 1522
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    .line 1524
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: E tearDown="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1527
    if-eqz p1, :cond_9

    .line 1528
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1531
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1532
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1533
    if-eqz v0, :cond_1

    .line 1535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: teardown, disconnected, !ready apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1538
    const-string v5, ""

    invoke-virtual {v0, p2, v5, v8}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 1540
    :cond_1
    invoke-virtual {p2, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 1602
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1603
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1606
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: X tearDown="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dcac="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1544
    :cond_4
    if-eqz v0, :cond_8

    .line 1545
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_2

    .line 1546
    const/4 v1, 0x0

    .line 1547
    .local v1, "disconnectAll":Z
    const-string v5, "dun"

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1550
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->teardownForDun()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1552
    const-string v5, "cleanUpConnection: disconnectAll DUN connection"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1558
    const/4 v1, 0x1

    .line 1562
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: tearing down"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_6

    const-string v5, " all"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1565
    const v5, 0x4200f

    invoke-virtual {p0, v5, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1566
    .local v2, "msg":Landroid/os/Message;
    if-eqz v1, :cond_7

    .line 1567
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 1571
    :goto_3
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1572
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    goto/16 :goto_1

    .line 1562
    .end local v2    # "msg":Landroid/os/Message;
    :cond_6
    const-string v5, ""

    goto :goto_2

    .line 1569
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p2, v5, v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .line 1577
    .end local v1    # "disconnectAll":Z
    .end local v2    # "msg":Landroid/os/Message;
    :cond_8
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1578
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isNeedNotify()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1579
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1585
    :cond_9
    const/4 v3, 0x1

    .line 1587
    .local v3, "needNotify":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 1588
    .local v4, "phoneCount":I
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x2

    if-le v4, v5, :cond_a

    .line 1589
    const/4 v3, 0x0

    .line 1592
    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->reqReset()V

    .line 1593
    :cond_b
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1594
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isNeedNotify()Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v3, :cond_c

    .line 1595
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    :cond_c
    invoke-virtual {p2, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    goto/16 :goto_1
.end method

.method protected cleanUpImsRelatedConnections()V
    .locals 6

    .prologue
    .line 5340
    const/4 v3, 0x0

    .line 5341
    .local v3, "tearDown":Z
    const/4 v2, 0x0

    .line 5343
    .local v2, "reason":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanUpImsRelatedConnections: tearDown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5344
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 5345
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const-string v4, "ims"

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "emergency"

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5348
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 5349
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 5352
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    return-void
.end method

.method public declared-synchronized clearDataBearer()V
    .locals 2

    .prologue
    .line 5305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_0

    .line 5306
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x4220a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->clearDataBearer(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5310
    :goto_0
    monitor-exit p0

    return-void

    .line 5308
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onClearDataBearer()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v6, 0x0

    .line 2804
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v1

    .line 2806
    .local v1, "isProvApn":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeConnection: successful, notify the world apnContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2808
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeConnection: MOBILE_PROVISIONING_ACTION url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2813
    const-string v3, "android.intent.action.MAIN"

    const-string v4, "android.intent.category.APP_BROWSER"

    invoke-static {v3, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2815
    .local v2, "newIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2816
    const/high16 v3, 0x10400000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2819
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2824
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    .line 2825
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningUrl:Ljava/lang/String;

    .line 2826
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    .line 2827
    const v3, 0x4202a

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2831
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 2833
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 2834
    return-void

    .line 2820
    .restart local v2    # "newIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2821
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeConnection: startActivityAsUser failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deactivatePdpByCid(I)V
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 5399
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    const v2, 0x4220e

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 5400
    return-void
.end method

.method public decApnRefCount(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decApnRefCount name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 544
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decApnRefCount apnContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->decRefCount()V

    .line 548
    :cond_0
    return-void
.end method

.method public declared-synchronized disableDedicateBearer(Ljava/lang/String;I)I
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cid"    # I

    .prologue
    .line 4849
    monitor-enter p0

    const/4 v0, -0x1

    .line 4850
    .local v0, "ddcId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4851
    .local v2, "key":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->getCidSync()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 4852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dedicate]disableDedicateBearer, to disable DedicateDataConnection with ID ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4853
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4858
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_1
    if-ltz v0, :cond_2

    .line 4859
    const v4, 0x42200

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4860
    .local v3, "msg":Landroid/os/Message;
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 4861
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4862
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4866
    .end local v3    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit p0

    return v0

    .line 4864
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dedicate]disableDedicateBearer but no DedicateDataConnection found [CID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4849
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 445
    const-string v1, "DcTracker.dispose"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 449
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 453
    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    .line 456
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 458
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    .line 460
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllEvents()V

    .line 464
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForEventsAfterPhoneCreated()V

    .line 466
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 467
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 469
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->destroyDataConnections()V

    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFdMgr:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    if-eqz v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFdMgr:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->dispose()V

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 478
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 479
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 482
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFdnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$FdnChangeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 483
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsFdnChecked:Z

    .line 484
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsMatchFdnForAllowData:Z

    .line 485
    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPhbStateChangedIntentRegistered:Z

    .line 486
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhbStateChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 487
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4353
    const-string v0, "DcTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4354
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReregisterOnReconnectFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " canSetPreferApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApnObserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getOverallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataConnectionAsyncChannels=%s\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4361
    return-void
.end method

.method public declared-synchronized enableDedicateBearer(Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;)I
    .locals 9
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "signalingFlag"    # Z
    .param p3, "qosStatus"    # Lcom/mediatek/internal/telephony/QosStatus;
    .param p4, "tftStatus"    # Lcom/mediatek/internal/telephony/TftStatus;

    .prologue
    .line 4831
    monitor-enter p0

    const/4 v7, -0x1

    .line 4832
    .local v7, "availableDdcId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getFreeDedicateDataConnection()Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    move-result-object v2

    .line 4833
    .local v2, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    if-nez v2, :cond_0

    .line 4834
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDedicateDataConnection()Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    move-result-object v2

    .line 4836
    :cond_0
    if-nez v2, :cond_1

    .line 4837
    const-string v0, "[dedicate]enableDedicateBearer but no free DedicateDataConnection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4845
    :goto_0
    monitor-exit p0

    return v7

    .line 4839
    :cond_1
    const v0, 0x421ff

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 4840
    .local v8, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;)V

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4841
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4842
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getId()I

    move-result v7

    .line 4843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dedicate]enableDedicateBearer the free DedicateDataConnection is with ID ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4831
    .end local v2    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    .end local v8    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 670
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active apn string for type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 826
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 827
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    .line 829
    .local v1, "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v1, :cond_0

    .line 830
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 833
    .end local v1    # "apnSetting":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 810
    const-string v3, "get all active apn types"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 811
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 814
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 815
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 819
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getAnyDataEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 952
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 954
    :try_start_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-nez v4, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    .line 958
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPolicyDataEnabled:Z

    if-nez v4, :cond_2

    .line 959
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAnyDataEnabled1 return false. mInternalDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mUserDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPolicyDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPolicyDataEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 962
    monitor-exit v3

    .line 975
    :goto_0
    return v2

    .line 965
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 968
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnyDataEnabled1 return true, apn = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 970
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 976
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 974
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    const-string v4, "getAnyDataEnabled1 return false"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 975
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAnyDataEnabled(Z)Z
    .locals 6
    .param p1, "checkUserDataEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 980
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 982
    :try_start_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-nez v4, :cond_0

    .line 984
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    .line 987
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-eqz v4, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPolicyDataEnabled:Z

    if-nez v4, :cond_3

    .line 989
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAnyDataEnabled2 return false. mInternalDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", checkUserDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mUserDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPolicyDataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPolicyDataEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 993
    monitor-exit v3

    .line 1006
    :goto_0
    return v2

    .line 996
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 999
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnyDataEnabled2 return true, apn = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1001
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 1007
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1005
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    const-string v4, "getAnyDataEnabled2 return false"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1006
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getApnPriority(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 568
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request for unsupported mobile name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 571
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    return v1
.end method

.method protected getApnProfileID(Ljava/lang/String;)I
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4071
    const-string v1, "ims"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4072
    const/4 v0, 0x2

    .line 4082
    :cond_0
    :goto_0
    return v0

    .line 4073
    :cond_1
    const-string v1, "fota"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4074
    const/4 v0, 0x3

    goto :goto_0

    .line 4075
    :cond_2
    const-string v1, "cbs"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4076
    const/4 v0, 0x4

    goto :goto_0

    .line 4077
    :cond_3
    const-string v1, "ia"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4079
    const-string v1, "dun"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4080
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getConcatenatedBearersPropertiesOfDefaultBearer(Ljava/lang/String;)[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5245
    const/4 v1, 0x0

    .line 5246
    .local v1, "concatenatedBearers":[Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 5247
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_0

    .line 5248
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getConcatenatedBearersPropertiesOfDefaultBearerSync()[Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v1

    .line 5250
    :cond_0
    return-object v1
.end method

.method public getDeactivateCidArray(Ljava/lang/String;)[I
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5254
    const/4 v1, 0x0

    .line 5255
    .local v1, "cidArray":[I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 5256
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 5257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get apnContext failed with apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    move-object v2, v1

    .line 5267
    .end local v1    # "cidArray":[I
    .local v2, "cidArray":[I
    :goto_0
    return-object v2

    .line 5261
    .end local v2    # "cidArray":[I
    .restart local v1    # "cidArray":[I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v3

    .line 5262
    .local v3, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v3, :cond_1

    .line 5263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get dcac failed, apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    :goto_1
    move-object v2, v1

    .line 5267
    .end local v1    # "cidArray":[I
    .restart local v2    # "cidArray":[I
    goto :goto_0

    .line 5265
    .end local v2    # "cidArray":[I
    .restart local v1    # "cidArray":[I
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDeactivateCidArraySync()[I

    move-result-object v1

    goto :goto_1
.end method

.method public getDefaultBearerProperties(Ljava/lang/String;)Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5230
    const/4 v2, 0x0

    .line 5231
    .local v2, "defaultBearerProp":Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 5232
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_0

    .line 5233
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 5234
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_1

    .line 5235
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDefaultBearerPropertiesSync()Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-result-object v2

    .line 5241
    .end local v1    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_0
    :goto_0
    return-object v2

    .line 5237
    .restart local v1    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current dcac is null for apnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastDataConnectionFailCause(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5283
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 5284
    .local v2, "failCause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 5285
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 5286
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v1, :cond_0

    .line 5287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get dcac failed, apnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 5288
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 5292
    :goto_0
    return-object v2

    .line 5290
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLastDataConnectionFailCauseSync()Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    goto :goto_0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 779
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 780
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 782
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return link properites for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 788
    .end local v1    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    .line 787
    :cond_0
    const-string v2, "return new LinkProperties"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 788
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method public getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 793
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 794
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 796
    .local v1, "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active pdp is not null, return NetworkCapabilities for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getNetworkCapabilitiesSync()Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 804
    .end local v1    # "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    .line 803
    :cond_0
    const-string v2, "return new NetworkCapabilities"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 804
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    goto :goto_0
.end method

.method public getOverallState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 8

    .prologue
    .line 873
    const/4 v4, 0x0

    .line 874
    .local v4, "isConnecting":Z
    const/4 v5, 0x1

    .line 875
    .local v5, "isFailed":Z
    const/4 v3, 0x0

    .line 878
    .local v3, "isAnyEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 880
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 881
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 884
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "overall state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 886
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 887
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 888
    const/4 v3, 0x1

    .line 889
    sget-object v6, Lcom/android/internal/telephony/dataconnection/DcTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 904
    const/4 v3, 0x1

    goto :goto_1

    .line 892
    :pswitch_0
    const-string v6, "overall state is CONNECTED"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 893
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    .line 923
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_2
    return-object v6

    .line 896
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_1
    const/4 v4, 0x1

    .line 897
    const/4 v5, 0x0

    .line 898
    goto :goto_1

    .line 901
    :pswitch_2
    const/4 v5, 0x0

    .line 902
    goto :goto_1

    .line 910
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    if-nez v3, :cond_4

    .line 911
    const-string v6, "overall state is IDLE"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 912
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_2

    .line 915
    :cond_4
    if-eqz v4, :cond_5

    .line 916
    const-string v6, "overall state is CONNECTING"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 917
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_2

    .line 918
    :cond_5
    if-nez v5, :cond_6

    .line 919
    const-string v6, "overall state is IDLE"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 920
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_2

    .line 922
    :cond_6
    const-string v6, "overall state is FAILED"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 923
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_2

    .line 889
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getPcscf(Ljava/lang/String;)Lcom/mediatek/internal/telephony/PcscfInfo;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 4913
    const/4 v1, 0x0

    .line 4914
    .local v1, "pcscfInfo":Lcom/mediatek/internal/telephony/PcscfInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4915
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_0

    .line 4916
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getPcscfSync()Lcom/mediatek/internal/telephony/PcscfInfo;

    move-result-object v1

    .line 4918
    :cond_0
    return-object v1
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4365
    const-string v5, "getPcscfAddress()"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4366
    const/4 v0, 0x0

    .line 4368
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez p1, :cond_1

    .line 4369
    const-string v5, "apnType is null, return null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 4399
    :cond_0
    :goto_0
    return-object v3

    .line 4374
    :cond_1
    const-string v5, "emergency"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4375
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "emergency"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4383
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_1
    if-nez v0, :cond_4

    .line 4384
    const-string v5, "apnContext is null, return null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 4385
    goto :goto_0

    .line 4376
    :cond_2
    const-string v5, "ims"

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4377
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "ims"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    goto :goto_1

    .line 4379
    :cond_3
    const-string v5, "apnType is invalid, return null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v3, v4

    .line 4380
    goto :goto_0

    .line 4388
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 4389
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const/4 v3, 0x0

    .line 4391
    .local v3, "result":[Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 4392
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getPcscfAddr()[Ljava/lang/String;

    move-result-object v3

    .line 4394
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 4395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pcscf["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4394
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    :cond_5
    move-object v3, v4

    .line 4399
    goto :goto_0
.end method

.method protected getPdpConnectionPoolSize()I
    .locals 1

    .prologue
    .line 4553
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isSupportThrottlingApn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4554
    const/16 v0, 0x8

    .line 4558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 854
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 857
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_0
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2137
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mActiveApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2139
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3801
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleMessage msg="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDisposed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 3804
    :cond_0
    const-string v17, "handleMessage: Ignore GSM msgs since GSM phone is inactive"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 4068
    :cond_1
    :goto_0
    return-void

    .line 3808
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 4065
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3810
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 3814
    :sswitch_1
    const-string v17, "simLoaded"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0

    .line 3818
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionDetached()V

    goto :goto_0

    .line 3822
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionAttached()V

    goto :goto_0

    .line 3826
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->doRecovery()V

    goto :goto_0

    .line 3830
    :sswitch_5
    new-instance v17, Ljava/lang/Thread;

    new-instance v18, Lcom/android/internal/telephony/dataconnection/DcTracker$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$3;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    invoke-direct/range {v17 .. v18}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 3840
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    const/4 v5, 0x0

    .line 3842
    .local v5, "bIMSApnChanged":Z
    :goto_1
    const-string v17, "EVENT_APN_CHANGED_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3844
    if-eqz v5, :cond_4

    .line 3845
    const-string v17, "ims apn changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    const-string v18, "ims"

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3847
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 3840
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "bIMSApnChanged":Z
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 3850
    .restart local v5    # "bIMSApnChanged":Z
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onApnChangedDone()V

    goto :goto_0

    .line 3861
    .end local v5    # "bIMSApnChanged":Z
    :sswitch_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3862
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 3863
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 3864
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    goto/16 :goto_0

    .line 3873
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 3876
    .local v6, "cnnm":Landroid/net/ConnectivityManager;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3877
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    .line 3878
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 3879
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 3880
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    goto/16 :goto_0

    .line 3883
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 3884
    const/16 v17, 0x0

    const-string v18, "psRestrictEnabled"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 3885
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 3887
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    const-string v18, "default"

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3888
    .restart local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v3, :cond_7

    .line 3889
    const-string v17, "psRestrictEnabled"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 3890
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    goto/16 :goto_0

    .line 3892
    :cond_7
    const-string v17, "**** Default ApnContext not found ****"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3894
    sget-boolean v17, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v17, :cond_1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 3896
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Default ApnContext not found"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 3903
    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v6    # "cnnm":Landroid/net/ConnectivityManager;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 3904
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    goto/16 :goto_0

    .line 3905
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 3906
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3908
    :cond_9
    const-string v17, "EVENT_TRY_SETUP request w/o apnContext or String"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3913
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    const/16 v16, 0x0

    .line 3914
    .local v16, "tearDown":Z
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EVENT_CLEAN_UP_CONNECTION tearDown="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3915
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 3916
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto/16 :goto_0

    .line 3913
    .end local v16    # "tearDown":Z
    :cond_a
    const/16 v16, 0x1

    goto :goto_2

    .line 3918
    .restart local v16    # "tearDown":Z
    :cond_b
    const-string v17, "EVENT_CLEAN_UP_CONNECTION request w/o apn context, call super"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 3919
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3923
    .end local v16    # "tearDown":Z
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/4 v7, 0x1

    .line 3924
    .local v7, "enabled":Z
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 3923
    .end local v7    # "enabled":Z
    :cond_c
    const/4 v7, 0x0

    goto :goto_3

    .line 3928
    :sswitch_c
    const v17, 0x4201d

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 3929
    .local v10, "mCause":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 3930
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3932
    :cond_d
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3937
    .end local v10    # "mCause":Landroid/os/Message;
    :sswitch_d
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/dataconnection/DctController;->getActiveDataPhoneId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 3938
    const-string v17, "nwTypeChanged"

    sget-object v18, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    goto/16 :goto_0

    .line 3944
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onEnableDedicateBearer(Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;)V

    goto/16 :goto_0

    .line 3947
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDisableDedicateBearer(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3950
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onModifyDedicateBearer(Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;)V

    goto/16 :goto_0

    .line 3953
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onAbortEnableDedicateBearer(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3956
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onPcscfDiscovery(Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;)V

    goto/16 :goto_0

    .line 3959
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDedicateDataSetupComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3962
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDedicateDataDeactivateComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3965
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDedicateBearerUpdatedComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3968
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDedicateBearerAbortComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3972
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDedicateBearerUpdatedByNetwork(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3975
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDedicateBearerDeactivatedByNetwork(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3978
    :sswitch_19
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "receive EVENT_UPDATE_CONCATENATED_BEARER_COMPLETED (cid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", needSendNotification="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3979
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 3980
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDedicateBearerUpdatedComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3983
    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onClearDataBearer()V

    goto/16 :goto_0

    .line 3988
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 3989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3990
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisioningSpinner:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 3997
    :sswitch_1c
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 3998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v14

    .line 3999
    .local v14, "svltePhoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFdMgr:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    .line 4003
    .end local v14    # "svltePhoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForEventsAfterPhoneCreated()V

    goto/16 :goto_0

    .line 4001
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/mediatek/internal/telephony/dataconnection/FdManager;->getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFdMgr:Lcom/mediatek/internal/telephony/dataconnection/FdManager;

    goto :goto_4

    .line 4007
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 4008
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v12, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Landroid/util/Pair;

    .line 4009
    .local v12, "ratPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 4010
    .local v13, "sourceRat":I
    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 4011
    .local v15, "targetRat":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onIratDataRatChanged(II)V

    goto/16 :goto_0

    .line 4015
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "ratPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13    # "sourceRat":I
    .end local v15    # "targetRat":I
    :sswitch_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onLteRecordsLoaded()V

    goto/16 :goto_0

    .line 4019
    :sswitch_1f
    const-string v17, "[IRAT_DcTracker] Retry to setup data for IRAT."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4020
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSetupDataBlocked:Z

    .line 4021
    const-string v17, "CdmaFallbackHappened"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4027
    :sswitch_20
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onFdnChanged()V

    goto/16 :goto_0

    .line 4031
    :sswitch_21
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EVENT_RESET_PDP_DONE cid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4035
    :sswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isCctSmRetry()Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->isGettingAvailableNetworks()Z

    move-result v17

    if-nez v17, :cond_1

    .line 4036
    const-string v17, "EVENT_REMOVE_RESTRICT_EUTRAN"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4037
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 4038
    const-string v17, "psRestrictDisabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4044
    :sswitch_23
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 4045
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    .line 4046
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    move-object/from16 v8, v17

    check-cast v8, [I

    .line 4047
    .local v8, "ints":[I
    const/16 v17, 0x0

    aget v9, v8, v17

    .line 4048
    .local v9, "lteAccessStratumDataState":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_f

    .line 4049
    const/16 v17, 0x1

    aget v11, v8, v17

    .line 4050
    .local v11, "networkType":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EVENT_LTE_ACCESS_STRATUM_STATE networkType = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4051
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyPsNetworkTypeChanged(I)V

    .line 4055
    .end local v11    # "networkType":I
    :goto_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "EVENT_LTE_ACCESS_STRATUM_STATE lteAccessStratumDataState = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4056
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyLteAccessStratumChanged(I)V

    goto/16 :goto_0

    .line 4053
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/PhoneBase;->notifyPsNetworkTypeChanged(I)V

    goto :goto_5

    .line 4058
    .end local v8    # "ints":[I
    .end local v9    # "lteAccessStratumDataState":I
    :cond_10
    const-string v17, "DCT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "LteAccessStratumState exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3808
    nop

    :sswitch_data_0
    .sparse-switch
        0x42002 -> :sswitch_0
        0x42003 -> :sswitch_9
        0x42009 -> :sswitch_2
        0x42010 -> :sswitch_3
        0x42012 -> :sswitch_4
        0x42013 -> :sswitch_5
        0x42016 -> :sswitch_7
        0x42017 -> :sswitch_8
        0x42018 -> :sswitch_a
        0x4201b -> :sswitch_b
        0x4201d -> :sswitch_c
        0x42029 -> :sswitch_d
        0x4202a -> :sswitch_1b
        0x421f7 -> :sswitch_6
        0x421f8 -> :sswitch_1
        0x421fb -> :sswitch_20
        0x421ff -> :sswitch_e
        0x42200 -> :sswitch_f
        0x42201 -> :sswitch_10
        0x42202 -> :sswitch_13
        0x42203 -> :sswitch_14
        0x42204 -> :sswitch_15
        0x42205 -> :sswitch_17
        0x42206 -> :sswitch_17
        0x42207 -> :sswitch_18
        0x42208 -> :sswitch_19
        0x42209 -> :sswitch_12
        0x4220a -> :sswitch_1a
        0x4220b -> :sswitch_11
        0x4220c -> :sswitch_16
        0x4220d -> :sswitch_22
        0x4220e -> :sswitch_21
        0x42211 -> :sswitch_23
        0x42212 -> :sswitch_1c
        0x45000 -> :sswitch_1d
        0x45001 -> :sswitch_1e
        0x45002 -> :sswitch_1f
    .end sparse-switch
.end method

.method public incApnRefCount(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incApnRefCount name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 534
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incApnRefCount apnContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->incRefCount()V

    .line 538
    :cond_0
    return-void
.end method

.method protected initApnContexts()V
    .locals 9

    .prologue
    .line 698
    const-string v7, "initApnContexts: E"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 700
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 702
    .local v6, "networkConfigStrings":[Ljava/lang/String;
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v1, v2

    .line 703
    .local v5, "networkConfigString":Ljava/lang/String;
    new-instance v4, Landroid/net/NetworkConfig;

    invoke-direct {v4, v5}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 704
    .local v4, "networkConfig":Landroid/net/NetworkConfig;
    const/4 v0, 0x0

    .line 706
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget v7, v4, Landroid/net/NetworkConfig;->type:I

    sparse-switch v7, :sswitch_data_0

    .line 761
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initApnContexts: skipping unknown type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 702
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 708
    :sswitch_0
    const-string v7, "default"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 764
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initApnContexts: apnContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 711
    :sswitch_1
    const-string v7, "mms"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 712
    goto :goto_2

    .line 714
    :sswitch_2
    const-string v7, "supl"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 715
    goto :goto_2

    .line 717
    :sswitch_3
    const-string v7, "dun"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 718
    goto :goto_2

    .line 720
    :sswitch_4
    const-string v7, "hipri"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 721
    goto :goto_2

    .line 723
    :sswitch_5
    const-string v7, "fota"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 724
    goto :goto_2

    .line 726
    :sswitch_6
    const-string v7, "ims"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 727
    goto :goto_2

    .line 729
    :sswitch_7
    const-string v7, "cbs"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 730
    goto :goto_2

    .line 732
    :sswitch_8
    const-string v7, "ia"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 733
    goto :goto_2

    .line 736
    :sswitch_9
    const-string v7, "dm"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 737
    goto :goto_2

    .line 739
    :sswitch_a
    const-string v7, "net"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 740
    goto :goto_2

    .line 742
    :sswitch_b
    const-string v7, "wap"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 743
    goto :goto_2

    .line 745
    :sswitch_c
    const-string v7, "cmmail"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 746
    goto :goto_2

    .line 748
    :sswitch_d
    const-string v7, "rcse"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 749
    goto :goto_2

    .line 751
    :sswitch_e
    const-string v7, "xcap"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 752
    goto :goto_2

    .line 754
    :sswitch_f
    const-string v7, "rcs"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 755
    goto :goto_2

    .line 758
    :sswitch_10
    const-string v7, "emergency"

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 759
    goto/16 :goto_2

    .line 768
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "networkConfig":Landroid/net/NetworkConfig;
    .end local v5    # "networkConfigString":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/internal/telephony/dataconnection/DcTracker$2;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$2;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 773
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initApnContexts: mPrioritySortedApnContexts="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPrioritySortedApnContexts:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 774
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initApnContexts: X mApnContexts="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 775
    return-void

    .line 706
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0xe -> :sswitch_8
        0xf -> :sswitch_10
        0x22 -> :sswitch_9
        0x23 -> :sswitch_b
        0x24 -> :sswitch_a
        0x25 -> :sswitch_c
        0x27 -> :sswitch_d
        0x28 -> :sswitch_e
        0x29 -> :sswitch_f
    .end sparse-switch
.end method

.method public isApnSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 553
    if-nez p1, :cond_0

    .line 554
    const-string v2, "isApnSupported: name=null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 562
    :goto_0
    return v1

    .line 557
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 558
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_1

    .line 559
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request for unsupported mobile name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 637
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 638
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 929
    const-string v3, "dun"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "emergency"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 931
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isApnTypeAvaiable, apn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 942
    :goto_0
    return v2

    .line 935
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 936
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 937
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 942
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 839
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 840
    const/4 v1, 0x0

    .line 842
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method protected isCctSmRetry()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 5377
    const/4 v0, 0x0

    .line 5379
    .local v0, "cctSmRetry":Z
    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->BSP_PACKAGE:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mGsmDctExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    if-eqz v4, :cond_1

    .line 5382
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mGsmDctExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    invoke-interface {v4}, Lcom/mediatek/common/telephony/IGsmDCTExt;->isCctSmRetry()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5387
    :goto_0
    const-string v4, "persist.data.cc33.support"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 5388
    .local v2, "userSet":I
    if-eq v2, v5, :cond_0

    .line 5389
    if-ne v2, v3, :cond_2

    move v0, v3

    .line 5392
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCctSmRetry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5394
    .end local v2    # "userSet":I
    :cond_1
    return v0

    .line 5383
    :catch_0
    move-exception v1

    .line 5384
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5389
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v2    # "userSet":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected isConnected()Z
    .locals 4

    .prologue
    .line 3357
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3358
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_0

    .line 3360
    const/4 v2, 0x1

    .line 3364
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isDataAllowed()Z
    .locals 1

    .prologue
    .line 1083
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Z)Z

    move-result v0

    return v0
.end method

.method protected isDataAllowed(Z)Z
    .locals 17
    .param p1, "checkDefaultData"    # Z

    .prologue
    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1089
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    .line 1090
    .local v7, "internalDataEnabled":Z
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 1093
    .local v2, "attachedState":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v6

    .line 1094
    .local v6, "desiredPowerState":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1095
    .local v10, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v12, 0x0

    .line 1096
    .local v12, "recordsLoaded":Z
    if-eqz v10, :cond_0

    .line 1097
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v12

    .line 1098
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isDataAllowed getRecordsLoaded="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1101
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isFdnEnabled()Z

    move-result v3

    .line 1104
    .local v3, "bIsFdnEnabled":Z
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    .line 1105
    .local v9, "psRestricted":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    .line 1106
    .local v8, "phoneNum":I
    const/4 v15, 0x1

    if-le v8, v15, :cond_1

    .line 1108
    const/4 v9, 0x0

    .line 1110
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    .line 1111
    .local v4, "dataSub":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    .line 1112
    .local v5, "defaultDataSelected":Z
    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1120
    .local v13, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 1123
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v15

    invoke-static {v15}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    .line 1130
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getCallStatePeer()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v14

    .line 1131
    .local v14, "statePeer":Lcom/android/internal/telephony/PhoneConstants$State;
    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    if-eqz v15, :cond_17

    :cond_3
    if-eqz v12, :cond_17

    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v13, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v15

    if-eqz v15, :cond_17

    :cond_4
    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v14, v15, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConcurrentVoiceAndDataAllowedWithPeer()Z

    move-result v15

    if-eqz v15, :cond_17

    :cond_5
    if-eqz v7, :cond_17

    if-nez v5, :cond_6

    if-nez p1, :cond_17

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/ServiceStateTracker;->isPsRegStateRoamByUnsol()Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    move-result v15

    if-eqz v15, :cond_17

    :cond_8
    if-nez v9, :cond_17

    if-eqz v6, :cond_17

    if-nez v3, :cond_17

    const/4 v1, 0x1

    .line 1147
    .local v1, "allowed":Z
    :goto_1
    if-nez v1, :cond_14

    .line 1148
    const-string v11, ""

    .line 1149
    .local v11, "reason":Ljava/lang/String;
    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    if-nez v15, :cond_9

    .line 1150
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - Attached= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1152
    :cond_9
    if-nez v12, :cond_a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - SIM not loaded"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1153
    :cond_a
    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v13, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v15

    if-nez v15, :cond_b

    .line 1155
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - PhoneState= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1156
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - Concurrent voice and data not allowed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1158
    :cond_b
    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v14, v15, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConcurrentVoiceAndDataAllowedWithPeer()Z

    move-result v15

    if-nez v15, :cond_c

    .line 1160
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - PeerPhoneState= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1161
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - Concurrent voice and data with peer not allowed"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1163
    :cond_c
    if-nez v7, :cond_d

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - mInternalDataEnabled= false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1164
    :cond_d
    if-nez v5, :cond_e

    if-eqz p1, :cond_e

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - defaultDataSelected= false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1165
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v15

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/ServiceStateTracker;->isPsRegStateRoamByUnsol()Z

    move-result v15

    if-eqz v15, :cond_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    move-result v15

    if-nez v15, :cond_10

    .line 1168
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - Roaming and data roaming not enabled"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1170
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    if-eqz v15, :cond_11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - mIsPsRestricted= true"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1171
    :cond_11
    if-nez v6, :cond_12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - desiredPowerState= false"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1172
    :cond_12
    if-eqz v3, :cond_13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " - FDN enabled"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1173
    :cond_13
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isDataAllowed: not allowed due to"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1177
    .end local v11    # "reason":Ljava/lang/String;
    :cond_14
    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 1178
    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v15}, Lcom/android/internal/telephony/dataconnection/DcController;->isPcModemConnected()Z

    move-result v15

    if-nez v15, :cond_18

    const/4 v1, 0x1

    .line 1179
    :goto_2
    if-nez v1, :cond_15

    .line 1180
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isDataAllowed: phoneType = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", PcModemConnected = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/dataconnection/DcController;->isPcModemConnected()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1185
    :cond_15
    return v1

    .line 1090
    .end local v1    # "allowed":Z
    .end local v2    # "attachedState":Z
    .end local v3    # "bIsFdnEnabled":Z
    .end local v4    # "dataSub":I
    .end local v5    # "defaultDataSelected":Z
    .end local v6    # "desiredPowerState":Z
    .end local v7    # "internalDataEnabled":Z
    .end local v8    # "phoneNum":I
    .end local v9    # "psRestricted":Z
    .end local v10    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v12    # "recordsLoaded":Z
    .end local v13    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v14    # "statePeer":Lcom/android/internal/telephony/PhoneConstants$State;
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 1125
    .restart local v2    # "attachedState":Z
    .restart local v3    # "bIsFdnEnabled":Z
    .restart local v4    # "dataSub":I
    .restart local v5    # "defaultDataSelected":Z
    .restart local v6    # "desiredPowerState":Z
    .restart local v7    # "internalDataEnabled":Z
    .restart local v8    # "phoneNum":I
    .restart local v9    # "psRestricted":Z
    .restart local v10    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v12    # "recordsLoaded":Z
    .restart local v13    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 1126
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    goto/16 :goto_0

    .line 1131
    .restart local v14    # "statePeer":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1178
    .restart local v1    # "allowed":Z
    :cond_18
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected isDataAllowedAsOff(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 4321
    const/4 v0, 0x0

    .line 4322
    .local v0, "isDataAllowedAsOff":Z
    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->BSP_PACKAGE:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mGsmDctExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    if-eqz v1, :cond_0

    .line 4323
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mGsmDctExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    invoke-interface {v1, p1}, Lcom/mediatek/common/telephony/IGsmDCTExt;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v0

    .line 4325
    :cond_0
    return v0
.end method

.method public isDataPossible(Ljava/lang/String;)Z
    .locals 11
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 645
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 646
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 665
    :goto_0
    return v7

    .line 649
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    .line 650
    .local v1, "apnContextIsEnabled":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    .line 651
    .local v2, "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    if-eqz v1, :cond_1

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v9, :cond_3

    :cond_1
    move v3, v8

    .line 653
    .local v3, "apnTypePossible":Z
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "emergency"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 656
    .local v5, "isEmergencyApn":Z
    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_2
    move v4, v8

    .line 657
    .local v4, "dataAllowed":Z
    :goto_2
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    move v6, v8

    .line 660
    .local v6, "possible":Z
    :goto_3
    const-string v9, "isDataPossible(%s): possible=%b isDataAllowed=%b apnTypePossible=%b apnContextisEnabled=%b apnContextState()=%s"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v10, v8

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v10, v7

    const/4 v7, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v10, v7

    const/4 v7, 0x4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v10, v7

    const/4 v7, 0x5

    aput-object v2, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move v7, v6

    .line 665
    goto :goto_0

    .end local v3    # "apnTypePossible":Z
    .end local v4    # "dataAllowed":Z
    .end local v5    # "isEmergencyApn":Z
    .end local v6    # "possible":Z
    :cond_3
    move v3, v7

    .line 651
    goto :goto_1

    .restart local v3    # "apnTypePossible":Z
    .restart local v5    # "isEmergencyApn":Z
    :cond_4
    move v4, v7

    .line 656
    goto :goto_2

    .restart local v4    # "dataAllowed":Z
    :cond_5
    move v6, v7

    .line 657
    goto :goto_3
.end method

.method public declared-synchronized isDedicateBearer(I)Z
    .locals 4
    .param p1, "cid"    # I

    .prologue
    .line 5296
    monitor-enter p0

    const/4 v2, 0x0

    .line 5297
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 5298
    .local v1, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->getCidSync()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_0

    .line 5299
    const/4 v2, 0x1

    .line 5301
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "result":Z
    :cond_1
    monitor-exit p0

    return v2

    .line 5296
    .end local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "result":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isDisconnected()Z
    .locals 3

    .prologue
    .line 3369
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3370
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3372
    const/4 v2, 0x0

    .line 3376
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isEmergencyCid(I)Z
    .locals 5
    .param p1, "cid"    # I

    .prologue
    .line 5271
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "emergency"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 5272
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v1, 0x0

    .line 5273
    .local v1, "bIsEmergency":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    .line 5274
    .local v2, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v2, :cond_0

    .line 5275
    const-string v3, "get emergency dcac failed"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 5279
    :goto_0
    return v1

    .line 5277
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getCidSync()I

    move-result v3

    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isOnlyIMSorEIMSPdnConnected()Z
    .locals 6

    .prologue
    .line 5313
    const/4 v2, 0x0

    .line 5314
    .local v2, "bIsOnlyIMSorEIMSConnected":Z
    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->MTK_IMS_SUPPORT:Z

    if-eqz v4, :cond_1

    .line 5315
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 5316
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 5317
    .local v1, "apnType":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5318
    const-string v4, "ims"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "emergency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is still conntected!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5322
    const/4 v2, 0x0

    .line 5330
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return v2

    .line 5325
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v1    # "apnType":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z
    .locals 1
    .param p1, "dcFailCause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 1710
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isProvisioningApn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 863
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 864
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v1

    .line 867
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4343
    const-string v0, "DCT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4344
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4348
    const-string v0, "DCT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4349
    return-void
.end method

.method public declared-synchronized modifyDedicateBearer(ILcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;)I
    .locals 12
    .param p1, "cid"    # I
    .param p2, "qosStatus"    # Lcom/mediatek/internal/telephony/QosStatus;
    .param p3, "tftStatus"    # Lcom/mediatek/internal/telephony/TftStatus;

    .prologue
    .line 4870
    monitor-enter p0

    const/4 v8, -0x1

    .line 4871
    .local v8, "ddcId":I
    const/4 v3, 0x0

    .line 4872
    .local v3, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 4873
    .local v10, "key":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->getCidSync()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 4874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate]modifyDedicateBearer, to disable DedicateDataConnection with ID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4875
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4876
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnections:Ljava/util/HashMap;

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    move-object v3, v0

    .line 4881
    .end local v10    # "key":Ljava/lang/Integer;
    :cond_1
    if-ltz v8, :cond_2

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDedicateConnectionAcs:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->isActiveSync()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4882
    const v1, 0x42201

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 4883
    .local v11, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;ZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;)V

    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4884
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4888
    .end local v11    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit p0

    return v8

    .line 4886
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate]modifyDedicateBearer but no DedicateDataConnection found [CID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4870
    .end local v9    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p2, "mvnoType"    # Ljava/lang/String;
    .param p3, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1682
    const-string v6, "spn"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1683
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1705
    :cond_0
    :goto_0
    return v4

    .line 1687
    :cond_1
    const-string v6, "imsi"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1688
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 1689
    .local v1, "imsiSIM":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .end local v1    # "imsiSIM":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 1705
    goto :goto_0

    .line 1692
    :cond_3
    const-string v6, "gid"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1693
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 1694
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1695
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v2, :cond_2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 1699
    .end local v0    # "gid1":Ljava/lang/String;
    .end local v2    # "mvno_match_data_length":I
    :cond_4
    const-string v6, "pnn"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1700
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6, p2}, Lcom/android/internal/telephony/PhoneBase;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1701
    .local v3, "pnn":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0
.end method

.method protected notifyAllDataDisconnected()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4247
    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->sEnableFailFastRefCounter:I

    .line 4248
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    .line 4249
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4250
    return-void
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3382
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3383
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isNeedNotify()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3385
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_1

    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3389
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 3390
    return-void
.end method

.method protected notifyDataDisconnectComplete()V
    .locals 3

    .prologue
    .line 4238
    const-string v2, "notifyDataDisconnectComplete"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4239
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 4240
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4242
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4243
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1418
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1419
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isNeedNotify()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1420
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 1421
    .local v1, "apnType":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1422
    .local v2, "bNotifyOffApns":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyOffApnOfAvailability type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1423
    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->MTK_IMS_SUPPORT:Z

    if-eqz v4, :cond_3

    .line 1424
    const-string v4, "emergency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ims"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1427
    const/4 v2, 0x0

    .line 1428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skip notify, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1432
    :cond_3
    if-eqz v2, :cond_0

    .line 1433
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_4

    move-object v4, p1

    :goto_1
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v5, v4, v1, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1438
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "bNotifyOffApns":Z
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyOffApnsOfAvailability skipped apn due to attached && isReady "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1443
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_6
    return-void
.end method

.method protected notifySharedDefaultApn(Z)V
    .locals 1
    .param p1, "mSharedDefaultApn"    # Z

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifySharedDefaultApnStateChanged(Z)V

    .line 3342
    return-void
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 1512
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 1513
    return-void
.end method

.method protected onCleanUpConnection(ZILjava/lang/String;)V
    .locals 3
    .param p1, "tearDown"    # Z
    .param p2, "apnId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 3347
    const-string v1, "onCleanUpConnection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3348
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3349
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 3350
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 3351
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 3353
    :cond_0
    return-void
.end method

.method protected onClearDataBearer()V
    .locals 1

    .prologue
    .line 5334
    const-string v0, "onClearDataBearer"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5335
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpImsRelatedConnections()V

    .line 5336
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyImsAdapterOnClearDataBearerFinished()V

    .line 5337
    return-void
.end method

.method protected onDataConnectionDetached()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1031
    const-string v0, "onDataConnectionDetached: stop polling and notify detached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 1033
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 1034
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    if-eqz v0, :cond_0

    .line 1035
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    .line 1037
    :cond_0
    const-string v0, "dataDetached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1039
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 27
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2843
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2844
    .local v9, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    const/4 v14, 0x0

    .line 2845
    .local v14, "handleError":Z
    const/4 v7, 0x0

    .line 2847
    .local v7, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 2848
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v7    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v7, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2853
    .restart local v7    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_f

    .line 2854
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v12

    .line 2874
    .local v12, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v12, :cond_3

    .line 2875
    const-string v22, "onDataSetupComplete: no connection to DC, handle as error"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2876
    sget-object v9, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2878
    sget-object v22, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2879
    const/4 v14, 0x1

    .line 3021
    .end local v12    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    if-eqz v14, :cond_0

    .line 3022
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    .line 3028
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 3029
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 3032
    :cond_1
    return-void

    .line 2850
    :cond_2
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "onDataSetupComplete: No apnContext"

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 2881
    .restart local v12    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_3
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v6

    .line 2883
    .local v6, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataSetupComplete: success apn="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez v6, :cond_a

    const-string v22, "unknown"

    :goto_1
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2885
    if-eqz v6, :cond_5

    iget-object v0, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    iget-object v0, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_5

    .line 2887
    :try_start_0
    iget-object v0, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2888
    .local v20, "port":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string v20, "8080"

    .line 2889
    :cond_4
    new-instance v21, Landroid/net/ProxyInfo;

    iget-object v0, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2891
    .local v21, "proxy":Landroid/net/ProxyInfo;
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2899
    .end local v20    # "port":Ljava/lang/String;
    .end local v21    # "proxy":Landroid/net/ProxyInfo;
    :cond_5
    :goto_2
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "default"

    invoke-static/range {v22 .. v23}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 2900
    const-string v22, "gsm.defaultpdpcontext.active"

    const-string v23, "true"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 2902
    const-string v22, "onDataSetupComplete: PREFERED APN is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2903
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 2905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPreferredApn:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 2910
    :cond_6
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 2913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->deactivateLinkDownPdn(Lcom/android/internal/telephony/PhoneBase;)V

    .line 2920
    :cond_7
    :goto_3
    sget-object v22, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2921
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v17

    .line 2922
    .local v17, "isProvApn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v11

    .line 2923
    .local v11, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 2924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2925
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2927
    :cond_8
    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 2929
    :cond_9
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v11, v0, v1, v2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 2934
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2987
    :goto_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataSetupComplete: SETUP complete type="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", reason:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2883
    .end local v11    # "cm":Landroid/net/ConnectivityManager;
    .end local v17    # "isProvApn":Z
    :cond_a
    iget-object v0, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 2892
    :catch_0
    move-exception v13

    .line 2893
    .local v13, "e":Ljava/lang/NumberFormatException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "): "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2916
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    const-string v22, "gsm.defaultpdpcontext.active"

    const-string v23, "false"

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2942
    .restart local v11    # "cm":Landroid/net/ConnectivityManager;
    .restart local v17    # "isProvApn":Z
    :cond_c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onDataSetupComplete: successful, BUT send connected to prov apn as mIsProvisioning:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsProvisioning:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " == false"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " && (isProvisioningApn:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " == true"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2949
    new-instance v22, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$ProvisionNotificationBroadcastReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2955
    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mProvisionActionName:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v11, v0, v1, v2}, Landroid/net/ConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 2959
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setRadio(Z)V

    .line 2961
    new-instance v16, Landroid/content/Intent;

    const-string v22, "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2963
    .local v16, "intent":Landroid/content/Intent;
    const-string v22, "apn"

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2964
    const-string v22, "apnType"

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2966
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    .line 2967
    .local v8, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v18

    .line 2968
    .local v18, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v18, :cond_d

    .line 2969
    const-string v22, "linkProperties"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2970
    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    .line 2971
    .local v15, "iface":Ljava/lang/String;
    if-eqz v15, :cond_d

    .line 2972
    const-string v22, "iface"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2975
    .end local v15    # "iface":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v19

    .line 2976
    .local v19, "networkCapabilities":Landroid/net/NetworkCapabilities;
    if-eqz v19, :cond_e

    .line 2977
    const-string v22, "networkCapabilities"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2982
    :cond_e
    const-string v22, "subscription"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getSubId()J

    move-result-wide v24

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_4

    .line 2992
    .end local v6    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v8    # "apnType":Ljava/lang/String;
    .end local v11    # "cm":Landroid/net/ConnectivityManager;
    .end local v12    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "isProvApn":Z
    .end local v18    # "linkProperties":Landroid/net/LinkProperties;
    .end local v19    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v9, v22

    check-cast v9, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2994
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v6

    .line 2995
    .restart local v6    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const-string v23, "onDataSetupComplete: error apn=%s cause=%s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    if-nez v6, :cond_12

    const-string v22, "unknown"

    :goto_5
    aput-object v22, v24, v25

    const/16 v22, 0x1

    aput-object v9, v24, v22

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2998
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isEventLoggable()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 3000
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getCellLocationId()I

    move-result v10

    .line 3001
    .local v10, "cid":I
    const v22, 0xc3b9

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ordinal()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3004
    .end local v10    # "cid":I
    :cond_10
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v6

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v23, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v25

    if-eqz v6, :cond_13

    iget-object v0, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_6
    invoke-virtual {v9}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->decWaitingApnsPermFailCount()V

    .line 3011
    :cond_11
    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->removeWaitingApn(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 3013
    const-string v22, "onDataSetupComplete: WaitingApns.size=%d WaitingApnsPermFailureCountDown=%d"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3018
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 2995
    :cond_12
    iget-object v0, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_5

    .line 3005
    :cond_13
    const-string v22, "unknown"

    goto :goto_6
.end method

.method protected onDataSetupCompleteError(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 3054
    const-string v2, ""

    .line 3055
    .local v2, "reason":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3057
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v3, :cond_0

    .line 3058
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3064
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3065
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 3066
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "apnFailed"

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 3070
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 3072
    const-string v3, "onDataSetupCompleteError: All APN\'s had permanent failures, stop retrying"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3089
    :goto_0
    return-void

    .line 3060
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "onDataSetupCompleteError: No apnContext"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3075
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    move-result v1

    .line 3077
    .local v1, "delay":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataSetupCompleteError: Not all APN\'s had permanent failures delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3080
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForRestartTrySetup(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 3083
    .end local v1    # "delay":I
    :cond_2
    const-string v3, "onDataSetupCompleteError: Try next APN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3084
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 3087
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0
.end method

.method protected onDedicateBearerAbortComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 5199
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .line 5200
    .local v6, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    .line 5201
    .local v7, "result":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getId()I

    move-result v1

    .line 5202
    .local v1, "ddcId":I
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iget-object v2, v7, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v0, v2, :cond_0

    .line 5203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] onDedicateBearerAbortComplete (success) [ddcid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], property="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5207
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iget-object v3, v7, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iget-object v4, v7, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "abort"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V

    .line 5208
    return-void

    .line 5205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] onDedicateBearerAbortComplete (fail) [ddcid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], property="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v7, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDedicateBearerUpdatedComplete(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 5181
    iget-object v7, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .line 5182
    .local v7, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getId()I

    move-result v1

    .line 5183
    .local v1, "ddcId":I
    iget-object v9, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    .line 5184
    .local v9, "result":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iget-object v2, v9, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v0, v2, :cond_1

    .line 5185
    const-string v0, "[dedicate] onDedicateBearerUpdatedComplete (success)"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5186
    iget-object v0, v9, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5187
    .local v6, "concatenatedNum":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 5189
    iget-object v0, v9, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateActivatedConcatenatedBearer(Lcom/mediatek/internal/telephony/DedicateBearerProperties;Z)V

    .line 5187
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 5191
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    iget-object v3, v9, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "modification"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V

    .line 5196
    .end local v6    # "concatenatedNum":I
    .end local v8    # "i":I
    :goto_1
    return-void

    .line 5193
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] onDedicateBearerUpdatedComplete (fail) [ddcid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", property="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cause="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", exception="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5194
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    iget-object v3, v9, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iget-object v4, v9, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v5, "modification"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDedicateDataDeactivateComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 5159
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .line 5160
    .local v6, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    .line 5161
    .local v7, "result":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getId()I

    move-result v1

    .line 5162
    .local v1, "ddcId":I
    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getDedicateDataConnectionAc()Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnectionAc;->getReasonSync()Ljava/lang/String;

    move-result-object v5

    .line 5163
    .local v5, "reason":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iget-object v2, v7, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v0, v2, :cond_1

    .line 5164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] onDedicateDataDeactivateComplete (success) [ddcid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " reason=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5168
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iget-object v3, v7, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iget-object v4, v7, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V

    .line 5170
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNWLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5171
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNW:Z

    if-eqz v0, :cond_0

    .line 5172
    const-string v0, "Dedicate bearer is deactivated completely, notify waiting object"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNW:Z

    .line 5174
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDeactivatingByNWLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 5176
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5177
    return-void

    .line 5166
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dedicate] onDedicateDataDeactivateComplete (fail) [ddcid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " reason=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDedicateDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 17
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 5134
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    .line 5135
    .local v14, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->getId()I

    move-result v2

    .line 5137
    .local v2, "ddcId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;

    .line 5138
    .local v16, "result":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 5139
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 5140
    .local v13, "concatenatedNum":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v13, :cond_0

    .line 5142
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    iget-object v1, v1, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->concatenateBearers:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateActivatedConcatenatedBearer(Lcom/mediatek/internal/telephony/DedicateBearerProperties;Z)V

    .line 5140
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 5145
    :cond_0
    const-string v6, "activation"

    .line 5150
    .local v6, "reason":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dedicate] onDedicateDataSetupComplete (success) [ddcid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " concatenated bearer, reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5151
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V

    .line 5156
    .end local v6    # "reason":Ljava/lang/String;
    .end local v13    # "concatenatedNum":I
    .end local v15    # "i":I
    :goto_1
    return-void

    .line 5153
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dedicate] onDedicateDataSetupComplete return false [ddcid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cause="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", exception="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5154
    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->properties:Lcom/mediatek/internal/telephony/DedicateBearerProperties;

    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateBearerOperationResult;->failCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    const-string v12, "activation"

    move-object/from16 v7, p0

    move v8, v2

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDedicateDataConnection(ILcom/android/internal/telephony/DctConstants$State;Lcom/mediatek/internal/telephony/DedicateBearerProperties;Lcom/android/internal/telephony/dataconnection/DcFailCause;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V
    .locals 4
    .param p1, "connId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 3230
    const/4 v0, 0x0

    .line 3232
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v1, :cond_0

    .line 3233
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3239
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 3240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnectDcRetrying: apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3242
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    :goto_0
    return-void

    .line 3235
    :cond_0
    const-string v1, "onDisconnectDcRetrying: Invalid ar in onDisconnectDone, ignore"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 9
    .param p1, "connId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v8, 0x0

    .line 3096
    const/4 v0, 0x0

    .line 3098
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v5, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v5, :cond_5

    .line 3099
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 3105
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisconnectDone: EVENT_DISCONNECT_DONE apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3107
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mConflictApn:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 3109
    const-string v5, "onDisconnectDone: conflict apn"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3111
    const-string v5, "apnConflict"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 3112
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mConflictApn:Z

    .line 3115
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3116
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 3117
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isInactiveSync()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3118
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 3128
    .end local v1    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 3132
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlyIMSorEIMSPdnConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3133
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3134
    const-string v5, "onDisconnectDone: radio will be turned off, no retries"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3136
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 3137
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 3141
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-lez v5, :cond_3

    .line 3142
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    .line 3144
    :cond_3
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez v5, :cond_4

    .line 3145
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    .line 3146
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    .line 3200
    :cond_4
    :goto_1
    return-void

    .line 3101
    :cond_5
    const-string v5, "onDisconnectDone: Invalid ar in onDisconnectDone, ignore"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 3121
    .restart local v1    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_6
    const-string v5, "onDisconnectDone: not set idle as DC is active state"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3125
    .end local v1    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    goto :goto_0

    .line 3153
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 3154
    const-string v5, "ims"

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "emergency"

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3156
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisconnectDone: not to retry for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PDN"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3191
    :goto_2
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-lez v5, :cond_a

    .line 3192
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    .line 3194
    :cond_a
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDisconnectPendingCount:I

    if-nez v5, :cond_4

    .line 3195
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setConcurrentVoiceAndDataAllowed(Z)V

    .line 3197
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataDisconnectComplete()V

    .line 3198
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    goto :goto_1

    .line 3158
    :cond_b
    const-string v5, "gsm.defaultpdpcontext.active"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 3160
    .local v2, "reason":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDisconnectDoneRetryTimer(Ljava/lang/String;)I

    move-result v3

    .line 3165
    .local v3, "reconnectTimer":I
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSetupDataBlocked:Z

    if-eqz v5, :cond_c

    .line 3166
    const-string v5, "onDisconnectDone: not to retry for IRAT."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3168
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisconnectDone: attached, ready and retry after disconnect, reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3170
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_2

    .line 3174
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "reconnectTimer":I
    :cond_d
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 3177
    .local v4, "restartRadioAfterProvisioning":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v4, :cond_e

    .line 3178
    const-string v5, "onDisconnectDone: restartRadio after provisioning"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3179
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    .line 3181
    :cond_e
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setApnSetting(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 3182
    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 3183
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3184
    const-string v5, "onDisconnectDone: isOnlySigneDcAllowed true so setup single apn"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3185
    const-string v5, "SinglePdnArbitration"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3187
    :cond_f
    const-string v5, "onDisconnectDone: not retrying"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onEnableApn(II)V
    .locals 4
    .param p1, "apnId"    # I
    .param p2, "enabled"    # I

    .prologue
    const/4 v1, 0x1

    .line 2693
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2694
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 2695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableApn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): NO ApnContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 2701
    :goto_0
    return-void

    .line 2699
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnableApn: apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call applyNewState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2700
    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onIratEnded(Ljava/lang/Object;)V
    .locals 7
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const v6, 0x42013

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IRAT_DcTracker] onIratEnded: info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v1, p1

    .line 5480
    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;

    .line 5481
    .local v1, "mdIratInfo":Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDuringIrat:Z

    .line 5483
    iget-object v2, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->type:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->isFailCase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5484
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5485
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreationConfig:Z

    if-eqz v2, :cond_0

    .line 5486
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    .line 5490
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updatePhoneIfNeeded(Lcom/android/internal/telephony/PhoneBase;)V

    .line 5492
    iget-object v2, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->type:Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo$IratType;->isFallbackCase()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5493
    const v2, 0x45002

    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 5495
    .local v0, "disconnectMessage":Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->resetDcAndApnContext()V

    .line 5496
    const-string v2, "CdmaIratEnded"

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    .line 5498
    iget v2, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->sourceRat:I

    iget v3, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/MdIratInfo;->targetRat:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateIccRecordAndApn(II)V

    .line 5500
    iput-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSetupDataBlocked:Z

    .line 5502
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingApnChange:Z

    .line 5505
    .end local v0    # "disconnectMessage":Landroid/os/Message;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5506
    const-string v2, "[IRAT_DcTracker] onIratEnded: start polling"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5507
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 5508
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 5511
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IRAT_DcTracker] onIratEnded: mHasPendingApnChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingApnChange:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mHasPendingInitialApnRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingInitialApnRequest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mHasPendingLteRecordLoaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingLteRecordLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5516
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingApnChange:Z

    if-eqz v2, :cond_3

    .line 5517
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->removeMessages(I)V

    .line 5518
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 5519
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingApnChange:Z

    .line 5522
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingInitialApnRequest:Z

    if-eqz v2, :cond_4

    .line 5523
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInitialAttachApn()V

    .line 5524
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingInitialApnRequest:Z

    .line 5527
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingLteRecordLoaded:Z

    if-eqz v2, :cond_5

    .line 5528
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onLteRecordsLoaded()V

    .line 5529
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mHasPendingLteRecordLoaded:Z

    .line 5531
    :cond_5
    return-void
.end method

.method public onIratStarted(Ljava/lang/Object;)V
    .locals 2
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 5463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IRAT_DcTracker] onIratStarted: info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsDuringIrat:Z

    .line 5465
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5466
    const-string v0, "[IRAT_DcTracker] onIratStarted: stop polling"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5467
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 5468
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 5471
    :cond_0
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2759
    const-string v1, "onRadioAvailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2760
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2764
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2766
    const-string v1, "onRadioAvailable: We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2769
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2770
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2771
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2774
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_2

    .line 2775
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2777
    :cond_2
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2784
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 2787
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2788
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAutoAttachOnCreation:Z

    .line 2790
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2793
    const-string v0, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2794
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2800
    :goto_0
    return-void

    .line 2796
    :cond_0
    const-string v0, "onRadioOffOrNotAvailable: is off and clean up all connections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2797
    const-string v0, "radioTurnedOff"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    goto :goto_0
.end method

.method protected onRoamingOff()V
    .locals 3

    .prologue
    .line 2718
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    .line 2721
    .local v0, "bDataOnRoamingEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoamingOff bDataOnRoamingEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserDataEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2725
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-nez v1, :cond_0

    .line 2733
    :goto_0
    return-void

    .line 2727
    :cond_0
    if-nez v0, :cond_1

    .line 2728
    const-string v1, "roamingOff"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2729
    const-string v1, "roamingOff"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0

    .line 2731
    :cond_1
    const-string v1, "roamingOff"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOn()V
    .locals 3

    .prologue
    .line 2737
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    .line 2740
    .local v0, "bDataOnRoamingEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoamingOn bDataOnRoamingEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUserDataEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2744
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    if-nez v1, :cond_0

    .line 2755
    :goto_0
    return-void

    .line 2746
    :cond_0
    if-eqz v0, :cond_1

    .line 2747
    const-string v1, "onRoamingOn: setup data on roaming"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2748
    const-string v1, "roamingOn"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 2749
    const-string v1, "roamingOn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 2751
    :cond_1
    const-string v1, "onRoamingOn: Tear down data connection on roaming."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2752
    const/4 v1, 0x1

    const-string v2, "roamingOn"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 2753
    const-string v1, "roamingOn"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "met"    # Z

    .prologue
    .line 2498
    const-string v1, "hipri"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2512
    :cond_0
    :goto_0
    return-void

    .line 2500
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2501
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_2

    .line 2502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDependencyMet: ApnContext not found in onSetDependencyMet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2506
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    .line 2507
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2509
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "hipri"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2510
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    goto :goto_0
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 4268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetInternalDataEnabled: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    .line 4270
    return-void
.end method

.method protected onSetInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    .prologue
    .line 4273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetInternalDataEnabled: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4274
    const/4 v0, 0x1

    .line 4276
    .local v0, "sendOnComplete":Z
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4277
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    .line 4278
    if-eqz p1, :cond_1

    .line 4279
    const-string v1, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4280
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 4286
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4288
    if-eqz v0, :cond_0

    .line 4289
    if-eqz p2, :cond_0

    .line 4290
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 4293
    :cond_0
    return-void

    .line 4282
    :cond_1
    const/4 v0, 0x0

    .line 4283
    :try_start_1
    const-string v1, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4284
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 4286
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onSharedDefaultApnState(I)V
    .locals 3
    .param p1, "newDefaultRefCount"    # I

    .prologue
    const/4 v2, 0x1

    .line 3322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSharedDefaultApnState: newDefaultRefCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", curDefaultRefCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDefaultRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3325
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDefaultRefCount:I

    if-eq p1, v0, :cond_0

    .line 3326
    if-le p1, v2, :cond_1

    .line 3327
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSharedDefaultApn:Z

    .line 3331
    :goto_0
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDefaultRefCount:I

    .line 3333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSharedDefaultApnState: mSharedDefaultApn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSharedDefaultApn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3335
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSharedDefaultApn:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifySharedDefaultApn(Z)V

    .line 3337
    :cond_0
    return-void

    .line 3329
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSharedDefaultApn:Z

    goto :goto_0
.end method

.method protected onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 2712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: apnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2713
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2707
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 2708
    const/4 v0, 0x1

    return v0
.end method

.method protected onUpdateIcc()V
    .locals 12

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 4112
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v9, :cond_1

    .line 4195
    :cond_0
    :goto_0
    return-void

    .line 4117
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccFamily(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v1

    .line 4118
    .local v1, "family":I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 4119
    .local v2, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4120
    .local v6, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onUpdateIcc: family = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newIccRecords = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", r = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4123
    if-eq v6, v2, :cond_3

    .line 4124
    if-eqz v6, :cond_2

    .line 4125
    const-string v9, "Removing stale icc objects."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4127
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4129
    :cond_2
    if-eqz v2, :cond_8

    .line 4130
    const-string v9, "New records found"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4131
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4140
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    if-nez v6, :cond_4

    if-nez v2, :cond_4

    .line 4141
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 4145
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4146
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 4147
    .local v3, "newLteIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4148
    .local v5, "oldLteIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[IRAT_DcTracker] Register for LTE IccRecords: newLteIccRecords = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", oldLteIccRecords = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4156
    if-eqz v5, :cond_5

    .line 4157
    const-string v9, "Removing stale LTE icc objects."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4158
    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 4159
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4162
    if-ne v5, v2, :cond_5

    .line 4163
    const v9, 0x42002

    invoke-virtual {v2, p0, v9, v11}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4167
    :cond_5
    if-eqz v3, :cond_6

    .line 4168
    const-string v9, "New LTE records found"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4169
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mLteIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4170
    const v9, 0x45001

    invoke-virtual {v3, p0, v9, v11}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4176
    .end local v3    # "newLteIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v5    # "oldLteIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccCardApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4177
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v10

    if-ne v10, v7, :cond_9

    :goto_2
    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    .line 4181
    .local v4, "newUiccCardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v4, :cond_0

    .line 4182
    if-eqz v0, :cond_7

    .line 4183
    const-string v7, "Removing stale UiccCardApplication objects."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4184
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForFdnChanged(Landroid/os/Handler;)V

    .line 4185
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccCardApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4188
    :cond_7
    if-eqz v4, :cond_0

    .line 4189
    const-string v7, "New UiccCardApplication found"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4190
    const v7, 0x421fb

    invoke-virtual {v4, p0, v7, v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForFdnChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4191
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUiccCardApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4135
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "newUiccCardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 4136
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_9
    move v7, v8

    .line 4177
    goto :goto_2
.end method

.method protected onVoiceCallEnded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3260
    const-string v0, "onVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3261
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    .line 3263
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3265
    const-string v0, "onVoiceCallEnded: default data disable, cleanup default apn."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3267
    const/4 v0, 0x1

    const-string v1, "dataDisabled"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 3270
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3271
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3272
    const-string v0, "onVoiceCallEnded start polling"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3273
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 3274
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 3275
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3282
    :cond_1
    :goto_0
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 3283
    return-void

    .line 3278
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->resetPollStats()V

    goto :goto_0
.end method

.method protected onVoiceCallEndedPeer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3304
    const-string v0, "onVoiceCallEndedPeer"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3306
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    .line 3307
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConcurrentVoiceAndDataAllowedWithPeer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3309
    const-string v0, "onVoiceCallEndedPeer start polling"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3311
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 3312
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startDataStallAlarm(Z)V

    .line 3313
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3316
    :cond_0
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 3317
    return-void
.end method

.method protected onVoiceCallStarted()V
    .locals 1

    .prologue
    .line 3248
    const-string v0, "onVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    .line 3250
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3251
    const-string v0, "onVoiceCallStarted stop polling"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3252
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 3253
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 3254
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3256
    :cond_0
    return-void
.end method

.method protected onVoiceCallStartedPeer()V
    .locals 2

    .prologue
    .line 3288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVoiceCallStartedPeer mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInVoiceCall:Z

    .line 3291
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConcurrentVoiceAndDataAllowedWithPeer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3293
    const-string v0, "onVoiceCallStartedPeer stop polling"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 3295
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 3296
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopDataStallAlarm()V

    .line 3297
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 3299
    :cond_0
    return-void
.end method

.method public declared-synchronized pcscfDiscovery(Ljava/lang/String;ILandroid/os/Message;)I
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4907
    monitor-enter p0

    const v1, 0x42209

    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;ILandroid/os/Message;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4908
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4909
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 4907
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4253
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4255
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4256
    const-string v0, "notify All Data Disconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyAllDataDisconnected()V

    .line 4259
    :cond_0
    return-void
.end method

.method protected registerForAllEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerForAllEvents: mPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42001

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42006

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42004

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 401
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42008

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42007

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42016

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42017

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42205

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDedicateBearerActivated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42206

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDedicateBearerModified(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42207

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDedicateBearerDeactivated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42211

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteAccessStratumState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 428
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42010

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42009

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42029

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x4220d

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRemoveRestrictEutran(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x4220f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForResetAttachApn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 442
    :cond_1
    return-void
.end method

.method protected restartRadio()V
    .locals 3

    .prologue
    .line 2216
    const-string v1, "restartRadio: ************TURN OFF RADIO**************"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2217
    const/4 v1, 0x1

    const-string v2, "radioTurnedOff"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 2218
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 2227
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2228
    .local v0, "reset":I
    const-string v1, "net.ppp.reset-by-timeout"

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    return-void
.end method

.method public setDataAllowed(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataAllowed: enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4330
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsCleanupRequired:Z

    .line 4333
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4334
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 4338
    :goto_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    .line 4339
    return-void

    .line 4330
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4336
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getRilDcArbitrator()Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/IRilDcArbitrator;->setDataAllowed(ZLandroid/os/Message;)V

    goto :goto_1
.end method

.method public declared-synchronized setDefaultBearerConfig(Ljava/lang/String;Lcom/mediatek/internal/telephony/DefaultBearerConfig;)I
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "defaultBearerConfig"    # Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    .prologue
    .line 4824
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 4825
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDefaultBearerConfig(Lcom/mediatek/internal/telephony/DefaultBearerConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4827
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 4824
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setImsRegistrationState(Z)V
    .locals 3
    .param p1, "registered"    # Z

    .prologue
    .line 4404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsRegistrationState - mImsRegistrationState(before): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mImsRegistrationState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", registered(current) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4407
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_1

    .line 4413
    :cond_0
    :goto_0
    return-void

    .line 4409
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    .line 4410
    .local v0, "sst":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v0, :cond_0

    .line 4412
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setImsRegistrationState(Z)V

    goto :goto_0
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)Z
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 4310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4312
    const v1, 0x4201b

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4313
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4314
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4315
    return v2

    .line 4313
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 4296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInternalDataEnabledFlag("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4298
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    if-eq v0, p1, :cond_0

    .line 4299
    iput-boolean p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mInternalDataEnabled:Z

    .line 4301
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/internal/telephony/DctConstants$State;

    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState should not be used in GSM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method protected supplyMessenger()V
    .locals 3

    .prologue
    .line 674
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 676
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 677
    const/4 v1, 0x2

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 678
    const/4 v1, 0x3

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 679
    const/4 v1, 0x4

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 680
    const/4 v1, 0x5

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 681
    const/16 v1, 0xa

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 682
    const/16 v1, 0xb

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 683
    const/16 v1, 0xc

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 684
    const/16 v1, 0xf

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 685
    const/16 v1, 0x28

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 686
    const/16 v1, 0x29

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 687
    return-void
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 4262
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 4263
    return-void
.end method

.method protected unregisterForAllEvents()V
    .locals 3

    .prologue
    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterForAllEvents: mPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 494
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 495
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForVoiceCallEventSvlte()V

    .line 500
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOn(Landroid/os/Handler;)V

    .line 501
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    .line 502
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 503
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 507
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDedicateBearerActivated(Landroid/os/Handler;)V

    .line 508
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDedicateBearerModified(Landroid/os/Handler;)V

    .line 509
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDedicateBearerDeactivated(Landroid/os/Handler;)V

    .line 511
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 513
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 523
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRemoveRestrictEutran(Landroid/os/Handler;)V

    .line 525
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForResetAttachApn(Landroid/os/Handler;)V

    .line 528
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    return-void

    .line 497
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 498
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 4198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4202
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    .line 4204
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mUserDataEnabled:Z

    .line 4206
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v0, :cond_0

    .line 4207
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->updateCurrentCarrierInProvider()Z

    .line 4208
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->supplyMessenger()V

    .line 4215
    :goto_0
    return-void

    .line 4209
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_1

    .line 4210
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 4211
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->supplyMessenger()V

    goto :goto_0

    .line 4213
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized updateActivatedConcatenatedBearer(Lcom/mediatek/internal/telephony/DedicateBearerProperties;Z)V
    .locals 6
    .param p1, "properties"    # Lcom/mediatek/internal/telephony/DedicateBearerProperties;
    .param p2, "sentNotification"    # Z

    .prologue
    .line 4922
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dedicate] updateActivatedConcatenatedBearer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4923
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getFreeDedicateDataConnection()Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    move-result-object v1

    .line 4924
    .local v1, "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    const/4 v0, 0x0

    .line 4925
    .local v0, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    if-nez v1, :cond_0

    .line 4926
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDedicateDataConnection()Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    move-result-object v1

    .line 4928
    :cond_0
    if-nez v1, :cond_1

    .line 4929
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "updateActivatedConcatenatedBearer ddc is not found and not created"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4922
    .end local v0    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .end local v1    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 4931
    .restart local v0    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    .restart local v1    # "ddc":Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    iget v5, p1, Lcom/mediatek/internal/telephony/DedicateBearerProperties;->interfaceId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 4932
    .restart local v0    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;->setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 4934
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 4935
    .local v3, "msg":Landroid/os/Message;
    const v4, 0x42208

    iput v4, v3, Landroid/os/Message;->what:I

    .line 4936
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4937
    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_0
    iput v4, v3, Landroid/os/Message;->arg2:I

    .line 4940
    new-instance v2, Lcom/mediatek/internal/telephony/DedicateDataCallState;

    invoke-direct {v2}, Lcom/mediatek/internal/telephony/DedicateDataCallState;-><init>()V

    .line 4941
    .local v2, "dedicateDataCallState":Lcom/mediatek/internal/telephony/DedicateDataCallState;
    const/4 v4, 0x2

    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v5

    invoke-virtual {v2, v4, v5, p1}, Lcom/mediatek/internal/telephony/DedicateDataCallState;->readFrom(IILcom/mediatek/internal/telephony/DedicateBearerProperties;)V

    .line 4942
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateDedicateBearer(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateDataCallState;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4943
    monitor-exit p0

    return-void

    .line 4937
    .end local v2    # "dedicateDataCallState":Lcom/mediatek/internal/telephony/DedicateDataCallState;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public updateCsPhoneForSvlte(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "newCsPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 6015
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForVoiceCallEventSvlte()V

    .line 6016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IRAT_DcTracker] updateCsPhoneForSvlte: newCsPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 6018
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    .line 6019
    .local v0, "ct":Lcom/android/internal/telephony/CallTracker;
    const v1, 0x42007

    const v2, 0x42008

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForCallEvents(Lcom/android/internal/telephony/CallTracker;II)V

    .line 6021
    return-void
.end method

.method public updatePhoneIfNeeded(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "newPsPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 5885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IRAT_DcTracker]updatePhoneIfNeeded: mPhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newPhone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsPsRestricted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5890
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 5891
    const-string v2, "[IRAT_DcTracker] Doesn\'t need to update phone for same phone type."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 5918
    :goto_0
    return-void

    .line 5895
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllEvents()V

    .line 5896
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 5897
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllEvents()V

    .line 5900
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForVoiceCallEventSvlte()V

    .line 5903
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIsPsRestricted:Z

    .line 5906
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcController;->updatePhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 5909
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 5910
    .local v0, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updatePhone(Lcom/android/internal/telephony/PhoneBase;)V

    goto :goto_1

    .line 5914
    .end local v0    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->updatePhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 5917
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->updatePhone(Lcom/android/internal/telephony/PhoneBase;)V

    goto :goto_0
.end method

.method public updateRecords()V
    .locals 0

    .prologue
    .line 4223
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()V

    .line 4224
    return-void
.end method
