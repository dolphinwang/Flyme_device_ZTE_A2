.class public Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
.super Landroid/os/Handler;
.source "SvlteRatController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;,
        Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    }
.end annotation


# static fields
.field public static final ENGINEER_MODE_AUTO:I = 0x0

.field public static final ENGINEER_MODE_CDMA:I = 0x1

.field public static final ENGINEER_MODE_CSFB:I = 0x2

.field public static final ENGINEER_MODE_LTE:I = 0x3

.field private static final EVENT_HANDLE_3G_RADIO_OFF:I = 0x3eb

.field private static final EVENT_RADIO_AVAILABLE:I = 0x3e8

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x3e9

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE_CDMA:I = 0x3ea

.field private static final EVENT_SRLTE_CDMA_RADIO_OFF:I = 0x3ed

.field private static final EVENT_SRLTE_LTE_RADIO_OFF:I = 0x3ec

.field public static final EXTRA_ROAMING_MODE:Ljava/lang/String; = "roamingMode"

.field public static final EXTRA_SVLTE_RAT_MODE:Ljava/lang/String; = "svlteRatMode"

.field public static final EXTRA_SVLTE_RAT_SWITCH_PRIORITY:Ljava/lang/String; = "svlteRatSwitchPriority"

.field public static final INTENT_ACTION_FINISH_SWITCH_ROAMING_MODE:Ljava/lang/String; = "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

.field public static final INTENT_ACTION_FINISH_SWITCH_SVLTE_RAT_MODE:Ljava/lang/String; = "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

.field public static final INTENT_ACTION_START_SWITCH_ROAMING_MODE:Ljava/lang/String; = "com.mediatek.intent.action.START_SWITCH_ROAMING_MODE"

.field public static final INTENT_ACTION_START_SWITCH_SVLTE_RAT_MODE:Ljava/lang/String; = "com.mediatek.intent.action.START_SWITCH_SVLTE_RAT_MODE"

.field private static final LOG_TAG_PHONE:Ljava/lang/String; = "PHONE"

.field private static final PENDINGINFO_SET_RAT:I = 0x0

.field private static final PENDINGINFO_SET_RAT_AND_ROAMING:I = 0x2

.field private static final PENDINGINFO_SET_ROAMING:I = 0x1

.field private static final PROPERTY_RAT_SWITCHING:Ljava/lang/String; = "ril.rat.switching"

.field public static final RAT_MODE_CSFB:I = 0x8

.field public static final RAT_MODE_CSFB_2G:I = 0x1

.field public static final RAT_MODE_CSFB_3G:I = 0x2

.field public static final RAT_MODE_CSFB_4G:I = 0x4

.field public static final RAT_MODE_SVLTE:I = 0x80

.field public static final RAT_MODE_SVLTE_2G:I = 0x10

.field public static final RAT_MODE_SVLTE_3G:I = 0x20

.field public static final RAT_MODE_SVLTE_4G:I = 0x40

.field private static final RAT_SWITCH_FOR_MODE_CHANGE:I = 0x2

.field private static final RAT_SWITCH_FOR_NORMAL:I = 0x1

.field public static final SVLTE_PROJ_DC_3M:I = 0x3

.field public static final SVLTE_PROJ_DC_4M:I = 0x4

.field public static final SVLTE_PROJ_DC_5M:I = 0x5

.field public static final SVLTE_PROJ_DC_6M:I = 0x6

.field public static final SVLTE_PROJ_SC_3M:I = 0x67

.field public static final SVLTE_PROJ_SC_4M:I = 0x68

.field public static final SVLTE_PROJ_SC_5M:I = 0x69

.field public static final SVLTE_PROJ_SC_6M:I = 0x6a

.field private static sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sIsFlightModePowerOffMdSupport:Z


# instance fields
.field private mAirplaneMode:Z

.field private mBlockByRadioPowerOff:Z

.field private mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mContext:Landroid/content/Context;

.field private mEngMode:I

.field private mEngineerMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

.field private mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

.field private mLtePhone:Lcom/android/internal/telephony/PhoneBase;

.field private mNewRadioTechMode:I

.field private mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field private mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

.field private final mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

.field private mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

.field private mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

.field private mRadioTechMode:I

.field private mRatChangeInRoaming:Z

.field private mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetingCdmaPhoneRadioOff:Z

.field private mResetingLtePhoneRadioOff:Z

.field private mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field private mRoamingModeForModeController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

.field private mSlotId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

.field private mSvlteRatModeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchingRadioByRatSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    sput-boolean v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    .line 284
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;)V
    .locals 4
    .param p1, "lteDcPhoneProxy"    # Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 292
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 170
    const/4 v1, 0x3

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    .line 172
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 173
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 174
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 175
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 176
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 177
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingModeForModeController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 179
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;->ENGINEER_MODE_NONE:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngineerMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$EngineerMode;

    .line 180
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    .line 185
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingLtePhoneRadioOff:Z

    .line 186
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingCdmaPhoneRadioOff:Z

    .line 187
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSwitchingRadioByRatSwitch:Z

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    .line 225
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

    .line 285
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 286
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 334
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    .line 335
    iput-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    .line 336
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$1;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 294
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    .line 295
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 296
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    .line 297
    new-instance v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    .line 298
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    .line 300
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3e8

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3e9

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 302
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3ea

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 304
    const-string v1, "1"

    const-string v2, "ril.flightmode.poweroffMD"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    .line 308
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getSvlteProjectType()I

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_1

    .line 309
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 310
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 311
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getCdmaRatModeKey(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sIsFlightModePowerOffMdSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 318
    const-string v1, "OP09"

    const-string v2, "ro.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 320
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 326
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isAirplaneModeFromSetting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "x2"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->needSwitchInAirplaneMode(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;ZZZI)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "x2"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->resetRadioPowerOff(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingCdmaPhoneRadioOff:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingLtePhoneRadioOff:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSwitchingRadioByRatSwitch:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingModeForModeController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getCardType()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsUsimApp(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isFixedSvlteMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2602(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    return p1
.end method

.method static synthetic access$2700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "x2"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdmaOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "x2"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isLteOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Landroid/content/Intent;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->updateAirplaneMode(Landroid/content/Intent;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .param p1, "x1"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->blockByRadioPowerOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    return-object v0
.end method

.method private blockByRadioPowerOff()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 992
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 994
    .local v0, "airplaneMode":I
    if-ne v0, v1, :cond_0

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockByRadioPowerOff(), airplaneMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 998
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private containsCdmaApp()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 904
    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 905
    const-string v3, "persist.radio.simswitch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 907
    .local v0, "capabilitySlotId":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isDualCtCard()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-eq v3, v0, :cond_1

    .line 912
    .end local v0    # "capabilitySlotId":I
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "capabilitySlotId":I
    :cond_1
    move v1, v2

    .line 910
    goto :goto_0
.end method

.method private containsUsimApp(I)Z
    .locals 1
    .param p1, "cardType"    # I

    .prologue
    .line 937
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_0

    .line 938
    const/4 v0, 0x1

    .line 940
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final executePendingSwitchRecord()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executePendingSwitchRecord, mPendingCardTypeSwitchRecord ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPendingModeSwitchRecord = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1078
    const/4 v7, 0x0

    .line 1079
    .local v7, "pendingRecord":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_2

    .line 1080
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 1081
    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 1088
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executePendingSwitchRecord, mSvlteRatMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoamingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1090
    if-eqz v7, :cond_5

    .line 1091
    iget v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    if-nez v0, :cond_3

    .line 1092
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1099
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executePendingSwitchRecord, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1101
    iget-object v1, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iget-object v2, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iget-boolean v3, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mForceSwitch:Z

    iget v4, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPriority:I

    iget v5, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    iget-object v6, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingResponse:Landroid/os/Message;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    .line 1107
    iget-boolean v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mRatChangeInRoaming:Z

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    .line 1124
    :cond_1
    return-void

    .line 1082
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 1084
    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    goto :goto_0

    .line 1093
    :cond_3
    iget v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1094
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v0, v7, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    goto :goto_1

    .line 1096
    :cond_4
    const-string v0, "executePendingSwitchRecord, no need to update any rat or roaming info"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 1109
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v9

    .line 1110
    .local v9, "phoneCount":I
    const/4 v11, 0x0

    .local v11, "slotId":I
    :goto_2
    if-ge v11, v9, :cond_1

    .line 1111
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-eq v11, v0, :cond_6

    .line 1112
    invoke-static {v11}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    .line 1113
    .local v8, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v8, :cond_6

    instance-of v0, v8, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    if-eqz v0, :cond_6

    .line 1114
    check-cast v8, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .end local v8    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v8}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v10

    .line 1116
    .local v10, "ratController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    invoke-direct {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->hasPendingSwitchRecord()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executePendingSwitchRecord, notify slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1118
    invoke-direct {v10}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->executePendingSwitchRecord()V

    .line 1110
    .end local v10    # "ratController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method

.method private finishSwitchMode(ZZZI)V
    .locals 6
    .param p1, "forceFinish"    # Z
    .param p2, "svlteRatChanged"    # Z
    .param p3, "roamingChanged"    # Z
    .param p4, "priority"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSwitchMode, forceFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", svlteRatChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", roamingChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", priority = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1051
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 1052
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1053
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.FINISH_SWITCH_SVLTE_RAT_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "svlteRatMode"

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1055
    const-string v2, "svlteRatSwitchPriority"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1057
    invoke-static {v0, v5, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1059
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz p3, :cond_2

    .line 1060
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1061
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1062
    const-string v2, "roamingMode"

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1063
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1064
    invoke-static {v0, v5, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1065
    const-string v2, "ril.rat.switching"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1070
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->executePendingSwitchRecord()V

    .line 1071
    return-void
.end method

.method private getCardType()I
    .locals 3

    .prologue
    .line 898
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 899
    .local v0, "cardType":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCardType]: SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 900
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    aget v1, v0, v1

    return v1
.end method

.method public static getEngineerMode()I
    .locals 3

    .prologue
    .line 956
    const-string v1, "persist.radio.ct.ir.engmode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 958
    .local v0, "mode":I
    return v0
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    return-object v0
.end method

.method public static getSvlteProjectType()I
    .locals 5

    .prologue
    .line 1576
    const/4 v2, 0x6

    .line 1577
    .local v2, "type":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getC2KOMNetworkSelectionType()I

    move-result v0

    .line 1578
    .local v0, "nwSelType":I
    const-string v3, "ro.mtk.c2k.om.mode"

    const-string v4, "cllwtg"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1580
    .local v1, "omMode":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 1581
    const-string v3, "cllwtg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1582
    const/16 v2, 0x6a

    .line 1602
    :cond_0
    :goto_0
    return v2

    .line 1583
    :cond_1
    const-string v3, "cllwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1584
    const/16 v2, 0x69

    goto :goto_0

    .line 1585
    :cond_2
    const-string v3, "cllg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1586
    const/16 v2, 0x68

    goto :goto_0

    .line 1587
    :cond_3
    const-string v3, "cwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1588
    const/16 v2, 0x67

    goto :goto_0

    .line 1591
    :cond_4
    const-string v3, "cllwtg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1592
    const/4 v2, 0x6

    goto :goto_0

    .line 1593
    :cond_5
    const-string v3, "cllwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1594
    const/4 v2, 0x5

    goto :goto_0

    .line 1595
    :cond_6
    const-string v3, "cllg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1596
    const/4 v2, 0x4

    goto :goto_0

    .line 1597
    :cond_7
    const-string v3, "cwg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1598
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private final hasPendingSwitchRecord()Z
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isAirplaneModeFromSetting()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 375
    .local v0, "airplaneMode":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAirplaneModeFromSetting: airplaneMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 376
    return v0

    .end local v0    # "airplaneMode":Z
    :cond_0
    move v0, v1

    .line 373
    goto :goto_0
.end method

.method private isCdmaOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z
    .locals 7
    .param p1, "ratMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 447
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v4

    .line 450
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 451
    .local v0, "cardType":[I
    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    aget v5, v0, v5

    if-nez v5, :cond_2

    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move v4, v3

    .line 454
    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isCdmaOn()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isCdmaOn()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtCard(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v3

    .line 458
    .local v1, "cdmaOn":Z
    :goto_1
    const/4 v2, 0x0

    .line 459
    .local v2, "isGmssOn":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getC2KOMNetworkSelectionType()I

    move-result v5

    if-nez v5, :cond_3

    .line 460
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne p1, v5, :cond_6

    move v2, v3

    .line 463
    :cond_3
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cdmaOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isGmsson="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 464
    if-nez v1, :cond_4

    if-eqz v2, :cond_0

    :cond_4
    move v4, v3

    goto :goto_0

    .end local v1    # "cdmaOn":Z
    .end local v2    # "isGmssOn":Z
    :cond_5
    move v1, v4

    .line 456
    goto :goto_1

    .restart local v1    # "cdmaOn":Z
    .restart local v2    # "isGmssOn":Z
    :cond_6
    move v2, v4

    .line 460
    goto :goto_2
.end method

.method private isCtCard(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 928
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 929
    .local v0, "cardType":[I
    aget v2, v0, p1

    and-int/lit8 v2, v2, 0x4

    if-gtz v2, :cond_0

    aget v2, v0, p1

    and-int/lit8 v2, v2, 0x8

    if-gtz v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 932
    .local v1, "retCtCard":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCtCard, slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retCtCard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 933
    return v1

    .line 929
    .end local v1    # "retCtCard":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDualCtCard()Z
    .locals 4

    .prologue
    .line 916
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 917
    .local v0, "cardType":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 918
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDualCtCard slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 920
    const/4 v2, 0x0

    .line 924
    :goto_1
    return v2

    .line 917
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    :cond_1
    const-string v2, "isDualCtCard true "

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 924
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isFixedSvlteMode()Z
    .locals 4

    .prologue
    .line 1565
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-nez v1, :cond_0

    const-string v1, "OP09"

    const-string v2, "ro.operator.optr"

    const-string v3, "OM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1567
    .local v0, "fixedSvlteMode":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " fixedSvlteMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1568
    return v0

    .line 1565
    .end local v0    # "fixedSvlteMode":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLteOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z
    .locals 3
    .param p1, "ratMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    const/4 v0, 0x0

    .line 430
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne p2, v1, :cond_0

    .line 442
    :goto_0
    return v0

    .line 435
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isLteOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isLteOn()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->isGsmOn()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->isGsmOn()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 438
    .local v0, "lteOn":Z
    :cond_3
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 439
    const/4 v0, 0x1

    .line 441
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lteOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1606
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SRC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

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

    .line 1607
    return-void
.end method

.method private final needSwitchInAirplaneMode(Z)Z
    .locals 3
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 1002
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isFlightModePowerOffModemSupport()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1004
    .local v0, "result":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needSwitchInAirplaneMode(), result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1005
    return v0

    .line 1002
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetRadioPowerOff(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 7
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 962
    const/4 v1, 0x0

    .line 963
    .local v1, "forceLteOn":Z
    const/4 v0, 0x0

    .line 964
    .local v0, "forceCdmaOn":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-direct {p0, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isLteOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 966
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v2

    if-nez v2, :cond_2

    .line 967
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingLtePhoneRadioOff:Z

    .line 968
    const-string v2, "radio off gsm, registerForLTEOff"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 969
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x3ec

    invoke-interface {v2, p0, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 974
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-direct {p0, v2, v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdmaOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 975
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 976
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v2

    if-nez v2, :cond_3

    .line 977
    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingCdmaPhoneRadioOff:Z

    .line 978
    const-string v2, "radio off cdma, registerForCDMAOff"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 979
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x3ed

    invoke-interface {v2, p0, v3, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 983
    :goto_1
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 984
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->switchRat()V

    .line 989
    :cond_1
    return-void

    .line 971
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 981
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V
    .locals 5
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 383
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z

    move-result v0

    .line 384
    .local v0, "hasCdmaApp":Z
    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 385
    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 386
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p1, v1, :cond_1

    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne p2, v1, :cond_2

    .line 388
    :cond_1
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 401
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioTechMode, hasCdmaApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " svlteRatMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "roamingMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mNewRadioTechMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 404
    return-void

    .line 390
    :cond_3
    if-eqz v0, :cond_7

    .line 391
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq p1, v1, :cond_5

    :cond_4
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne p2, v1, :cond_6

    .line 394
    :cond_5
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    goto :goto_0

    .line 395
    :cond_6
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne p2, v1, :cond_2

    .line 396
    iput v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    goto :goto_0

    .line 398
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isFixedSvlteMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 399
    iput v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    goto :goto_0
.end method

.method private setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ILandroid/os/Message;)Z
    .locals 7
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p3, "setInfo"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setSvlteRatMode] svlteRatMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRoamingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 715
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z
    .locals 9
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p3, "forceSwitch"    # Z
    .param p4, "recordPriority"    # I
    .param p5, "pendingSetInfo"    # I
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->blockByRadioPowerOff()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->needSwitchInAirplaneMode(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    .line 820
    sget-boolean v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    if-nez v0, :cond_0

    .line 821
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 822
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 825
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 826
    const-string v0, "setSvlteRatMode(), block by radio power off now."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 827
    const/4 v0, 0x0

    .line 894
    :goto_0
    return v0

    .line 830
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode(), radioTechMode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode(), SvlteRatMode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode(), RoamingMode from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode(), sInSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 835
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 836
    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    .line 837
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;ZII)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 847
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 840
    :cond_3
    new-instance v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;-><init>(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;ZII)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 842
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    if-eqz v0, :cond_2

    .line 843
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mRatChangeInRoaming:Z

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    goto :goto_1

    .line 851
    :cond_4
    if-nez p3, :cond_6

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    if-nez v0, :cond_6

    .line 852
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-eqz v0, :cond_5

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode(), In engineer mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 854
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 856
    :cond_5
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, p1, :cond_6

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v0, p2, :cond_6

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    if-ne v0, v1, :cond_6

    .line 858
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 859
    const-string v0, "setSvlteRatMode(), already in desired mode -> no need to switch, send finish broadcast"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 861
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 865
    :cond_6
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    if-eqz v0, :cond_8

    .line 866
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 867
    const/4 v8, 0x0

    .line 868
    .local v8, "preferNetworkType":I
    const-string v0, "ro.mtk_svlte_lcg_support"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setSvlteRatMode(), 4M mRatChangeInRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set to NETWORK_MODE_GSM_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 871
    const/4 v8, 0x1

    .line 877
    :goto_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v8, p6}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSvlteRatMode, rat change in roaming, rat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNewRadioTechMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " svlteRatMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRoamingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 883
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 884
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 885
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    .line 887
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 873
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setSvlteRatMode(), NOT 4M! mRatChangeInRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set to NETWORK_MODE_WCDMA_PREF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 889
    .end local v8    # "preferNetworkType":I
    :cond_8
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 890
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 891
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v0, p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v1, p2, :cond_a

    const/4 v1, 0x1

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->startSwitchMode(ZZ)V

    .line 893
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    invoke-virtual {v0, p3, p6, p4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->doSwitch(ZLandroid/os/Message;I)V

    .line 894
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 891
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private startSwitchMode(ZZ)V
    .locals 7
    .param p1, "svlteRatChanged"    # Z
    .param p2, "roamingChanged"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x20000000

    const/4 v4, -0x1

    .line 1027
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1028
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 1029
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    if-eqz p1, :cond_0

    .line 1030
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.START_SWITCH_SVLTE_RAT_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1032
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1033
    invoke-static {v0, v6, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1035
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p2, :cond_1

    .line 1036
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.intent.action.START_SWITCH_ROAMING_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1037
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1038
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1039
    invoke-static {v0, v6, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1040
    const-string v2, "ril.rat.switching"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private final updateAirplaneMode(Landroid/content/Intent;Landroid/os/Message;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 347
    const/4 v0, 0x0

    .line 349
    .local v0, "airplaneMode":Z
    if-eqz p1, :cond_1

    .line 350
    const-string v1, "state"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirplaneMode: intent state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 356
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirplaneMode,mAirplaneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",airplaneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 359
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    if-eq v0, v1, :cond_0

    .line 360
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    .line 361
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mAirplaneMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    if-eqz v1, :cond_0

    .line 362
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mBlockByRadioPowerOff:Z

    .line 363
    sget-boolean v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    if-nez v1, :cond_0

    .line 364
    const-string v1, "updateAirplaneMode: setSvlteRatMode"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ILandroid/os/Message;)Z

    .line 370
    :cond_0
    return-void

    .line 353
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isAirplaneModeFromSetting()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public allowRadioPowerOn(I)Z
    .locals 12
    .param p1, "phoneId"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1495
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v9, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1496
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtDualModeSimCard(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1500
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    if-ne v9, v11, :cond_2

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1503
    const-string v7, "allowRadioPowerOn return for CDMA is not ActiveSvlteMode in CSFB."

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    move v7, v8

    .line 1548
    :cond_1
    :goto_0
    return v7

    .line 1506
    :cond_2
    const-string v8, "allowRadioPowerOn return for non-svlte slot."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1510
    :cond_3
    const-string v9, "persist.radio.simswitch"

    invoke-static {v9, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 1512
    .local v0, "capabilitySlotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isDualCtCard()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result v9

    if-eq v0, v9, :cond_4

    .line 1514
    const-string v8, "allowRadioPowerOn return for dual ct card non-svlte slot."

    invoke-direct {p0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1517
    :cond_4
    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSwitchingRadioByRatSwitch:Z

    if-eqz v9, :cond_5

    move v7, v8

    .line 1518
    goto :goto_0

    .line 1521
    :cond_5
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-ne v9, v11, :cond_6

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v9

    if-ne v9, p1, :cond_6

    .line 1522
    const-string v7, "allowRadioPowerOn=false on CDMA in LWG mode for engineer mode."

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    move v7, v8

    .line 1523
    goto :goto_0

    .line 1526
    :cond_6
    iget v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-ne v9, v7, :cond_7

    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v9

    if-ne v9, p1, :cond_7

    .line 1527
    const-string v7, "allowRadioPowerOn=false on LtePhone in CDMA Only for engineer mode."

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    move v7, v8

    .line 1528
    goto :goto_0

    .line 1531
    :cond_7
    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 1532
    .local v5, "ratMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    iget-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 1533
    .local v6, "roamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-direct {p0, v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isLteOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z

    move-result v2

    .line 1534
    .local v2, "lwgOn":Z
    invoke-direct {p0, v5, v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdmaOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z

    move-result v1

    .line 1535
    .local v1, "cdmaOn":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allowRadioPowerOn lwgOn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cdmaOn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1536
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v9, p1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 1538
    .local v4, "phoneType":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allowRadioPowerOn, phoneId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", phoneType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ratMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", roamingMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1541
    if-ne v4, v11, :cond_8

    if-nez v1, :cond_8

    .line 1542
    const-string v7, "allowRadioPowerOn=false on C2K radio."

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    move v7, v8

    .line 1543
    goto/16 :goto_0

    .line 1544
    :cond_8
    if-ne v4, v7, :cond_1

    if-nez v2, :cond_1

    .line 1545
    const-string v7, "allowRadioPowerOn=false on LWG radio."

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    move v7, v8

    .line 1546
    goto/16 :goto_0
.end method

.method public getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method public getRoamingModeForModeController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingModeForModeController:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    return-object v0
.end method

.method public getSuggestedRadioCapability()I
    .locals 5

    .prologue
    .line 415
    const/4 v2, 0x0

    .line 416
    .local v2, "suggested":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-direct {p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdmaOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z

    move-result v0

    .line 417
    .local v0, "cdmaOn":Z
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-direct {p0, v3, v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isLteOn(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Z

    move-result v1

    .line 418
    .local v1, "lteOn":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 419
    const/4 v2, 0x1

    .line 425
    :cond_0
    :goto_0
    return v2

    .line 420
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 421
    const/4 v2, 0x2

    goto :goto_0

    .line 422
    :cond_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 423
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public getSvlteRatMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 469
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 471
    :pswitch_0
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 472
    const-string v0, "EM: CDMA only mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setRadioPower(ZI)V

    .line 475
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 476
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtCard(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    const-string v0, "persist.radio.simswitch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 481
    .local v8, "capabilitySlotId":I
    const/4 v9, 0x0

    .line 482
    .local v9, "evdoMode":I
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    const/4 v9, 0x1

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Lcom/android/internal/telephony/CommandsInterface;->configEvdoMode(ILandroid/os/Message;)V

    .line 490
    .end local v8    # "capabilitySlotId":I
    .end local v9    # "evdoMode":I
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 491
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->toggleActivePhone(I)V

    .line 517
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    goto :goto_0

    .line 493
    :cond_4
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 494
    const-string v0, "EM: CSFB only mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 496
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    goto :goto_1

    .line 499
    :cond_5
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 500
    const-string v0, "EM: LTE only mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 501
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    .line 502
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->toggleActivePhone(I)V

    goto :goto_1

    .line 504
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RADIO_AVAILABLE, Auto mode, Reset to roaming mode to Home, mSvlteRatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoamingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewRadioTechMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRadioTechMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtDualModeSimCard(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_7
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v0

    if-nez v0, :cond_3

    .line 514
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    goto/16 :goto_1

    .line 520
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_RADIO_NOT_AVAILABLE, RadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtDualModeSimCard(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 524
    :cond_8
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 526
    :cond_9
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingLtePhoneRadioOff:Z

    if-eqz v0, :cond_a

    .line 527
    const-string v0, "LTE Radio Unabailable, finish ratSwitch "

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOff(Landroid/os/Handler;)V

    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingLtePhoneRadioOff:Z

    .line 531
    :cond_a
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 537
    :pswitch_2
    const-string v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE_CDMA"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 538
    sget-boolean v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sIsFlightModePowerOffMdSupport:Z

    if-nez v0, :cond_b

    .line 539
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRadioTechMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 543
    const-string v0, "Sending EVDOMODE=0"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/16 v2, 0x3eb

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->configEvdoMode(ILandroid/os/Message;)V

    .line 548
    :cond_b
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    .line 549
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingCdmaPhoneRadioOff:Z

    if-eqz v0, :cond_c

    .line 550
    const-string v0, "CDMA Radio Unavailable, finish ratSwitch"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOff(Landroid/os/Handler;)V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingCdmaPhoneRadioOff:Z

    .line 554
    :cond_c
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->sInSwitching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 561
    :pswitch_3
    const-string v0, "EVENT_HANDLE_3G_RADIO_OFF. Sending ECTMODE=2"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->ordinal()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v4

    iget-object v5, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ordinal()I

    move-result v5

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v6

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setSvlteRatMode(IIIIIZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 571
    :pswitch_4
    const-string v0, "EVENT_SRLTE_CDMA_RADIO_OFF received"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingCdmaPhoneRadioOff:Z

    .line 573
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mCdmaPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOff(Landroid/os/Handler;)V

    .line 574
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->switchRat()V

    goto/16 :goto_0

    .line 577
    :pswitch_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mResetingLtePhoneRadioOff:Z

    .line 578
    const-string v0, "EVENT_SRLTE_LTE_RADIO_OFF received"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLtePhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOff(Landroid/os/Handler;)V

    .line 580
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatSwitchHandler:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RatSwitchHandler;->switchRat()V

    goto/16 :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public isCdma4GSim()Z
    .locals 2

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getCardType()I

    move-result v0

    .line 949
    .local v0, "cardType":I
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsCdmaApp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->containsUsimApp(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 950
    const/4 v1, 0x1

    .line 952
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCtDualModeSimCard(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1557
    const-string v1, " isCtDualModeSimCard, start"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1558
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCdma4GSim()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1560
    .local v0, "ctDualModeSimCard":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isCtDualModeSimCard, ctDualModeSimCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 1561
    return v0

    .line 1558
    .end local v0    # "ctDualModeSimCard":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_0
    return-void
.end method

.method public setPreviousSubId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mOnSubscriptionsChangedListener:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SstSubscriptionsChangedListener;->mPreviousSubId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    return v0
.end method

.method public setRadioTechnology(ILandroid/os/Message;)Z
    .locals 10
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRadioTechnology] networkType:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 728
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-eqz v2, :cond_2

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRadioTechnology] In engineer mode:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 730
    and-int/lit8 v2, p1, 0x8

    if-gtz v2, :cond_0

    and-int/lit16 v2, p1, 0x80

    if-lez v2, :cond_1

    .line 732
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, v8, v0, v0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    .line 810
    :goto_0
    return v0

    .line 734
    :cond_1
    invoke-direct {p0, v8, v0, v0, v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->finishSwitchMode(ZZZI)V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 740
    .local v1, "svlteRatMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    const/4 v3, 0x0

    .line 741
    .local v3, "forceSwitch":Z
    and-int/lit8 v2, p1, 0x8

    if-gtz v2, :cond_3

    and-int/lit16 v2, p1, 0x80

    if-lez v2, :cond_4

    .line 743
    :cond_3
    const/4 v3, 0x1

    .line 745
    :cond_4
    const/16 v2, 0x10

    if-lt p1, v2, :cond_5

    .line 746
    and-int/lit8 v2, p1, 0x10

    if-lez v2, :cond_e

    and-int/lit8 v2, p1, 0x20

    if-lez v2, :cond_e

    and-int/lit8 v2, p1, 0x40

    if-lez v2, :cond_e

    .line 749
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 764
    :cond_5
    :goto_1
    const/4 v4, 0x1

    .line 765
    .local v4, "recordPriority":I
    and-int/lit8 v2, p1, 0x8

    if-gtz v2, :cond_6

    and-int/lit16 v2, p1, 0x80

    if-lez v2, :cond_7

    .line 767
    :cond_6
    const/4 v4, 0x2

    .line 771
    :cond_7
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    if-ne v1, v2, :cond_8

    .line 772
    const-string v2, "persist.radio.simswitch"

    const-string v6, "1"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    .line 774
    .local v7, "capabilityPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRadioTechnology] capabilityPhoneId: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " mSlotId: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 777
    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    if-eq v7, v2, :cond_8

    .line 778
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 781
    .end local v7    # "capabilityPhoneId":I
    :cond_8
    const-string v2, "ro.mtk_lte_support"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v8, :cond_11

    .line 782
    .local v8, "isLteSupport":Z
    :goto_2
    if-nez v8, :cond_9

    .line 783
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 785
    :cond_9
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isActiveSvlteMode(I)Z

    move-result v2

    if-nez v2, :cond_a

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSlotId:I

    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->isCtDualModeSimCard(I)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getCardType()I

    move-result v2

    if-nez v2, :cond_b

    .line 790
    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 791
    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    if-eqz v2, :cond_b

    .line 792
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    .line 795
    :cond_b
    const/4 v5, 0x0

    .line 796
    .local v5, "pendingInfo":I
    iput-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 797
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_d

    .line 798
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    if-eqz v0, :cond_c

    .line 799
    const/4 v5, 0x2

    .line 800
    const-string v0, "[setRadioTechnology] update pendingRat info"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 802
    :cond_c
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 803
    iput-object v9, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 806
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRadioTechnology] networkType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " svlteRatMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mRoamingMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " forceSwitch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " recordPriority: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 810
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    move-result v0

    goto/16 :goto_0

    .line 750
    .end local v4    # "recordPriority":I
    .end local v5    # "pendingInfo":I
    .end local v8    # "isLteSupport":Z
    :cond_e
    and-int/lit8 v2, p1, 0x10

    if-lez v2, :cond_f

    and-int/lit8 v2, p1, 0x20

    if-lez v2, :cond_f

    .line 752
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_3G:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 754
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    sget-object v6, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-ne v2, v6, :cond_5

    .line 755
    iput-boolean v8, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRatChangeInRoaming:Z

    goto/16 :goto_1

    .line 758
    :cond_f
    and-int/lit8 v2, p1, 0x40

    if-lez v2, :cond_10

    .line 759
    sget-object v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->SVLTE_RAT_MODE_4G_DATA_ONLY:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    goto/16 :goto_1

    .line 761
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRadioTechnology] mode not supported: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v4    # "recordPriority":I
    :cond_11
    move v8, v0

    .line 781
    goto/16 :goto_2
.end method

.method public setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z
    .locals 7
    .param p1, "roamingMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 666
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    if-eqz v0, :cond_0

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRoamingMode] In engineer mode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mEngMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x0

    .line 701
    :goto_0
    return v0

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRoamingMode]roamingMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mRoamingMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 674
    const/4 v5, 0x1

    .line 675
    .local v5, "pendingInfo":I
    const/4 v4, 0x1

    .line 676
    .local v4, "priority":I
    const/4 v3, 0x0

    .line 678
    .local v3, "forSwitch":Z
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 680
    .local v1, "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget v4, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPriority:I

    .line 681
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mForceSwitch:Z

    .line 682
    iput-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForModeSwtich:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 695
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRadioTechMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    .line 699
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->resetRadioPowerOff(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)V

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    .line 701
    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ZIILandroid/os/Message;)Z

    move-result v0

    goto :goto_0

    .line 683
    .end local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v0, :cond_3

    .line 684
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget v0, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSetInfo:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 685
    const-string v0, "[setRoamingMode] should update pending info"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->logd(Ljava/lang/String;)V

    .line 686
    const/4 v5, 0x2

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v1, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .line 689
    .restart local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-boolean v3, v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mForceSwitch:Z

    .line 690
    iput-object v6, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    goto :goto_1

    .line 692
    .end local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    :cond_3
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewSvlteRatMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    .restart local v1    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    goto :goto_1
.end method

.method public setRoamingMode(ZLandroid/os/Message;)Z
    .locals 2
    .param p1, "roaming"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 654
    if-eqz p1, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 656
    .local v0, "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setRoamingMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;Landroid/os/Message;)Z

    move-result v1

    return v1

    .line 654
    .end local v0    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_HOME:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    goto :goto_0
.end method

.method public setSvlteRatMode(ILandroid/os/Message;)Z
    .locals 1
    .param p1, "svlteRatMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 611
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;->values()[Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Landroid/os/Message;)Z
    .locals 2
    .param p1, "svlteRatMode"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 622
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    iget-object v0, v1, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;->mPendingRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .line 624
    .local v0, "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mPendingRecordForNormal:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$PendingSwitchRecord;

    .line 628
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->setSvlteRatMode(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatMode;Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;ILandroid/os/Message;)Z

    move-result v1

    return v1

    .line 626
    .end local v0    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mNewRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    .restart local v0    # "mode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    goto :goto_0
.end method

.method public unregisterSvlteRatModeChangedListener(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$SvlteRatModeChangedListener;

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->mSvlteRatModeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1024
    return-void
.end method
