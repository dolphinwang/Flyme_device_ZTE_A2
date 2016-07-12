.class public Lcom/android/internal/telephony/gsm/GSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GSMPhone$2;,
        Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;,
        Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    }
.end annotation


# static fields
.field public static final ACT_TYPE_GSM:Ljava/lang/String; = "0"

.field public static final ACT_TYPE_LTE:Ljava/lang/String; = "7"

.field public static final ACT_TYPE_UTRAN:Ljava/lang/String; = "2"

.field private static final CFU_QUERY_ICCID_PROP:Ljava/lang/String; = "persist.radio.cfu.iccid."

.field private static final CFU_QUERY_MAX_COUNT:I = 0x3c

.field private static final CFU_QUERY_PROPERTY_NAME:Ljava/lang/String; = "gsm.poweron.cfu.query."

.field private static final CFU_QUERY_SIM_CHANGED_PROP:Ljava/lang/String; = "persist.radio.cfu.change."

.field public static final CIPHERING_KEY:Ljava/lang/String; = "ciphering_key"

.field private static final LOCAL_DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSMPhone"

.field public static final LTE_INDICATOR:Ljava/lang/String; = "4G"

.field private static final MTK_IMS_SUPPORT:Z

.field static final MTK_SWITCH_ANTENNA_SUPPORT:Z

.field private static final PHONE_COUNT:I

.field public static final TBCW_NOT_OPTBCW:I = 0x1

.field public static final TBCW_OPTBCW_NOT_VOLTE_USER:I = 0x3

.field public static final TBCW_OPTBCW_VOLTE_USER:I = 0x2

.field public static final TBCW_UNKNOWN:I = 0x0

.field public static final UTRAN_INDICATOR:Ljava/lang/String; = "3G"

.field private static final VDBG:Z = false

.field public static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field public static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"

.field private static final cfuQueryWaitTime:I = 0x3e8


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field private mCachedCrssn:Landroid/os/AsyncResult;

.field private mCachedSsn:Landroid/os/AsyncResult;

.field private mCallEstablished:Z

.field mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

.field private mCallState:I

.field private mCfuQueryRetryCount:I

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field mGsmPhoneExt:Lcom/mediatek/common/telephony/IGsmPhoneExt;

.field private mImei:Ljava/lang/String;

.field private mImeiAbnormal:I

.field private mImeiSv:Ljava/lang/String;

.field private mImsExtInfo:Ljava/lang/String;

.field private mImsStatus:Z

.field public mIsNetworkInitiatedUssd:Z

.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field private mRatMode:I

.field mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

.field mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSsnRegistrants:Landroid/os/RegistrantList;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

.field private mTbcwMode:I

.field private mVmNumber:Ljava/lang/String;

.field private needQueryCfu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 246
    const-string v0, "ro.mtk_switch_antenna"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->MTK_SWITCH_ANTENNA_SUPPORT:Z

    .line 248
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone;->PHONE_COUNT:I

    .line 541
    const-string v0, "ro.mtk_ims_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->MTK_IMS_SUPPORT:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I

    .prologue
    .line 317
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 272
    const-string v1, "GSM"

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 179
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 190
    iput v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiAbnormal:I

    .line 201
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    .line 205
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 206
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 210
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z

    .line 215
    iput v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    .line 228
    iput v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    .line 242
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsStatus:Z

    .line 251
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallEstablished:Z

    .line 266
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    .line 3611
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone$1;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 275
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v9}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 279
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 281
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 283
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    const-string v0, "IRAT support, doesn\'t create DcTracker here."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 291
    :goto_0
    if-nez p4, :cond_1

    .line 292
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 293
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v9, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x13

    invoke-virtual {v0, p0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x24

    invoke-interface {v0, p0, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v1, 0x29

    invoke-virtual {v0, p0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    .line 308
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v0, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    return-void

    .line 287
    .end local v6    # "filter":Landroid/content/IntentFilter;
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I

    .prologue
    .line 323
    const-string v1, "GSM"

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 179
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiAbnormal:I

    .line 201
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsStatus:Z

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallEstablished:Z

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    .line 3611
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone$1;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 325
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 326
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 330
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 332
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 335
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 338
    const-string v0, "IRAT support, doesn\'t create DcTracker here."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 344
    :goto_0
    if-nez p4, :cond_1

    .line 345
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 346
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 350
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    .line 352
    const-string v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    invoke-interface {v0, p1, p5}, Lcom/mediatek/common/telephony/ISupplementaryServiceExt;->registerReceiver(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    if-nez p5, :cond_3

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAbnormalEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v1, 0x29

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRelatedSuppSvc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 381
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 382
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v0, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSMPhone: constructor: sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    .line 392
    return-void

    .line 340
    .end local v8    # "filter":Landroid/content/IntentFilter;
    :cond_4
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    goto/16 :goto_0

    .line 359
    :catch_0
    move-exception v7

    .line 360
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GSMPhone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GSMPhone;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p1, "x1"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GSMPhone;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 150
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/GSMPhone;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p1, "x1"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GSMPhone;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p1, "x1"    # I

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isIccCardMncMccAvailable(I)Z

    move-result v0

    return v0
.end method

.method private getActivePhone(I)Lcom/android/internal/telephony/PhoneBase;
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 3976
    const/4 v0, 0x0

    .line 3977
    .local v0, "csPhone":Lcom/android/internal/telephony/PhoneBase;
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 3979
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v2, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 3980
    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getCsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .end local v0    # "csPhone":Lcom/android/internal/telephony/PhoneBase;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 3985
    .restart local v0    # "csPhone":Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivePhone: Phone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,csPhone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    return-object v0

    :cond_0
    move-object v2, v1

    .line 3982
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .end local v0    # "csPhone":Lcom/android/internal/telephony/PhoneBase;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .restart local v0    # "csPhone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_0
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1422
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1423
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vm_sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleAbnormalEvent([Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2888
    aget-object v4, p1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2889
    .local v2, "caseId":I
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2890
    .local v0, "argNum":I
    packed-switch v2, :pswitch_data_0

    .line 2905
    const-string v4, "Unknown abnormal case"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2908
    :goto_0
    return-void

    .line 2892
    :pswitch_0
    const-string v4, "B40 broken"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2893
    const/4 v4, 0x3

    new-array v1, v4, [I

    .line 2894
    .local v1, "bandMode":[I
    const/16 v4, 0x64

    aput v4, v1, v5

    .line 2895
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 2896
    add-int/lit8 v4, v3, 0x2

    aget-object v4, p1, v4

    const-string v5, "4294967295"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, 0x2

    aget-object v4, p1, v4

    const-string v5, "FFFFFFFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2897
    :cond_0
    add-int/lit8 v4, v3, 0x1

    const/4 v5, -0x1

    aput v5, v1, v4

    .line 2895
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2899
    :cond_1
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v3, 0x2

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v4

    goto :goto_2

    .line 2902
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setBandMode([ILandroid/os/Message;)V

    goto :goto_0

    .line 2890
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 934
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 935
    const/4 v1, 0x0

    .line 953
    :cond_0
    :goto_0
    return v1

    .line 938
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 939
    const-string v2, "GSMPhone"

    const-string v3, "MmiCode 0: rejectCall"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSMPhone"

    const-string v3, "reject failed"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 947
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    .line 948
    const-string v2, "GSMPhone"

    const-string v3, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 10
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 999
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1001
    .local v5, "len":I
    const/4 v7, 0x2

    if-le v5, v7, :cond_0

    .line 1002
    const/4 v6, 0x0

    .line 1046
    :goto_0
    return v6

    .line 1005
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 1007
    .local v0, "call":Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v5, v6, :cond_2

    .line 1009
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1010
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    .line 1011
    .local v1, "callIndex":I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v3

    .line 1014
    .local v3, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v3, :cond_1

    if-lt v1, v6, :cond_1

    const/4 v7, 0x7

    if-gt v1, v7, :cond_1

    .line 1015
    const-string v7, "GSMPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MmiCode 2: separate call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1023
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v4

    .line 1024
    .local v4, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSMPhone"

    const-string v8, "separate failed"

    invoke-static {v7, v8, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 1019
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    .restart local v1    # "callIndex":I
    .restart local v2    # "ch":C
    .restart local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    :try_start_1
    const-string v7, "GSMPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "separate: invalid call index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1030
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_3

    .line 1031
    const-string v7, "GSMPhone"

    const-string v8, "MmiCode 2: accept ringing call"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1039
    :catch_1
    move-exception v4

    .line 1040
    .restart local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSMPhone"

    const-string v8, "switch failed"

    invoke-static {v7, v8, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto/16 :goto_0

    .line 1035
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_3
    const-string v7, "GSMPhone"

    const-string v8, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 9
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 958
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 960
    .local v4, "len":I
    const/4 v6, 0x2

    if-le v4, v6, :cond_1

    .line 961
    const/4 v5, 0x0

    .line 995
    :cond_0
    :goto_0
    return v5

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 967
    .local v0, "call":Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v4, v5, :cond_2

    .line 968
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 969
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    .line 971
    .local v1, "callIndex":I
    if-lt v1, v5, :cond_0

    const/4 v6, 0x7

    if-gt v1, v6, :cond_0

    .line 972
    const-string v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 989
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    :catch_0
    move-exception v3

    .line 990
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v6, "GSMPhone"

    const-string v7, "hangup failed"

    invoke-static {v6, v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 992
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 978
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    .line 979
    const-string v6, "GSMPhone"

    const-string v7, "MmiCode 1: hangup foreground"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0

    .line 984
    :cond_3
    const-string v6, "GSMPhone"

    const-string v7, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1074
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1075
    const/4 v0, 0x0

    .line 1081
    :goto_0
    return v0

    .line 1078
    :cond_0
    const-string v1, "GSMPhone"

    const-string v2, "MmiCode 5: CCBS not supported!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleCfuInTimeSlotQueryResult([Lcom/android/internal/telephony/CallForwardInfoEx;)V
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfoEx;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3539
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3540
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    .line 3541
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 3544
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 3556
    :cond_1
    :goto_0
    return-void

    .line 3546
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p1

    .local v2, "s":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 3547
    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfoEx;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 3548
    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfoEx;->status:I

    if-ne v5, v4, :cond_3

    move v3, v4

    :cond_3
    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/internal/telephony/CallForwardInfoEx;->number:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 3550
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/android/internal/telephony/CallForwardInfoEx;->timeSlot:[J

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveTimeSlot([J)V

    goto :goto_0

    .line 3546
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3011
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3012
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    .line 3013
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 3016
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 3028
    :cond_1
    :goto_0
    return-void

    .line 3018
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p1

    .local v2, "s":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 3019
    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 3020
    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v4, :cond_3

    move v3, v4

    :cond_3
    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_0

    .line 3018
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1062
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1064
    .local v0, "len":I
    if-eq v0, v1, :cond_0

    .line 1065
    const/4 v1, 0x0

    .line 1070
    :goto_0
    return v1

    .line 1068
    :cond_0
    const-string v2, "GSMPhone"

    const-string v3, "MmiCode 4: explicit call transfer"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->explicitCallTransfer()V

    goto :goto_0
.end method

.method private handleImsUtCsfb(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3856
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/SuppSrvRequest;

    .line 3857
    .local v17, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    if-nez v17, :cond_0

    .line 3858
    const-string v1, "GSMPhone"

    const-string v6, "handleImsUtCsfb: Error SuppSrvRequest null!"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3967
    :goto_0
    return-void

    .line 3862
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isDuringImsCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3864
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v16

    .line 3865
    .local v16, "resultCallback":Landroid/os/Message;
    if-eqz v16, :cond_1

    .line 3866
    new-instance v7, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3868
    .local v7, "ce":Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v1, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3869
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V

    .line 3872
    .end local v7    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 3873
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 3876
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SuppSrvRequest;->setResultCallback(Landroid/os/Message;)V

    .line 3877
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 3881
    .end local v16    # "resultCallback":Landroid/os/Message;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getRequestCode()I

    move-result v15

    .line 3882
    .local v15, "requestCode":I
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3883
    packed-switch v15, :pswitch_data_0

    .line 3961
    :pswitch_0
    const-string v1, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleImsUtCsfb: invalid requestCode = "

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SuppSrvRequest;->setResultCallback(Landroid/os/Message;)V

    .line 3966
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 3886
    :pswitch_1
    const-string v1, "GSMPhone"

    const-string v6, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CF"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3888
    .local v3, "commandInterfaceCFReason":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_1

    .line 3893
    .end local v3    # "commandInterfaceCFReason":I
    :pswitch_2
    const-string v1, "GSMPhone"

    const-string v6, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CF"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3895
    .local v2, "commandInterfaceCFAction":I
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3896
    .restart local v3    # "commandInterfaceCFReason":I
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3897
    .local v4, "dialingNumber":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3898
    .local v5, "timerSeconds":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    .line 3904
    .end local v2    # "commandInterfaceCFAction":I
    .end local v3    # "commandInterfaceCFReason":I
    .end local v4    # "dialingNumber":Ljava/lang/String;
    .end local v5    # "timerSeconds":I
    :pswitch_3
    const-string v1, "GSMPhone"

    const-string v6, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CLIR"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_1

    .line 3910
    :pswitch_4
    const-string v1, "GSMPhone"

    const-string v6, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CLIR"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3912
    .local v8, "commandInterfaceCLIRMode":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 3917
    .end local v8    # "commandInterfaceCLIRMode":I
    :pswitch_5
    const-string v1, "GSMPhone"

    const-string v6, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CW"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3923
    :pswitch_6
    const-string v1, "GSMPhone"

    const-string v6, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CW"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3924
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3925
    .local v11, "enableState":I
    if-eqz v11, :cond_4

    const/4 v10, 0x1

    .line 3926
    .local v10, "enable":Z
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallWaiting(ZLandroid/os/Message;)V

    goto/16 :goto_1

    .line 3925
    .end local v10    # "enable":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 3931
    .end local v11    # "enableState":I
    :pswitch_7
    const-string v1, "GSMPhone"

    const-string v6, "handleImsUtCsfb: SUPP_SRV_REQ_GET_CB"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3933
    .local v13, "facility":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3934
    .local v14, "password":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3939
    .end local v13    # "facility":Ljava/lang/String;
    .end local v14    # "password":Ljava/lang/String;
    :pswitch_8
    const-string v1, "GSMPhone"

    const-string v6, "handleImsUtCsfb: SUPP_SRV_REQ_SET_CB"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 3941
    .restart local v13    # "facility":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3942
    .restart local v11    # "enableState":I
    if-eqz v11, :cond_5

    const/4 v10, 0x1

    .line 3943
    .restart local v10    # "enable":Z
    :goto_3
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 3944
    .restart local v14    # "password":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10, v14, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3942
    .end local v10    # "enable":Z
    .end local v14    # "password":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 3949
    .end local v11    # "enableState":I
    .end local v13    # "facility":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3950
    .local v9, "dialString":Ljava/lang/String;
    const-string v1, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleImsUtCsfb: SUPP_SRV_REQ_MMI_CODE: dialString = "

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 3954
    :catch_0
    move-exception v12

    .line 3955
    .local v12, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GSMPhone"

    const-string v6, "handleImsUtCsfb: SUPP_SRV_REQ_MMI_CODE: CallStateException!"

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    invoke-virtual {v12}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto/16 :goto_1

    .line 3883
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1051
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1052
    const/4 v0, 0x0

    .line 1057
    :goto_0
    return v0

    .line 1055
    :cond_0
    const-string v1, "GSMPhone"

    const-string v2, "MmiCode 3: merge calls"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->conference()V

    goto :goto_0
.end method

.method private handleUdubIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 917
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 918
    const/4 v0, 0x0

    .line 928
    :cond_0
    :goto_0
    return v0

    .line 921
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 923
    :cond_2
    const-string v1, "GSMPhone"

    const-string v2, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0
.end method

.method private isIccCardMncMccAvailable(I)Z
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4068
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    .line 4069
    .local v2, "uiccCtl":Lcom/android/internal/telephony/uicc/UiccController;
    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 4070
    .local v0, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    .line 4071
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 4072
    .local v1, "mccMnc":Ljava/lang/String;
    const-string v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIccCardMncMccAvailable(): mccMnc is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    if-eqz v1, :cond_0

    .line 4076
    .end local v1    # "mccMnc":Ljava/lang/String;
    :goto_0
    return v3

    .restart local v1    # "mccMnc":Ljava/lang/String;
    :cond_0
    move v3, v4

    .line 4073
    goto :goto_0

    .line 4075
    .end local v1    # "mccMnc":Ljava/lang/String;
    :cond_1
    const-string v3, "GSMPhone"

    const-string v5, "isIccCardMncMccAvailable(): false"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 4076
    goto :goto_0
.end method

.method private isManualSelProhibitedInGlobalMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3119
    const/4 v2, 0x0

    .line 3120
    .local v2, "isProhibited":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3123
    .local v1, "configString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3124
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3126
    .local v0, "configArray":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-ne v3, v5, :cond_0

    aget-object v3, v0, v6

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    aget-object v3, v0, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v0, v6

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v0, v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3131
    :cond_1
    const/4 v2, 0x1

    .line 3134
    .end local v0    # "configArray":[Ljava/lang/String;
    :cond_2
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isManualNetSelAllowedInGlobal in current carrier is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    return v2
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .prologue
    .line 1571
    packed-switch p1, :pswitch_data_0

    .line 1578
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1576
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .prologue
    .line 1549
    packed-switch p1, :pswitch_data_0

    .line 1558
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1556
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 13
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2145
    const-string v8, "GSMPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onIncomingUSSD(): mIsNetworkInitiatedUssd = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    if-ne p1, v9, :cond_5

    move v4, v9

    .line 2151
    .local v4, "isUssdRequest":Z
    :goto_0
    const/4 v8, 0x4

    if-eq p1, v8, :cond_0

    const/4 v8, 0x5

    if-ne p1, v8, :cond_6

    :cond_0
    move v2, v9

    .line 2156
    .local v2, "isUssdError":Z
    :goto_1
    const/4 v8, 0x3

    if-ne p1, v8, :cond_7

    move v5, v9

    .line 2160
    .local v5, "isUssdhandleByStk":Z
    :goto_2
    const/4 v8, 0x2

    if-ne p1, v8, :cond_8

    move v3, v9

    .line 2161
    .local v3, "isUssdRelease":Z
    :goto_3
    const-string v8, "GSMPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ussdMode= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    const-string v8, "GSMPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isUssdRequest="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isUssdError= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const/4 v0, 0x0

    .line 2168
    .local v0, "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v8, "GSMPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USSD:mPendingMMIs= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "s":I
    :goto_4
    if-ge v1, v7, :cond_1

    .line 2170
    const-string v11, "GSMPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "i= "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " isPending="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2172
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 2173
    .restart local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v8, "GSMPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "found = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    :cond_1
    if-eqz v0, :cond_d

    .line 2182
    const-string v8, "GSMPhone"

    const-string v11, "setUserInitiatedMMI  TRUE"

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->setUserInitiatedMMI(Z)V

    .line 2185
    if-eqz v3, :cond_a

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    if-eqz v8, :cond_a

    .line 2186
    const-string v8, "GSMPhone"

    const-string v9, "onIncomingUSSD(): USSD_MODE_NW_RELEASE."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdRelease()V

    .line 2229
    :cond_2
    :goto_5
    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    .line 2230
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    .line 2233
    :cond_4
    return-void

    .end local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v1    # "i":I
    .end local v2    # "isUssdError":Z
    .end local v3    # "isUssdRelease":Z
    .end local v4    # "isUssdRequest":Z
    .end local v5    # "isUssdhandleByStk":Z
    .end local v7    # "s":I
    :cond_5
    move v4, v10

    .line 2147
    goto/16 :goto_0

    .restart local v4    # "isUssdRequest":Z
    :cond_6
    move v2, v10

    .line 2151
    goto/16 :goto_1

    .restart local v2    # "isUssdError":Z
    :cond_7
    move v5, v10

    .line 2156
    goto/16 :goto_2

    .restart local v5    # "isUssdhandleByStk":Z
    :cond_8
    move v3, v10

    .line 2160
    goto/16 :goto_3

    .line 2169
    .restart local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v1    # "i":I
    .restart local v3    # "isUssdRelease":Z
    .restart local v7    # "s":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 2188
    :cond_a
    if-eqz v2, :cond_b

    .line 2189
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    goto :goto_5

    .line 2190
    :cond_b
    if-eqz v5, :cond_c

    .line 2191
    invoke-virtual {v0, p2, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdStkHandling(Ljava/lang/String;Z)V

    goto :goto_5

    .line 2193
    :cond_c
    invoke-virtual {v0, p2, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_5

    .line 2203
    :cond_d
    const-string v8, "GSMPhone"

    const-string v11, "The default value of UserInitiatedMMI is FALSE"

    invoke-static {v8, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsNetworkInitiatedUssd:Z

    .line 2205
    const-string v8, "GSMPhone"

    const-string v9, "onIncomingUSSD(): Network Initialized USSD"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    if-nez v2, :cond_e

    if-eqz p2, :cond_e

    .line 2209
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p2, v4, p0, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v6

    .line 2213
    .local v6, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_5

    .line 2216
    .end local v6    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_e
    if-eqz v2, :cond_2

    .line 2218
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p2, v4, p0, v8}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssdError(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v6

    .line 2222
    .restart local v6    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_5
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .prologue
    const/4 v2, 0x0

    .line 2132
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2134
    return-void
.end method

.method private processIccRecordEvents(I)V
    .locals 0
    .param p1, "eventCode"    # I

    .prologue
    .line 2955
    packed-switch p1, :pswitch_data_0

    .line 2960
    :goto_0
    return-void

    .line 2957
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto :goto_0

    .line 2955
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private registerForSimRecordEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3139
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3140
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 3147
    :goto_0
    return-void

    .line 3143
    :cond_0
    const/16 v1, 0x1c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3145
    const/16 v1, 0x1d

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3146
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 1427
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1428
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1429
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vm_sim_imsi_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1430
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1431
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1377
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMPhone] storeVoiceMailNumber, to SP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1379
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1380
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vm_number_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1382
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1383
    return-void
.end method

.method private unregisterForSimRecordEvents()V
    .locals 2

    .prologue
    .line 3150
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3151
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 3157
    :goto_0
    return-void

    .line 3154
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    .line 3155
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 3156
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private updateVoiceMail()V
    .locals 6

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "countVoiceMessages":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 519
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageCount()I

    move-result v0

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getStoredVoiceMessageCount()I

    move-result v1

    .line 524
    .local v1, "countVoiceMessagesStored":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_1

    .line 525
    move v0, v1

    .line 527
    :cond_1
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVoiceMail countVoiceMessages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceMessageCount(I)V

    .line 530
    return-void
.end method


# virtual methods
.method public abortFemtoCellList(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3817
    const-string v0, "GSMPhone"

    const-string v1, "abortFemtoCellList()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->abortFemtoCellList(Landroid/os/Message;)V

    .line 3819
    return-void
.end method

.method public acceptCall(I)V
    .locals 2
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 829
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->acceptCall(I)V

    .line 837
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall(I)V

    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3054
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3056
    return-void
.end method

.method public canConference()Z
    .locals 2

    .prologue
    .line 853
    const/4 v0, 0x0

    .line 854
    .local v0, "canImsConference":Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    move-result v0

    .line 857
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canDial()Z
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized cancelAvailableNetworks(Landroid/os/Message;)V
    .locals 8
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1964
    monitor-enter p0

    :try_start_0
    const-string v0, "cancelAvailableNetworks"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1965
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V

    .line 1966
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v0

    int-to-long v2, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    .line 1968
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->cancelAvailableNetworks(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1969
    monitor-exit p0

    return-void

    .line 1964
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3415
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isDuringImsCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3417
    if-eqz p4, :cond_0

    .line 3418
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3420
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    const/4 v1, 0x0

    invoke-static {p4, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3421
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 3427
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return-void

    .line 3424
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newCfm"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3434
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isDuringImsCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3436
    if-eqz p5, :cond_0

    .line 3437
    new-instance v6, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v6, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3439
    .local v6, "ce":Lcom/android/internal/telephony/CommandException;
    const/4 v0, 0x0

    invoke-static {p5, v0, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3440
    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    .line 3446
    .end local v6    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return-void

    .line 3443
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public clearDataBearer()V
    .locals 1

    .prologue
    .line 3829
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->clearDataBearer()V

    .line 3830
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 877
    return-void
.end method

.method public conference()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    const-string v0, "conference() - delegated to IMS phone"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    .line 872
    :goto_0
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 14
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1160
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1162
    .local v6, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v8, 0x1

    .line 1166
    .local v8, "imsUseEnabled":Z
    :goto_0
    if-nez v8, :cond_0

    .line 1167
    const-string v11, "GSMPhone"

    const-string v12, "IMS is disabled: forced to CS"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_0
    const-string v12, "GSMPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "imsUseEnabled="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", imsPhone="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", imsPhone.isVolteEnabled()="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    :goto_1
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", imsPhone.getServiceState().getState()="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const-string v11, "GSMPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IMS: imsphone = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isEmergencyNumber = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    if-eqz v6, :cond_1

    .line 1181
    const-string v11, "GSMPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "service state = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_1
    const/4 v3, 0x0

    .line 1187
    .local v3, "bWiFiCallingIsRegistered":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v11, v12}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v11, v12}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v9, 0x1

    .line 1189
    .local v9, "wfcIsEnabled":Z
    :goto_3
    if-eqz v9, :cond_2

    .line 1190
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v12, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v11, v12}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/ims/ImsManager;->getWfcStatusCode()I

    move-result v10

    .line 1191
    .local v10, "wfcStatusCode":I
    const-string v11, "GSMPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WiFi calling status code = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/16 v11, 0x63

    if-ne v10, v11, :cond_a

    const/4 v3, 0x1

    .line 1197
    .end local v10    # "wfcStatusCode":I
    :cond_2
    :goto_4
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    .line 1199
    .local v7, "imsState":I
    :goto_5
    if-nez v7, :cond_c

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    const/4 v1, 0x1

    .line 1201
    .local v1, "bIsImsNormalCall":Z
    :goto_6
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x112007d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v2, 0x1

    .line 1204
    .local v2, "bUseImsForECC":Z
    :goto_7
    if-eqz v8, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVolteEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    if-nez v1, :cond_5

    :cond_3
    if-eqz v8, :cond_4

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    :cond_4
    if-eqz v6, :cond_11

    if-eqz v3, :cond_11

    .line 1211
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1212
    const-string v11, "GSMPhone"

    const-string v12, "has CS Call. Don\'t try IMS PS Call!"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-virtual {p0, p1, v11, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 1247
    :goto_8
    return-object v11

    .line 1162
    .end local v1    # "bIsImsNormalCall":Z
    .end local v2    # "bUseImsForECC":Z
    .end local v3    # "bWiFiCallingIsRegistered":Z
    .end local v7    # "imsState":I
    .end local v8    # "imsUseEnabled":Z
    .end local v9    # "wfcIsEnabled":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1171
    .restart local v8    # "imsUseEnabled":Z
    :cond_7
    const-string v11, "N/A"

    goto/16 :goto_1

    :cond_8
    const-string v11, "N/A"

    goto/16 :goto_2

    .line 1187
    .restart local v3    # "bWiFiCallingIsRegistered":Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1192
    .restart local v9    # "wfcIsEnabled":Z
    .restart local v10    # "wfcStatusCode":I
    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 1197
    .end local v10    # "wfcStatusCode":I
    :cond_b
    const/4 v7, 0x3

    goto :goto_5

    .line 1199
    .restart local v7    # "imsState":I
    :cond_c
    const/4 v1, 0x0

    goto :goto_6

    .line 1201
    .restart local v1    # "bIsImsNormalCall":Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 1218
    .restart local v2    # "bUseImsForECC":Z
    :cond_e
    if-nez p3, :cond_f

    .line 1219
    :try_start_0
    const-string v11, "GSMPhone"

    const-string v12, "Trying IMS PS call"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    move/from16 v0, p3

    invoke-virtual {v6, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v11

    goto :goto_8

    .line 1222
    :cond_f
    const-string v11, "ro.mtk_vilte_support"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1223
    const-string v11, "GSMPhone"

    const-string v12, "Trying IMS PS video call"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    move/from16 v0, p3

    invoke-virtual {v6, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v11

    goto :goto_8

    .line 1227
    :cond_10
    const-string v11, "GSMPhone"

    const-string v12, "Trying (non-IMS) CS video call"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-virtual {p0, p1, v11, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_8

    .line 1232
    :catch_0
    move-exception v5

    .line 1233
    .local v5, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v11, "GSMPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IMS PS call exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "imsUseEnabled ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", imsPhone ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    const-string v11, "cs_fallback"

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 1236
    new-instance v4, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .line 1237
    .local v4, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v5}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1238
    throw v4

    .line 1244
    .end local v4    # "ce":Lcom/android/internal/telephony/CallStateException;
    .end local v5    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_11
    const-string v11, "GSMPhone"

    const-string v12, "Trying (non-IMS) CS call"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-virtual {p0, p1, v11, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v11

    goto/16 :goto_8
.end method

.method public dial(Ljava/util/List;I)Lcom/android/internal/telephony/Connection;
    .locals 8
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/android/internal/telephony/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 3996
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3997
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    .line 4002
    .local v3, "imsUseEnabled":Z
    :goto_0
    if-nez v3, :cond_2

    .line 4003
    const-string v5, "GSMPhone"

    const-string v6, "IMS is disabled and can not dial conference call directly."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    :cond_0
    :goto_1
    return-object v4

    .line 3997
    .end local v3    # "imsUseEnabled":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 4007
    .restart local v3    # "imsUseEnabled":Z
    :cond_2
    if-eqz v2, :cond_3

    .line 4008
    const-string v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    :cond_3
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    .line 4015
    :try_start_0
    const-string v5, "GSMPhone"

    const-string v6, "Trying IMS PS conference call"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4017
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dial(Ljava/util/List;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 4018
    :catch_0
    move-exception v1

    .line 4020
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS PS conference call exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    const-string v5, "cs_fallback"

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4023
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .line 4024
    .local v0, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 4025
    throw v0
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1257
    move-object v2, p1

    .line 1258
    .local v2, "newDialString":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1260
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1265
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v4

    .line 1306
    :goto_0
    return-object v3

    .line 1270
    :cond_1
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1272
    .local v1, "networkPortion":Ljava/lang/String;
    const-string v3, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network portion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v1, p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1276
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v3, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialing w/ mmi \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    if-nez v0, :cond_3

    .line 1282
    if-nez p3, :cond_2

    .line 1283
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1285
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1288
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1291
    if-nez p3, :cond_4

    .line 1292
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1294
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1299
    :cond_5
    const-string v3, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[dial]mPendingMMIs.add(mmi) + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1303
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    move-object v3, v4

    .line 1306
    goto/16 :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableLocationUpdates()V

    .line 2065
    return-void
.end method

.method public dispose()V
    .locals 9

    .prologue
    .line 400
    sget-object v8, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v8

    .line 401
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 405
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSs(Landroid/os/Handler;)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V

    .line 415
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v0

    int-to-long v2, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    .line 417
    const-string v0, "GSMPhone"

    const-string v1, "GSMPhone:dispose: clear mPendingMMIs"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    .line 423
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "IRAT support, doesn\'t dispose DcTracker here."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 431
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 434
    monitor-exit v8

    .line 435
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "mode"    # I
    .param p3, "tag"    # I
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 3761
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3762
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3172
    const-string v0, "GSMPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMMIs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimPhoneBookIntManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSubInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVmNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3182
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableLocationUpdates()V

    .line 2060
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 3165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    .line 3166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->exitEmergencyCallbackMode()V

    .line 3168
    :cond_0
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    .line 887
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 451
    const-string v0, "GSMPhone"

    const-string v1, "GSMPhone finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method public forceNotifyServiceStateChange()V
    .locals 1

    .prologue
    .line 3160
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-super {p0, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 3161
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 8
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1953
    const-string v0, "getAvailableNetworks"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1955
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v0

    int-to-long v2, v0

    const/4 v4, 0x0

    const-string v5, "queryPLMN"

    const-wide/32 v6, 0x50910

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    .line 1958
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x7a328

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForGetAvailableNetworksDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1959
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1960
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCallForwardInTimeSlot(ILandroid/os/Message;)V
    .locals 4
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3464
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3465
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 3468
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardInTimeSlot(ILandroid/os/Message;)V

    .line 3491
    :cond_0
    :goto_0
    return-void

    .line 3472
    :cond_1
    if-nez p1, :cond_3

    .line 3474
    const-string v2, "GSMPhone"

    const-string v3, "requesting call forwarding in time slot query."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    const/16 v2, 0xc9

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3479
    .local v1, "resp":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/MMTelSSUtils;->isGsmUtSupport(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3481
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    goto :goto_0

    .line 3485
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0

    .line 3488
    .end local v1    # "resp":Landroid/os/Message;
    :cond_3
    if-eqz p2, :cond_0

    .line 3489
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 8
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1593
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_1

    .line 1595
    const/16 v4, 0xc

    invoke-static {v4, p2}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v3

    .line 1597
    .local v3, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    iget-object v4, v3, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    const/16 v4, 0x7d0

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1599
    .local v1, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1626
    .end local v1    # "imsUtResult":Landroid/os/Message;
    .end local v3    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_0
    :goto_0
    return-void

    .line 1603
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1604
    const-string v4, "GSMPhone"

    const-string v5, "requesting call forwarding query."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    if-nez p1, :cond_2

    .line 1607
    const/16 v4, 0xd

    invoke-virtual {p0, v4, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1613
    .local v2, "resp":Landroid/os/Message;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/MMTelSSUtils;->isGsmUtSupport(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1615
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {v4, p1, v6, v7, v2}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1609
    .end local v2    # "resp":Landroid/os/Message;
    :cond_2
    move-object v2, p2

    .restart local v2    # "resp":Landroid/os/Message;
    goto :goto_1

    .line 1621
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 1622
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 1624
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p1, v6, v7, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 6
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1828
    const-string v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallWaiting(): mTbcwMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", onComplete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    if-ne v1, v5, :cond_0

    .line 1832
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    .line 1868
    :goto_0
    return-void

    .line 1834
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1835
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v4, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_0

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1840
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_2

    .line 1847
    const-string v1, "GSMPhone"

    const-string v2, "getCallWaiting(): IMS in service"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    iput v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    .line 1849
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 1850
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTerminalBasedCallWaiting(Landroid/os/Message;)V

    goto :goto_0

    .line 1855
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSUtils;->isGsmUtSupport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1857
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {v1, v4, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_0

    .line 1864
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1865
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 1867
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v4, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3065
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3067
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 694
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 696
    .local v0, "ret":Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 697
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 715
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 720
    :cond_0
    :goto_0
    return-object v0

    .line 699
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 700
    goto :goto_0

    .line 703
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 704
    goto :goto_0

    .line 707
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 708
    goto :goto_0

    .line 711
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 712
    goto :goto_0

    .line 697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 2050
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 10
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 546
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 547
    .local v5, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]  getDataConnectionState, mtk_ims_support:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/telephony/gsm/GSMPhone;->MTK_IMS_SUPPORT:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " E "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 550
    if-nez p1, :cond_0

    .line 551
    const-string p1, ""

    .line 555
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v7, :cond_2

    .line 558
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] C1: mSST null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 559
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 688
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]  getDataConnectionState X, return state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 689
    return-object v5

    .line 560
    :cond_2
    const-string v7, "emergency"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v7

    if-eqz v7, :cond_4

    .line 567
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] C2: dataConnectionState is not in service"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 568
    sget-boolean v7, Lcom/android/internal/telephony/gsm/GSMPhone;->MTK_IMS_SUPPORT:Z

    if-eqz v7, :cond_3

    const-string v7, "ims"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 569
    sget-object v7, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 585
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 586
    goto :goto_0

    .line 571
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] apnType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is in retrying state!! return connecting state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 573
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 574
    goto/16 :goto_0

    .line 576
    :pswitch_1
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 577
    goto/16 :goto_0

    .line 580
    :pswitch_2
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 581
    goto/16 :goto_0

    .line 589
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 591
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 596
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] C3: apnType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", apnTypeEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", apnTypeActive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 600
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 602
    :cond_6
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    .line 603
    .local v6, "state":Lcom/android/internal/telephony/DctConstants$State;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] C4: mSST.gprsState is in service, DcTracker.getState(apnType):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 605
    sget-object v7, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    .line 608
    :pswitch_3
    const-string v7, "mms"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 609
    const-string v7, "mms is retrying!!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 610
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 611
    goto/16 :goto_0

    .line 615
    :cond_7
    :pswitch_4
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 616
    goto/16 :goto_0

    .line 620
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 621
    .local v0, "callState":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 624
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallTracker;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 629
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v7

    if-nez v7, :cond_b

    .line 631
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 637
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 638
    .local v3, "phoneCount":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "ro.mtk_dt_support"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    .line 640
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v3, :cond_9

    .line 641
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getActivePhone(I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    .line 643
    .local v2, "pb":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    .line 644
    .local v4, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isSvlteSupport()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 645
    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v4

    .line 647
    :cond_8
    if-eqz v2, :cond_d

    if-eq v1, v4, :cond_d

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v7, v8, :cond_d

    .line 649
    const-string v7, "GSMPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GSMPhone["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] Phone"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is in call"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isSvlteSupport()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 654
    instance-of v7, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v7, :cond_9

    .line 655
    const-string v7, "GSMPhone"

    const-string v8, "CdmaLteDcSupport, data and cal is both on GSMPhone, data state set to SUSPENDED"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 670
    .end local v1    # "i":I
    .end local v2    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v4    # "phoneId":I
    :cond_9
    :goto_4
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v5, v7, :cond_1

    const-string v7, "default"

    if-ne p1, v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 674
    const-string v7, "Connected but default data is not open."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 675
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_0

    .line 627
    .end local v3    # "phoneCount":I
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto/16 :goto_1

    .line 633
    :cond_b
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto/16 :goto_2

    .line 660
    .restart local v1    # "i":I
    .restart local v2    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .restart local v3    # "phoneCount":I
    .restart local v4    # "phoneId":I
    :cond_c
    const-string v7, "GSMPhone"

    const-string v8, "Data state set to SUSPENDED"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 663
    goto :goto_4

    .line 640
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 681
    .end local v0    # "callState":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v1    # "i":I
    .end local v2    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "phoneCount":I
    .end local v4    # "phoneId":I
    :pswitch_6
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 682
    goto/16 :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 605
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1450
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMPhone] getDeviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1456
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMPhone] getDeviceSvn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getEfRatBalancing()I
    .locals 1

    .prologue
    .line 3714
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3715
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getEfRatBalancing()I

    move-result v0

    .line 3717
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1472
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] getEsn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const-string v0, "0"

    return-object v0
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 3325
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3326
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 3330
    invoke-static {p1}, Lcom/android/internal/telephony/MMTelSSUtils;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3332
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p3, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3362
    :goto_0
    return-void

    .line 3338
    :cond_0
    const/16 v3, 0xa

    invoke-static {v3, p3}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v2

    .line 3340
    .local v2, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    iget-object v3, v2, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3341
    iget-object v3, v2, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3342
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3344
    .local v1, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 3349
    .end local v1    # "imsUtResult":Landroid/os/Message;
    .end local v2    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSUtils;->isGsmUtSupport(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3351
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {v3, p1, p2, v4, p3}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 3357
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 3358
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 3360
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2, v4, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "rat"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3812
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFemtoCellList(),operatorNumeric="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V

    .line 3814
    return-void
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1499
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1500
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1517
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1518
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1505
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1506
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocatedPlmn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3799
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1478
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    const-string v0, "0"

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1511
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1512
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMvnoMatchType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3722
    const-string v0, ""

    .line 3723
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3724
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getMvnoMatchType()Ljava/lang/String;

    move-result-object v0

    .line 3726
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMvnoMatchType: Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3727
    return-object v0
.end method

.method public getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 3731
    const-string v0, ""

    .line 3732
    .local v0, "pattern":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMvnoPattern:Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3734
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3735
    const-string v1, "spn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3736
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v0

    .line 3747
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMvnoPattern: pattern = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3748
    return-object v0

    .line 3737
    :cond_1
    const-string v1, "imsi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3738
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->isOperatorMvnoForImsi()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3739
    :cond_2
    const-string v1, "pnn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3740
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->isOperatorMvnoForEfPnn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3741
    :cond_3
    const-string v1, "gid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3742
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3744
    :cond_4
    const-string v1, "getMvnoPattern: Wrong type."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNai()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1484
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1485
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string v1, "GSMPhone"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1486
    const-string v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccRecords is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNAI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    .line 2023
    return-void
.end method

.method public getNetworkHideState()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3788
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dontUpdateNetworkStateFlag:Z

    if-ne v1, v0, :cond_0

    .line 3791
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    goto :goto_0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3215
    const/4 v0, 0x0

    .line 3216
    .local v0, "operatorNumeric":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3217
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 3218
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 3220
    :cond_0
    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1698
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 1702
    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1703
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1728
    :goto_0
    return-void

    .line 1709
    :cond_0
    const/4 v3, 0x4

    invoke-static {v3, p1}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v2

    .line 1711
    .local v2, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1712
    .local v1, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0

    .line 1717
    .end local v1    # "imsUtResult":Landroid/os/Message;
    .end local v2    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSUtils;->isGsmUtSupport(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1719
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->getCLIR(Landroid/os/Message;)V

    goto :goto_0

    .line 1724
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1725
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 1727
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPendingMMIs.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 3706
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    return v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    return v0
.end method

.method public getPol(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3775
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentPOLList(Landroid/os/Message;)V

    .line 3776
    return-void
.end method

.method public getPolCapability(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3771
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPOLCapabilty(Landroid/os/Message;)V

    .line 3772
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 904
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 909
    :goto_0
    return-object v1

    .line 906
    :cond_0
    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    goto :goto_0

    .line 909
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceState : getState() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getDataRegState() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_3

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_3

    .line 468
    const-string v0, "return ImsPhone service state!!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v0, :cond_2

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/ServiceState;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 479
    :goto_1
    return-object v0

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_0

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v0, :cond_4

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_1

    .line 479
    :cond_4
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    goto :goto_1
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .prologue
    .line 490
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 492
    .local v0, "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 497
    .end local v0    # "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1493
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1494
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 1564
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    const/4 v0, 0x0

    .line 1567
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTbcwMode()I
    .locals 1

    .prologue
    .line 1771
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    return v0
.end method

.method public getTerminalBasedCallWaiting(Landroid/os/Message;)V
    .locals 9
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1796
    const-string v2, "persist.radio.terminal-based.cw"

    const-string v3, "disabled_tbcw"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1799
    .local v1, "tbcwMode":Ljava/lang/String;
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTerminalBasedCallWaiting(): tbcwMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", onComplete = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const-string v2, "enabled_tbcw_on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1803
    if-eqz p1, :cond_0

    .line 1804
    new-array v0, v7, [I

    .line 1805
    .local v0, "cwInfos":[I
    aput v6, v0, v5

    .line 1806
    aput v6, v0, v6

    .line 1807
    invoke-static {p1, v0, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1808
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1822
    .end local v0    # "cwInfos":[I
    :cond_0
    :goto_0
    return-void

    .line 1811
    :cond_1
    const-string v2, "enabled_tbcw_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1812
    if-eqz p1, :cond_0

    .line 1813
    new-array v0, v7, [I

    .line 1814
    .restart local v0    # "cwInfos":[I
    aput v5, v0, v5

    .line 1815
    invoke-static {p1, v0, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1816
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1821
    .end local v0    # "cwInfos":[I
    :cond_2
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTerminalBasedCallWaiting(): ERROR: tbcwMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1436
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1438
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 1440
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1441
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const v3, 0x1040004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1445
    .end local v1    # "ret":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 1438
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1388
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1389
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 1390
    .local v3, "number":Ljava/lang/String;
    :goto_0
    const-string v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GSMPhone] getVoiceMailNumber, from SIMRecords "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1392
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1393
    .local v5, "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vm_number_key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1395
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const-string v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GSMPhone] getVoiceMailNumber, from SP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1397
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107003c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1399
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_4

    array-length v6, v2

    if-lez v6, :cond_4

    .line 1400
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_4

    .line 1401
    aget-object v6, v2, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1402
    aget-object v6, v2, v1

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, "defaultVMNumberArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-lez v6, :cond_1

    .line 1404
    array-length v6, v0

    if-ne v6, v9, :cond_3

    .line 1405
    aget-object v3, v0, v10

    .line 1400
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1389
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto/16 :goto_0

    .line 1406
    .restart local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "listArray":[Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    :cond_3
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    aget-object v6, v0, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    aget-object v6, v0, v9

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1409
    aget-object v3, v0, v10

    .line 1417
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    :cond_4
    const-string v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[GSMPhone] getVoiceMailNumber, final "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    return-object v3
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1086
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1087
    .local v1, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1092
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v2

    .line 1138
    :goto_0
    return v2

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1098
    goto :goto_0

    .line 1101
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 1102
    goto :goto_0

    .line 1105
    :cond_2
    const/4 v2, 0x0

    .line 1106
    .local v2, "result":Z
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1107
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1114
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleUdubIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1117
    goto :goto_0

    .line 1119
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1121
    goto :goto_0

    .line 1123
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1124
    goto :goto_0

    .line 1126
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1127
    goto :goto_0

    .line 1129
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1130
    goto :goto_0

    .line 1132
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .line 1133
    goto :goto_0

    .line 1107
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 43
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2260
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2268
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v3, :cond_1

    .line 2269
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] while being destroyed. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2264
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2273
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2883
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2275
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 2278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 2279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 2280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    .line 2282
    const-string v3, "GSMPhone"

    const-string v4, "EVENT_RADIO_AVAILABLE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    :try_start_0
    const-class v3, Lcom/mediatek/common/telephony/IGsmPhoneExt;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/telephony/IGsmPhoneExt;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mGsmPhoneExt:Lcom/mediatek/common/telephony/IGsmPhoneExt;

    .line 2286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mGsmPhoneExt:Lcom/mediatek/common/telephony/IGsmPhoneExt;

    if-eqz v3, :cond_0

    .line 2287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mGsmPhoneExt:Lcom/mediatek/common/telephony/IGsmPhoneExt;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, v5}, Lcom/mediatek/common/telephony/IGsmPhoneExt;->configureModem(ILandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2289
    :catch_0
    move-exception v20

    .line 2290
    .local v20, "e":Ljava/lang/Exception;
    const-string v3, "GSMPhone"

    const-string v4, "Exception "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 2302
    .end local v20    # "e":Ljava/lang/Exception;
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    .line 2305
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z

    if-eqz v3, :cond_0

    .line 2306
    const-string v18, "0"

    .line 2307
    .local v18, "defaultQueryCfuMode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    if-eqz v3, :cond_2

    .line 2308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSupplementaryServiceExt:Lcom/mediatek/common/telephony/ISupplementaryServiceExt;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/ISupplementaryServiceExt;->getOpDefaultQueryCfuMode()Ljava/lang/String;

    move-result-object v18

    .line 2309
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultQueryCfuMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2314
    const-string v3, "persist.radio.cfu.querytype"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2319
    .local v13, "cfuSetting":Ljava/lang/String;
    :goto_1
    const-string v29, "0"

    .line 2321
    .local v29, "isTestSim":Ljava/lang/String;
    const/16 v28, 0x0

    .line 2322
    .local v28, "isRRMEnv":Z
    const/16 v36, 0x0

    .line 2324
    .local v36, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    if-nez v3, :cond_7

    .line 2325
    const-string v3, "gsm.sim.ril.testsim"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2334
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v36

    .line 2335
    if-eqz v36, :cond_4

    const-string v3, "46602"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2336
    const/16 v28, 0x1

    .line 2339
    :cond_4
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GSMPhone] CFU_KEY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isTestSIM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRRMEnv : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    const-string v3, "0"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v28, :cond_a

    .line 2342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.radio.cfu.change."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 2343
    .local v27, "isChangedProp":Ljava/lang/String;
    const-string v3, "0"

    move-object/from16 v0, v27

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 2345
    .local v26, "isChanged":Ljava/lang/String;
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GSMPhone] isChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    const-string v3, "2"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "0"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2352
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    .line 2353
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->queryCfuOrWait()Z

    .line 2354
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->needQueryCfu:Z

    .line 2355
    const-string v3, "0"

    move-object/from16 v0, v27

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2316
    .end local v13    # "cfuSetting":Ljava/lang/String;
    .end local v26    # "isChanged":Ljava/lang/String;
    .end local v27    # "isChangedProp":Ljava/lang/String;
    .end local v28    # "isRRMEnv":Z
    .end local v29    # "isTestSim":Ljava/lang/String;
    .end local v36    # "operatorNumeric":Ljava/lang/String;
    :cond_6
    const-string v3, "persist.radio.cfu.querytype"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "cfuSetting":Ljava/lang/String;
    goto/16 :goto_1

    .line 2327
    .restart local v28    # "isRRMEnv":Z
    .restart local v29    # "isTestSim":Ljava/lang/String;
    .restart local v36    # "operatorNumeric":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 2328
    const-string v3, "gsm.sim.ril.testsim.2"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_2

    .line 2357
    .restart local v26    # "isChanged":Ljava/lang/String;
    .restart local v27    # "isChangedProp":Ljava/lang/String;
    :cond_8
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "disabled_ut_cfu_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 2359
    .local v41, "utCfuMode":Ljava/lang/String;
    const-string v3, "enabled_ut_cfu_mode_on"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2361
    .local v37, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v37, :cond_0

    .line 2362
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, ""

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2364
    .end local v37    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_9
    const-string v3, "enabled_ut_cfu_mode_off"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2366
    .restart local v37    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v37, :cond_0

    .line 2367
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2372
    .end local v26    # "isChanged":Ljava/lang/String;
    .end local v27    # "isChangedProp":Ljava/lang/String;
    .end local v37    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v41    # "utCfuMode":Ljava/lang/String;
    :cond_a
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "disabled_ut_cfu_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 2374
    .restart local v41    # "utCfuMode":Ljava/lang/String;
    const-string v3, "enabled_ut_cfu_mode_on"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2376
    .restart local v37    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v37, :cond_0

    .line 2377
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, ""

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2379
    .end local v37    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_b
    const-string v3, "enabled_ut_cfu_mode_off"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2381
    .restart local v37    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v37, :cond_0

    .line 2382
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 2391
    .end local v13    # "cfuSetting":Ljava/lang/String;
    .end local v18    # "defaultQueryCfuMode":Ljava/lang/String;
    .end local v28    # "isRRMEnv":Z
    .end local v29    # "isTestSim":Ljava/lang/String;
    .end local v36    # "operatorNumeric":Ljava/lang/String;
    .end local v37    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v41    # "utCfuMode":Ljava/lang/String;
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 2395
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v24

    .line 2396
    .local v24, "imsi":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v25

    .line 2397
    .local v25, "imsiFromSIM":Ljava/lang/String;
    if-eqz v24, :cond_c

    if-eqz v25, :cond_c

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 2398
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2399
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 2402
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2403
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateVoiceMail()V

    goto/16 :goto_0

    .line 2407
    .end local v24    # "imsi":Ljava/lang/String;
    .end local v25    # "imsiFromSIM":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2409
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 2413
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Baseband version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v5

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2420
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v5

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2427
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2429
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_e

    .line 2430
    const-string v3, "GSMPhone"

    const-string v4, "Null IMEI!!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDeviceIdAbnormal(I)V

    goto/16 :goto_0

    .line 2435
    :cond_e
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    .line 2436
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMEI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    const-string v3, "gsm.imei.id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_f

    .line 2442
    const-string v3, "gsm.imei.id0"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    :goto_3
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gsm.imei.id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IMEI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2453
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDeviceIdAbnormal(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2454
    :catch_1
    move-exception v20

    .line 2455
    .local v20, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setDeviceIdAbnormal(I)V

    .line 2456
    const-string v3, "GSMPhone"

    const-string v4, "Invalid format IMEI!!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2443
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_10

    .line 2444
    const-string v3, "gsm.imei.id1"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2446
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm.imei.id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2461
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2463
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 2467
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    goto/16 :goto_0

    .line 2471
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2473
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v40, v3

    check-cast v40, [Ljava/lang/String;

    .line 2475
    .local v40, "ussdResult":[Ljava/lang/String;
    move-object/from16 v0, v40

    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 2477
    const/4 v3, 0x0

    :try_start_2
    aget-object v3, v40, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v40, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2478
    :catch_2
    move-exception v20

    .line 2479
    .restart local v20    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "GSMPhone"

    const-string v4, "error parsing USSD"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2490
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "e":Ljava/lang/NumberFormatException;
    .end local v40    # "ussdResult":[Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v21, v3, -0x1

    .local v21, "i":I
    :goto_4
    if-ltz v21, :cond_12

    .line 2491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 2490
    :cond_11
    add-int/lit8 v21, v21, -0x1

    goto :goto_4

    .line 2495
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-object/from16 v23, v0

    .line 2496
    .local v23, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    const-string v3, "ro.mtk_wfc_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->getWfcStatusCode()I

    move-result v42

    .line 2499
    .local v42, "wfcStatusCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE wfcStatusCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2500
    const/16 v3, 0x63

    move/from16 v0, v42

    if-eq v0, v3, :cond_13

    if-eqz v23, :cond_13

    .line 2501
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setState(I)V

    .line 2509
    .end local v42    # "wfcStatusCode":I
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V

    .line 2515
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    goto/16 :goto_0

    .line 2503
    :cond_14
    if-eqz v23, :cond_13

    .line 2506
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setState(I)V

    goto :goto_5

    .line 2520
    .end local v21    # "i":I
    .end local v23    # "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2521
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 2523
    .local v33, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 2525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2529
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v33    # "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2530
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2531
    .restart local v37    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v10, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;

    .line 2532
    .local v10, "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_15

    if-eqz v37, :cond_15

    .line 2533
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_17

    const/4 v3, 0x1

    :goto_6
    iget-object v5, v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2535
    :cond_15
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_16

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_16

    .line 2536
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    .line 2537
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "enabled_ut_cfu_mode_on"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    :cond_16
    :goto_7
    iget-object v3, v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 2545
    iget-object v3, v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2546
    iget-object v3, v10, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2533
    :cond_17
    const/4 v3, 0x0

    goto :goto_6

    .line 2540
    :cond_18
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "enabled_ut_cfu_mode_off"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2551
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .end local v37    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2552
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    const-string v3, "GSMPhone"

    const-string v4, "[GSMPhone] handle EVENT_SET_VM_NUMBER_DONE"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    const-class v3, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2555
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2557
    :cond_19
    iget-object v0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Message;

    .line 2558
    .local v35, "onComplete":Landroid/os/Message;
    if-eqz v35, :cond_0

    .line 2559
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v35

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2560
    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2568
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v35    # "onComplete":Landroid/os/Message;
    :sswitch_d
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPhoneId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm.poweron.cfu.query."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2571
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EVENT_GET_CALL_FORWARD_DONE]ar.exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1a

    .line 2574
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2576
    :cond_1a
    iget-object v0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Message;

    .line 2577
    .restart local v35    # "onComplete":Landroid/os/Message;
    if-eqz v35, :cond_0

    .line 2578
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v35

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2579
    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2585
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v35    # "onComplete":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2586
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2587
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2588
    const-string v3, "GSMPhone"

    const-string v4, "SET_NETWORK_SELECTION_AUTOMATIC: set to automatic"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2591
    :cond_1b
    const-string v3, "GSMPhone"

    const-string v4, "SET_NETWORK_SELECTION_AUTOMATIC: already automatic, ignore"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2596
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2597
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->processIccRecordEvents(I)V

    goto/16 :goto_0

    .line 2601
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2602
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1c

    .line 2603
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 2605
    :cond_1c
    iget-object v0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Message;

    .line 2606
    .restart local v35    # "onComplete":Landroid/os/Message;
    if-eqz v35, :cond_0

    .line 2607
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v35

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2608
    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2613
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v35    # "onComplete":Landroid/os/Message;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2614
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    const-string v3, "GSMPhone"

    const-string v4, "Event EVENT_SS received"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    new-instance v30, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 2619
    .local v30, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processSsData(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2625
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v30    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2627
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2628
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v12, v3

    check-cast v12, [I

    .line 2629
    .local v12, "cfuResult":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1d

    const/4 v4, 0x1

    :goto_8
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const/4 v4, 0x0

    goto :goto_8

    .line 2634
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "cfuResult":[I
    :sswitch_13
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EVENT_CFU_QUERY_TIMEOUT]mCfuQueryRetryCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCfuQueryRetryCount:I

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_0

    .line 2637
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->queryCfuOrWait()Z

    goto/16 :goto_0

    .line 2644
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2645
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/gsm/SuppCrssNotification;

    .line 2648
    .local v34, "noti":Lcom/android/internal/telephony/gsm/SuppCrssNotification;
    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->code:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    .line 2650
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1e

    .line 2651
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/Connection;

    .line 2659
    .local v15, "cn":Lcom/android/internal/telephony/Connection;
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set number presentation to connection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->cli_validity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->cli_validity:I

    packed-switch v3, :pswitch_data_1

    .line 2675
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Lcom/android/internal/telephony/Connection;->setNumberPresentation(I)V

    .line 2699
    .end local v15    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_1e
    :goto_9
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 2701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2662
    .restart local v15    # "cn":Lcom/android/internal/telephony/Connection;
    :pswitch_1
    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Lcom/android/internal/telephony/Connection;->setNumberPresentation(I)V

    goto :goto_9

    .line 2666
    :pswitch_2
    const/4 v3, 0x3

    invoke-virtual {v15, v3}, Lcom/android/internal/telephony/Connection;->setNumberPresentation(I)V

    goto :goto_9

    .line 2670
    :pswitch_3
    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Lcom/android/internal/telephony/Connection;->setNumberPresentation(I)V

    goto :goto_9

    .line 2681
    .end local v15    # "cn":Lcom/android/internal/telephony/Connection;
    :cond_1f
    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->code:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    .line 2685
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[COLP]noti.number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1e

    .line 2687
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/Connection;

    .line 2688
    .restart local v15    # "cn":Lcom/android/internal/telephony/Connection;
    if-eqz v15, :cond_20

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 2691
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/SuppCrssNotification;->number:Ljava/lang/String;

    invoke-virtual {v15, v3}, Lcom/android/internal/telephony/Connection;->setRedirectingAddress(Ljava/lang/String;)V

    .line 2693
    :cond_20
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[COLP]Redirecting address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/internal/telephony/Connection;->getRedirectingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2706
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "cn":Lcom/android/internal/telephony/Connection;
    .end local v34    # "noti":Lcom/android/internal/telephony/gsm/SuppCrssNotification;
    :sswitch_15
    const-string v3, "handle EVENT_VOICE_CALL_INCOMING_INDICATION"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVoiceCallIncomingIndicationRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v5, v0, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2712
    :sswitch_16
    const-string v3, "handle EVENT_GET_AVAILABLE_NETWORK_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V

    .line 2714
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/dataconnection/DctController;->setDataAllowed(JZLjava/lang/String;J)V

    goto/16 :goto_0

    .line 2718
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2719
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-nez v2, :cond_21

    .line 2720
    const-string v3, "GSMPhone"

    const-string v4, "EVENT_IMS_UT_DONE: Error AsyncResult null!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2722
    :cond_21
    iget-object v0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/internal/telephony/SuppSrvRequest;

    .line 2723
    .local v39, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    if-nez v39, :cond_22

    .line 2724
    const-string v3, "GSMPhone"

    const-string v4, "EVENT_IMS_UT_DONE: Error SuppSrvRequest null!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2725
    :cond_22
    const/16 v3, 0x11

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/SuppSrvRequest;->getRequestCode()I

    move-result v4

    if-ne v3, v4, :cond_26

    .line 2727
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_23

    .line 2728
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2729
    const-string v3, "GSMPhone"

    const-string v4, "EVENT_IMS_UT_DONE: SUPP_SRV_REQ_SET_CF_IN_TIME_SLOT"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2731
    .local v16, "commandInterfaceCFAction":I
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2732
    .local v17, "commandInterfaceCFReason":I
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2733
    .local v19, "dialingNumber":Ljava/lang/String;
    if-nez v17, :cond_23

    .line 2734
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2735
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "enabled_ut_cfu_mode_on"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    .end local v16    # "commandInterfaceCFAction":I
    .end local v17    # "commandInterfaceCFReason":I
    .end local v19    # "dialingNumber":Ljava/lang/String;
    :cond_23
    :goto_a
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v35

    .line 2744
    .restart local v35    # "onComplete":Landroid/os/Message;
    if-eqz v35, :cond_24

    .line 2745
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v35

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2746
    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    .line 2748
    :cond_24
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_0

    .line 2738
    .end local v35    # "onComplete":Landroid/os/Message;
    .restart local v16    # "commandInterfaceCFAction":I
    .restart local v17    # "commandInterfaceCFReason":I
    .restart local v19    # "dialingNumber":Ljava/lang/String;
    :cond_25
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "enabled_ut_cfu_mode_off"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 2750
    .end local v16    # "commandInterfaceCFAction":I
    .end local v17    # "commandInterfaceCFReason":I
    .end local v19    # "dialingNumber":Ljava/lang/String;
    :cond_26
    const/4 v14, 0x0

    .line 2751
    .local v14, "cmdException":Lcom/android/internal/telephony/CommandException;
    const/16 v22, 0x0

    .line 2752
    .local v22, "imsException":Lcom/android/ims/ImsException;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_27

    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_27

    .line 2753
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local v14    # "cmdException":Lcom/android/internal/telephony/CommandException;
    check-cast v14, Lcom/android/internal/telephony/CommandException;

    .line 2755
    .restart local v14    # "cmdException":Lcom/android/internal/telephony/CommandException;
    :cond_27
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_28

    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/ims/ImsException;

    if-eqz v3, :cond_28

    .line 2756
    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    .end local v22    # "imsException":Lcom/android/ims/ImsException;
    check-cast v22, Lcom/android/ims/ImsException;

    .line 2758
    .restart local v22    # "imsException":Lcom/android/ims/ImsException;
    :cond_28
    if-eqz v14, :cond_29

    invoke-virtual {v14}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->UT_XCAP_403_FORBIDDEN:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_29

    .line 2760
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 2761
    const/16 v3, 0x7d1

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    .line 2762
    .local v31, "msgCSFB":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2763
    .end local v31    # "msgCSFB":Landroid/os/Message;
    :cond_29
    if-eqz v14, :cond_2a

    invoke-virtual {v14}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->UT_UNKNOWN_HOST:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_2a

    .line 2765
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 2766
    const/16 v3, 0x7d1

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    .line 2767
    .restart local v31    # "msgCSFB":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2768
    .end local v31    # "msgCSFB":Landroid/os/Message;
    :cond_2a
    if-eqz v22, :cond_2b

    invoke-virtual/range {v22 .. v22}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    const/16 v4, 0x33e

    if-ne v3, v4, :cond_2b

    .line 2770
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 2771
    const/16 v3, 0x7d1

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    .line 2772
    .restart local v31    # "msgCSFB":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2773
    .end local v31    # "msgCSFB":Landroid/os/Message;
    :cond_2b
    if-eqz v22, :cond_2c

    invoke-virtual/range {v22 .. v22}, Lcom/android/ims/ImsException;->getCode()I

    move-result v3

    const/16 v4, 0x33f

    if-ne v3, v4, :cond_2c

    .line 2775
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 2776
    const/16 v3, 0x7d1

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v31

    .line 2777
    .restart local v31    # "msgCSFB":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2779
    .end local v31    # "msgCSFB":Landroid/os/Message;
    :cond_2c
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2d

    const/16 v3, 0xb

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/SuppSrvRequest;->getRequestCode()I

    move-result v4

    if-ne v3, v4, :cond_2d

    .line 2781
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2782
    const-string v3, "GSMPhone"

    const-string v4, "EVENT_IMS_UT_DONE: SUPP_SRV_REQ_SET_CF"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2784
    .restart local v16    # "commandInterfaceCFAction":I
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2785
    .restart local v17    # "commandInterfaceCFReason":I
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2786
    .restart local v19    # "dialingNumber":Ljava/lang/String;
    if-nez v17, :cond_2d

    .line 2787
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2788
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "enabled_ut_cfu_mode_on"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    .end local v16    # "commandInterfaceCFAction":I
    .end local v17    # "commandInterfaceCFReason":I
    .end local v19    # "dialingNumber":Ljava/lang/String;
    :cond_2d
    :goto_b
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/SuppSrvRequest;->getResultCallback()Landroid/os/Message;

    move-result-object v35

    .line 2797
    .restart local v35    # "onComplete":Landroid/os/Message;
    if-eqz v35, :cond_2e

    .line 2798
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v35

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2799
    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    .line 2801
    :cond_2e
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_0

    .line 2791
    .end local v35    # "onComplete":Landroid/os/Message;
    .restart local v16    # "commandInterfaceCFAction":I
    .restart local v17    # "commandInterfaceCFReason":I
    .restart local v19    # "dialingNumber":Ljava/lang/String;
    :cond_2f
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "enabled_ut_cfu_mode_off"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 2808
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "cmdException":Lcom/android/internal/telephony/CommandException;
    .end local v16    # "commandInterfaceCFAction":I
    .end local v17    # "commandInterfaceCFReason":I
    .end local v19    # "dialingNumber":Ljava/lang/String;
    .end local v22    # "imsException":Lcom/android/ims/ImsException;
    .end local v39    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :sswitch_18
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleImsUtCsfb(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2811
    :sswitch_19
    const-string v3, "handle EVENT_ABNORMAL_EVENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2812
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2813
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_31

    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_31

    .line 2814
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v32, v3

    check-cast v32, [Ljava/lang/String;

    .line 2815
    .local v32, "msgString":[Ljava/lang/String;
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_c
    move-object/from16 v0, v32

    array-length v3, v0

    move/from16 v0, v21

    if-ge v0, v3, :cond_30

    .line 2816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgString["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v32, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2815
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 2818
    :cond_30
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleAbnormalEvent([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2820
    .end local v21    # "i":I
    .end local v32    # "msgString":[Ljava/lang/String;
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncResult is wrong "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2824
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    const-string v3, "handle EVENT_SET_BAND_MODE_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2825
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2826
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_32

    .line 2827
    const-string v3, "B40 broken. set band mode complete"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2829
    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncResult is wrong "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2835
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_1b
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPhoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm.poweron.cfu.query."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2838
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE]ar.exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_33

    .line 2841
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfoEx;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfoEx;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuInTimeSlotQueryResult([Lcom/android/internal/telephony/CallForwardInfoEx;)V

    .line 2843
    :cond_33
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EVENT_GET_CALL_FORWARD_TIME_SLOT_DONE]msg.arg1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_34

    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_34

    .line 2846
    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v14, Lcom/android/internal/telephony/CommandException;

    .line 2847
    .restart local v14    # "cmdException":Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_34

    if-eqz v14, :cond_34

    invoke-virtual {v14}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_34

    .line 2850
    const/4 v3, 0x0

    const/16 v4, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2854
    .end local v14    # "cmdException":Lcom/android/internal/telephony/CommandException;
    :cond_34
    iget-object v0, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Message;

    .line 2855
    .restart local v35    # "onComplete":Landroid/os/Message;
    if-eqz v35, :cond_0

    .line 2856
    iget-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, v35

    invoke-static {v0, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2857
    invoke-virtual/range {v35 .. v35}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2862
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v35    # "onComplete":Landroid/os/Message;
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 2863
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2864
    .local v38, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v11, v2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v11, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;

    .line 2865
    .local v11, "cfuEx":Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_35

    if-eqz v38, :cond_35

    .line 2866
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_36

    const/4 v3, 0x1

    :goto_d
    iget-object v5, v11, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mSetCfNumber:Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2867
    iget-object v3, v11, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mSetTimeSlot:[J

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveTimeSlot([J)V

    .line 2868
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_37

    .line 2869
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "enabled_ut_cfu_mode_on"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    :cond_35
    :goto_e
    iget-object v3, v11, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    if-eqz v3, :cond_0

    .line 2877
    iget-object v3, v11, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    iget-object v4, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2878
    iget-object v3, v11, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2866
    :cond_36
    const/4 v3, 0x0

    goto :goto_d

    .line 2872
    :cond_37
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "enabled_ut_cfu_mode_off"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 2260
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2273
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_a
        0x3 -> :sswitch_4
        0x5 -> :sswitch_0
        0x6 -> :sswitch_5
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xc -> :sswitch_b
        0xd -> :sswitch_d
        0x12 -> :sswitch_10
        0x13 -> :sswitch_2
        0x14 -> :sswitch_c
        0x1c -> :sswitch_e
        0x1d -> :sswitch_f
        0x24 -> :sswitch_11
        0x26 -> :sswitch_12
        0x27 -> :sswitch_13
        0x28 -> :sswitch_14
        0x29 -> :sswitch_15
        0x2e -> :sswitch_19
        0x2f -> :sswitch_1a
        0xc9 -> :sswitch_1b
        0xca -> :sswitch_1c
        0x7d0 -> :sswitch_17
        0x7d1 -> :sswitch_18
        0x7d2 -> :sswitch_3
        0x7a328 -> :sswitch_16
    .end sparse-switch

    .line 2660
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1312
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1314
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1315
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1317
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 1318
    const/4 v1, 0x1

    .line 1321
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3288
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAll()V

    .line 3289
    return-void
.end method

.method protected isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v0, 0x1

    .line 1587
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 2

    .prologue
    .line 3082
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3083
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isCspPlmnEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceIdAbnormal()I
    .locals 1

    .prologue
    .line 3833
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiAbnormal:I

    return v0
.end method

.method public isDuringImsCall()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3841
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v6, :cond_2

    .line 3842
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 3843
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3844
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 3845
    .local v3, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v2, v4

    .line 3847
    .local v2, "isDuringImsCall":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 3848
    const-string v5, "GSMPhone"

    const-string v6, "During IMS call."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    .end local v0    # "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    .end local v1    # "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    .end local v2    # "isDuringImsCall":Z
    .end local v3    # "ringingCallState":Lcom/android/internal/telephony/Call$State;
    :goto_1
    return v4

    .restart local v0    # "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    .restart local v1    # "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    .restart local v3    # "ringingCallState":Lcom/android/internal/telephony/Call$State;
    :cond_1
    move v2, v5

    .line 3845
    goto :goto_0

    .end local v0    # "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    .end local v1    # "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    .end local v3    # "ringingCallState":Lcom/android/internal/telephony/Call$State;
    :cond_2
    move v4, v5

    .line 3852
    goto :goto_1
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1143
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1144
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1146
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isManualNetSelAllowed()Z
    .locals 5

    .prologue
    .line 3088
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 3089
    .local v0, "nwMode":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v1

    .line 3091
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3094
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isManualNetSelAllowed in mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isManualSelProhibitedInGlobalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 3102
    :cond_0
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual selection not supported in mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    const/4 v2, 0x0

    .line 3115
    :goto_0
    return v2

    .line 3105
    :cond_1
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual selection is supported in mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3282
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    return-void
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 774
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 749
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDisconnectCause(II)V

    .line 750
    return-void
.end method

.method public notifyEcbmTimerReset(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 3244
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 3245
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 768
    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 742
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 743
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 729
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 738
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 739
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 762
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 763
    return-void
.end method

.method notifyServiceStateChangedForSvlte(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 3972
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedPForSvlte(Landroid/telephony/ServiceState;)V

    .line 3973
    return-void
.end method

.method notifySpeechCodecInfo(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSpeechCodecInfoRegistrants:Landroid/os/RegistrantList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 779
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/Phone$SuppService;

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 758
    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 754
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 4
    .param p1, "mmi"    # Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .prologue
    const/4 v3, 0x0

    .line 2101
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPendingMMIs.remove(mmi) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2107
    :cond_1
    return-void
.end method

.method public onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;Ljava/lang/Object;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2122
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPendingMMIs.remove(mmi) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2125
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2128
    :cond_1
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2917
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_1

    .line 2952
    :cond_0
    :goto_0
    return-void

    .line 2921
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 2923
    .local v2, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 2925
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v2, :cond_2

    .line 2926
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 2927
    .restart local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    const-string v3, "New ISIM application found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2929
    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 2931
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 2933
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2934
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v2, :cond_0

    .line 2935
    if-eqz v0, :cond_4

    .line 2936
    const-string v3, "Removing stale icc objects."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2937
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2938
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 2939
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 2941
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2942
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2944
    :cond_4
    if-eqz v2, :cond_0

    .line 2945
    const-string v3, "New Uicc application found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2946
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2947
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2948
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForSimRecordEvents()V

    .line 2949
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    goto :goto_0
.end method

.method public queryCfuOrWait()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3568
    const/16 v4, 0x63

    .local v4, "sid1":I
    const/16 v5, 0x63

    .line 3583
    .local v5, "sid2":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gsm.poweron.cfu.query."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3584
    .local v2, "oppositePropertyValue1":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gsm.poweron.cfu.query."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3585
    .local v3, "oppositePropertyValue2":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "1"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3587
    :cond_0
    const/16 v6, 0x27

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3588
    .local v1, "message":Landroid/os/Message;
    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v1, v8, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v6, v7

    .line 3607
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return v6

    .line 3592
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDataEnabled()Z

    move-result v0

    .line 3593
    .local v0, "bDataEnable":Z
    const-string v8, "GSMPhone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bDataEnable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v8

    if-nez v8, :cond_2

    iget v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v8}, Lcom/android/internal/telephony/MMTelSSUtils;->isGsmUtSupport(I)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    .line 3597
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    const/16 v9, 0xc9

    invoke-virtual {p0, v9, v6, v7, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v7, v6, v9}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->queryCallForwardInTimeSlotStatus(IILandroid/os/Message;)V

    goto :goto_0

    .line 3602
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 3603
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 3605
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0xd

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v7, v6, v11, v9}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public queryPhbStorageInfo(ILandroid/os/Message;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3765
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->queryPhbStorageInfo(ILandroid/os/Message;)V

    .line 3766
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 1

    .prologue
    .line 3807
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->refreshSpnDisplay()V

    .line 3808
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3224
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3226
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3306
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 3307
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 3310
    :cond_0
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3256
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3257
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 818
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 799
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 803
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    .line 843
    return-void
.end method

.method public removeReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 439
    const-string v0, "GSMPhone"

    const-string v1, "removeReferences"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 441
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 442
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 443
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 444
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 446
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 447
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 4
    .param p1, "commandInterfaceCLIRMode"    # I

    .prologue
    .line 2994
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2998
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3001
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clir_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3005
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3006
    const-string v2, "GSMPhone"

    const-string v3, "failed to commit CLIR preference"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    :cond_0
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V
    .locals 3
    .param p1, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3822
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectFemtoCell(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V

    .line 3824
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2000
    new-instance v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;-><init>()V

    .line 2001
    .local v2, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iput-object p2, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 2002
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 2003
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 2005
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2007
    .local v1, "msg":Landroid/os/Message;
    const-string v3, "GSMPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GSMPhone selectNetworkManually() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    const-string v0, "0"

    .line 2010
    .local v0, "actype":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2011
    const-string v0, "2"

    .line 2016
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2017
    return-void

    .line 2012
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2013
    const-string v0, "7"

    goto :goto_0
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .param p1, "dtmfString"    # Ljava/lang/String;

    .prologue
    .line 1367
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 1338
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1339
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "error"    # Lcom/android/internal/telephony/CommandException$Error;

    .prologue
    .line 3559
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorResponse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    if-eqz p1, :cond_0

    .line 3561
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3562
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3564
    :cond_0
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1326
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1328
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendUssdResponse]mPendingMMIs.add(mmi) + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1332
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1333
    return-void
.end method

.method public setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V
    .locals 21
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "timeSlot"    # [J
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3501
    .local v4, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    .line 3504
    const/16 v5, 0x11

    move-object/from16 v0, p6

    invoke-static {v5, v0}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v20

    .line 3506
    .local v20, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3507
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3508
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3509
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3510
    const/16 v5, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .local v10, "imsUtResult":Landroid/os/Message;
    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    .line 3511
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardInTimeSlot(IILjava/lang/String;I[JLandroid/os/Message;)V

    .line 3536
    .end local v10    # "imsUtResult":Landroid/os/Message;
    .end local v20    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :goto_0
    return-void

    .line 3517
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p2, :cond_3

    .line 3520
    new-instance v19, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;-><init>(Ljava/lang/String;[JLandroid/os/Message;)V

    .line 3521
    .local v19, "cfuEx":Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;
    const/16 v6, 0xca

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v5, v7, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    .line 3524
    .local v18, "resp":Landroid/os/Message;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v5}, Lcom/android/internal/telephony/MMTelSSUtils;->isGsmUtSupport(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3526
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    const/4 v14, 0x1

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    invoke-virtual/range {v11 .. v18}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCallForwardInTimeSlot(IIILjava/lang/String;I[JLandroid/os/Message;)V

    goto :goto_0

    .line 3521
    .end local v18    # "resp":Landroid/os/Message;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 3530
    .restart local v18    # "resp":Landroid/os/Message;
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0

    .line 3534
    .end local v18    # "resp":Landroid/os/Message;
    .end local v19    # "cfuEx":Lcom/android/internal/telephony/gsm/GSMPhone$CfuEx;
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 19
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1635
    .local v2, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 1637
    const/16 v3, 0xb

    move-object/from16 v0, p5

    invoke-static {v3, v0}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v17

    .line 1639
    .local v17, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1641
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1642
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1643
    const/16 v3, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .local v7, "imsUtResult":Landroid/os/Message;
    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    .line 1644
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1693
    .end local v7    # "imsUtResult":Landroid/os/Message;
    .end local v17    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_0
    :goto_0
    return-void

    .line 1649
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1653
    if-nez p2, :cond_5

    .line 1654
    const/16 v16, 0x0

    .line 1655
    .local v16, "origUtCfuMode":I
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "disabled_ut_cfu_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1657
    .local v18, "utCfuMode":Ljava/lang/String;
    const-string v3, "enabled_ut_cfu_mode_on"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1658
    const/16 v16, 0x1

    .line 1663
    :cond_2
    :goto_1
    const-string v3, "persist.radio.ut.cfu.mode"

    const-string v4, "disabled_ut_cfu_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    new-instance v15, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-direct {v15, v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 1667
    .local v15, "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    const/16 v4, 0xc

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v3, v1, v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 1674
    .end local v15    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .end local v16    # "origUtCfuMode":I
    .end local v18    # "utCfuMode":Ljava/lang/String;
    .local v14, "resp":Landroid/os/Message;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSUtils;->isGsmUtSupport(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1676
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    const/4 v11, 0x1

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 1659
    .end local v14    # "resp":Landroid/os/Message;
    .restart local v16    # "origUtCfuMode":I
    .restart local v18    # "utCfuMode":Ljava/lang/String;
    :cond_3
    const-string v3, "enabled_ut_cfu_mode_off"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1660
    const/16 v16, 0x2

    goto :goto_1

    .line 1667
    .restart local v15    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 1670
    .end local v15    # "cfu":Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .end local v16    # "origUtCfuMode":I
    .end local v18    # "utCfuMode":Ljava/lang/String;
    :cond_5
    move-object/from16 v14, p5

    .restart local v14    # "resp":Landroid/os/Message;
    goto :goto_3

    .line 1683
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 1684
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 1686
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x1

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-interface/range {v8 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1910
    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    if-ne v1, v4, :cond_0

    .line 1911
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    .line 1949
    :goto_0
    return-void

    .line 1913
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1914
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_0

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1919
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_2

    .line 1929
    const-string v1, "GSMPhone"

    const-string v2, "getCallWaiting(): IMS in service"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    iput v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    .line 1931
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTbcwToEnabledOnIfDisabled()V

    .line 1932
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTerminalBasedCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0

    .line 1937
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/MMTelSSUtils;->isGsmUtSupport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1939
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_0

    .line 1945
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 1946
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 1948
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3076
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3078
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    .line 2085
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataOnRoamingEnabled(Z)V

    .line 2075
    return-void
.end method

.method public setDeviceIdAbnormal(I)V
    .locals 0
    .param p1, "abnormal"    # I

    .prologue
    .line 3837
    iput p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiAbnormal:I

    .line 3838
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 3369
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 3370
    .local v7, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 3374
    invoke-static {p1}, Lcom/android/internal/telephony/MMTelSSUtils;->isOutgoingCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3376
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p4, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 3408
    :goto_0
    return-void

    .line 3382
    :cond_0
    const/16 v0, 0x9

    invoke-static {v0, p4}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v9

    .line 3384
    .local v9, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    iget-object v0, v9, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3385
    if-eqz p2, :cond_1

    move v6, v4

    .line 3386
    .local v6, "enableState":I
    :cond_1
    iget-object v0, v9, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3387
    iget-object v0, v9, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3388
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0, v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 3390
    .local v8, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 3395
    .end local v6    # "enableState":I
    .end local v8    # "imsUtResult":Landroid/os/Message;
    .end local v9    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/MMTelSSUtils;->isGsmUtSupport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3397
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 3403
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 3404
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 3406
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setIncomingCallIndicationResponse(Z)V
    .locals 2
    .param p1, "accept"    # Z

    .prologue
    .line 3298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIncomingCallIndicationResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 3299
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setIncomingCallIndicationResponse(Z)V

    .line 3300
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onCompleteMsg"    # Landroid/os/Message;

    .prologue
    .line 3233
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    .line 3235
    return-void
.end method

.method public setInternalDataEnabledFlag(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabledFlag(Z)Z

    move-result v0

    return v0
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1523
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1524
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1525
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1526
    const/4 v1, 0x1

    .line 1528
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 2040
    return-void
.end method

.method public setNetworkSelectionModeSemiAutomatic(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1977
    new-instance v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;-><init>()V

    .line 1978
    .local v2, "nsm":Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;
    iput-object p2, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1979
    const-string v3, ""

    iput-object v3, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1980
    const-string v3, ""

    iput-object v3, v2, Lcom/android/internal/telephony/PhoneBase$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1982
    const/16 v3, 0x11

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1984
    .local v1, "msg":Landroid/os/Message;
    const-string v0, "0"

    .line 1985
    .local v0, "actype":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1986
    const-string v0, "2"

    .line 1991
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeSemiAutomatic(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1992
    return-void

    .line 1987
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    const-string v4, "4G"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1988
    const-string v0, "7"

    goto :goto_0
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2027
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 2028
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 6
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3186
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_1

    .line 3208
    :cond_0
    :goto_0
    return v2

    .line 3190
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 3191
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    .line 3195
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v2

    .line 3198
    .local v2, "status":Z
    if-eqz v2, :cond_0

    .line 3199
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3200
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    .line 3201
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 3204
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v3, :cond_0

    .line 3205
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x12

    const/4 v5, 0x0

    .line 1733
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1734
    .local v0, "imsPhone":Lcom/android/internal/telephony/imsphone/ImsPhone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 1738
    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSUtils;->isOp01IccCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1739
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SPECAIL_UT_COMMAND_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendErrorResponse(Landroid/os/Message;Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1768
    :goto_0
    return-void

    .line 1745
    :cond_0
    const/4 v3, 0x3

    invoke-static {v3, p2}, Lcom/android/internal/telephony/SuppSrvRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/SuppSrvRequest;

    move-result-object v2

    .line 1747
    .local v2, "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    iget-object v3, v2, Lcom/android/internal/telephony/SuppSrvRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1748
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1749
    .local v1, "imsUtResult":Landroid/os/Message;
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto :goto_0

    .line 1754
    .end local v1    # "imsUtResult":Landroid/os/Message;
    .end local v2    # "ss":Lcom/android/internal/telephony/SuppSrvRequest;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/MMTelSSUtils;->isGsmUtSupport(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1756
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSSReqDecisionMaker:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-virtual {p0, v6, p1, v5, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->setCLIR(ILandroid/os/Message;)V

    goto :goto_0

    .line 1763
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCsFallbackStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1764
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCsFallbackStatus(I)V

    .line 1766
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6, p1, v5, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPolEntry(Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 4
    .param p1, "networkWithAct"    # Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 3779
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V

    .line 3781
    return-void
.end method

.method protected setProperties()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 396
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(Z)V

    .line 1374
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 789
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method public setTbcwMode(I)V
    .locals 0
    .param p1, "newMode"    # I

    .prologue
    .line 1775
    iput p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mTbcwMode:I

    .line 1776
    return-void
.end method

.method public setTbcwToEnabledOnIfDisabled()V
    .locals 3

    .prologue
    .line 1783
    const-string v1, "persist.radio.terminal-based.cw"

    const-string v2, "disabled_tbcw"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1785
    .local v0, "tbcwMode":Ljava/lang/String;
    const-string v1, "disabled_tbcw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1786
    const-string v1, "persist.radio.terminal-based.cw"

    const-string v2, "enabled_tbcw_on"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    :cond_0
    return-void
.end method

.method public setTerminalBasedCallWaiting(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1876
    const-string v1, "persist.radio.terminal-based.cw"

    const-string v2, "disabled_tbcw"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1879
    .local v0, "tbcwMode":Ljava/lang/String;
    const-string v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTerminalBasedCallWaiting(): tbcwMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const-string v1, "enabled_tbcw_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1883
    if-nez p1, :cond_0

    .line 1884
    const-string v1, "persist.radio.terminal-based.cw"

    const-string v2, "enabled_tbcw_off"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    :cond_0
    if-eqz p2, :cond_1

    .line 1888
    invoke-static {p2, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1889
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1905
    :cond_1
    :goto_0
    return-void

    .line 1892
    :cond_2
    const-string v1, "enabled_tbcw_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1893
    if-eqz p1, :cond_3

    .line 1894
    const-string v1, "persist.radio.terminal-based.cw"

    const-string v2, "enabled_tbcw_on"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    :cond_3
    if-eqz p2, :cond_1

    .line 1898
    invoke-static {p2, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1899
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1904
    :cond_4
    const-string v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTerminalBasedCallWaiting(): ERROR: tbcwMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTrm(ILandroid/os/Message;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3753
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTrm(ILandroid/os/Message;)V

    .line 3754
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setUiTTYMode(ILandroid/os/Message;)V

    .line 2035
    :cond_0
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1537
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMPhone] setVoiceMailNumber  alphaTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " voiceMailNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    .line 1541
    const/16 v2, 0x14

    invoke-virtual {p0, v2, v5, v5, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1542
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1543
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1544
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1546
    :cond_0
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 3273
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3274
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 3275
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 3279
    :goto_0
    return-void

    .line 3277
    :cond_0
    const-string v1, "SIM Records not found, MWI not updated"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 1351
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :goto_0
    return-void

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1363
    return-void
.end method

.method public switchAntenna(II)V
    .locals 4
    .param p1, "callState"    # I
    .param p2, "ratMode"    # I

    .prologue
    const/4 v3, 0x1

    .line 4040
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchAntenna, callState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ratMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCallEstablished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallEstablished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PHONE_COUNT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/GSMPhone;->PHONE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    sget-boolean v0, Lcom/android/internal/telephony/gsm/GSMPhone;->MTK_SWITCH_ANTENNA_SUPPORT:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/internal/telephony/gsm/GSMPhone;->PHONE_COUNT:I

    if-le v0, v3, :cond_2

    .line 4043
    if-eq p1, v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    const/4 v0, 0x7

    if-eq p2, v0, :cond_3

    .line 4047
    :cond_1
    const-string v0, "GSMPhone"

    const-string v1, "Invalid parameter!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    :cond_2
    :goto_0
    return-void

    .line 4050
    :cond_3
    if-ne p1, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallEstablished:Z

    if-nez v0, :cond_6

    :cond_4
    if-nez p1, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallEstablished:Z

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallState:I

    if-ne p1, v0, :cond_7

    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRatMode:I

    if-ne p2, v0, :cond_7

    .line 4053
    :cond_6
    const-string v0, "GSMPhone"

    const-string v1, "Dummy operation, ignore!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4056
    :cond_7
    iput p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallState:I

    .line 4057
    iput p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRatMode:I

    .line 4058
    if-ne p1, v3, :cond_9

    .line 4059
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallEstablished:Z

    .line 4063
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->switchAntenna(II)V

    goto :goto_0

    .line 4060
    :cond_9
    if-nez p1, :cond_8

    .line 4061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallEstablished:Z

    goto :goto_1
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 849
    return-void
.end method

.method protected syncClirSetting()V
    .locals 5

    .prologue
    .line 2239
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2242
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "clir_key"

    .line 2245
    .local v1, "keyName":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clir_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2247
    .local v0, "clirSetting":I
    if-ltz v0, :cond_0

    .line 2248
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 2250
    :cond_0
    return-void

    .line 2242
    .end local v0    # "clirSetting":I
    .end local v1    # "keyName":Ljava/lang/String;
    :cond_1
    const-string v1, "clir_key_2"

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3229
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 3230
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCallRelatedSuppSvcRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedCrssn:Landroid/os/AsyncResult;

    .line 3317
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3262
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 823
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCachedSsn:Landroid/os/AsyncResult;

    .line 813
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 8

    .prologue
    .line 2968
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v6

    int-to-long v0, v6

    .line 2969
    .local v0, "currentDds":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 2971
    .local v4, "operatorNumeric":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCurrentCarrierInProvider: mSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentDds = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " operatorNumeric = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 2974
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 2976
    :try_start_0
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "current"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2977
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2978
    .local v3, "map":Landroid/content/ContentValues;
    const-string v6, "numeric"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2980
    const/4 v6, 0x1

    .line 2985
    .end local v3    # "map":Landroid/content/ContentValues;
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    return v6

    .line 2981
    :catch_0
    move-exception v2

    .line 2982
    .local v2, "e":Landroid/database/SQLException;
    const-string v6, "GSMPhone"

    const-string v7, "Can\'t store current operator"

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2985
    .end local v2    # "e":Landroid/database/SQLException;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->update()V

    .line 1584
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableSingleLocationUpdate()V

    .line 2055
    return-void
.end method
