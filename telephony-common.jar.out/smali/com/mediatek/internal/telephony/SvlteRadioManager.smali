.class public Lcom/mediatek/internal/telephony/SvlteRadioManager;
.super Lcom/mediatek/internal/telephony/RadioManager;
.source "SvlteRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/SvlteRadioManager$3;,
        Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;,
        Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;
    }
.end annotation


# static fields
.field private static final CDMA_PROPERTY_SILENT_REBOOT_MD:Ljava/lang/String; = "cdma.ril.eboot"

.field private static final DBG:Z = true

.field private static final EVENT_ECC_DISCONNECT:I = 0x2

.field private static final EVENT_RADIO_AVAILABLE:I = 0x1

.field private static final EVENT_RIL_C2K_MODEM_POWER_REQUEST_DONE:I = 0x4

.field private static final EVENT_RIL_GSM_MODEM_POWER_REQUEST_DONE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "SvlteRadioManager"

.field private static final MODEM_POWER_OFF_DONE:Ljava/lang/String; = "1"

.field private static final MODEM_POWER_OFF_STATE:Ljava/lang/String; = "-1"

.field private static final PROPERTY_CONFIG_EMDSTATUS_SEND:Ljava/lang/String; = "gsm.emdstatus.send.done"

.field private static final PROPERTY_ICCID_SIM_C2K:Ljava/lang/String; = "ril.iccid.sim1_c2k"

.field private static final PROPERTY_NO:Ljava/lang/String; = "0"

.field private static final PROPERTY_RIL_CARD_TYPE_SET:Ljava/lang/String; = "gsm.ril.cardtypeset"

.field private static final PROPERTY_RIL_CARD_TYPE_SET_2:Ljava/lang/String; = "gsm.ril.cardtypeset.2"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

.field private static final PROPERTY_YES:Ljava/lang/String; = "1"

.field private static final STACK_TRACE_CALLER_INDEX:I = 0x3

.field private static final THERMAL_MD3_POWER_OFF:Ljava/lang/String; = "cdma.t6.offmd3"


# instance fields
.field private mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

.field private mContext:Landroid/content/Context;

.field private mEccPhone:Lcom/android/internal/telephony/Phone;

.field private mForceSetRadioPowerRunnable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

.field private mPhonePowerProxyRunnable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioPowerRunnable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gsm.ril.fulluicctype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gsm.ril.fulluicctype.2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gsm.ril.fulluicctype.3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "gsm.ril.fulluicctype.4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/RadioManager;-><init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 102
    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    .line 108
    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    .line 1155
    new-instance v1, Lcom/mediatek/internal/telephony/SvlteRadioManager$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$2;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    iget v2, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    invoke-direct {v1, p1, v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.intent.action.INTENT_ACTION_RF_OFF_IN_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 125
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    new-instance v1, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-direct {v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    .line 129
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->initRadioPowerRunnables(I)V

    .line 132
    new-instance v1, Lcom/mediatek/internal/telephony/SvlteRadioManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$1;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->registerCIs()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/SvlteRadioManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/SvlteRadioManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/SvlteRadioManager;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resumeModemPowerOffRequestIfBlocked()V

    return-void
.end method

.method private forceSetModemPower(ZI)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceSetModemPower, phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 398
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSvlteModemsPower(ZI)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setGsmModemPower(ZI)V

    goto :goto_0
.end method

.method private getPhoneByPhoneProxy(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 352
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    .line 353
    .local v0, "phoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getPhoneById(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 357
    :goto_0
    return-object v1

    .line 356
    :cond_0
    const-string v1, "getPhoneProxy: phoneProxy is null"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 357
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "isLtePhoneNeeded"    # Z

    .prologue
    .line 338
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    .line 339
    .local v0, "phoneProxy":Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;
    if-eqz v0, :cond_1

    .line 340
    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 347
    :goto_0
    return-object v1

    .line 343
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    goto :goto_0

    .line 346
    :cond_1
    const-string v1, "SvlteRadioManager"

    const-string v2, "getPhoneProxy: phoneProxy is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initRadioPowerRunnables(I)V
    .locals 6
    .param p1, "phoneCount"    # I

    .prologue
    const/4 v5, 0x1

    .line 712
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    .line 713
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    .line 714
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;

    .line 716
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v3, p0, v5, v0}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v4

    invoke-direct {v3, p0, v5, v4}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v3, p0, v5, v0}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v3, p0, v5, v0}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v3, p0, v5, v0}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhonePowerProxyRunnable:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getLteDcPhoneId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v3, p0, v5, v0}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_0
    return-void
.end method

.method private isAllowModemPowerRequest()Z
    .locals 3

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isRadioAvailableforModemPower()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setAndGetRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllowRadioPowerOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 1151
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->allowRadioPowerOn(I)Z

    move-result v0

    return v0
.end method

.method private isModemPowerOn(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 694
    const/4 v0, 0x1

    .line 696
    .local v0, "isModemPowerOn":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 697
    const-string v1, "isModemPowerOn: Set Radio Power under airplane mode, ignore"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 698
    const/4 v0, 0x0

    .line 708
    :cond_0
    :goto_0
    return v0

    .line 702
    :cond_1
    invoke-static {p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModemPowerOn: modem for phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off, do not set radio again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 705
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isModemStatusConfigured()Z
    .locals 3

    .prologue
    .line 734
    const-string v1, "gsm.emdstatus.send.done"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 736
    .local v0, "isModemStatusConfigured":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isModemStatusConfigured:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 737
    return v0
.end method

.method private isNeedForceSetModemPowerForThermalL6()Z
    .locals 3

    .prologue
    .line 386
    const-string v1, "1"

    const-string v2, "cdma.t6.offmd3"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 388
    .local v0, "isThermalL6ModemOff":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedForceSetModemPowerForThermalL6: isThermalL6ModemOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAirplaneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsEccCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 392
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRadioAvailableforModemPower()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 434
    const/4 v2, 0x0

    .line 435
    .local v2, "gsmAvailable":Z
    const/4 v0, 0x0

    .line 436
    .local v0, "cdmaAvailable":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 437
    .local v4, "phoneCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 438
    invoke-static {v3, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 439
    const/4 v2, 0x1

    .line 443
    :cond_0
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 444
    const/4 v2, 0x1

    .line 446
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v1

    .line 447
    .local v1, "cdmaSlotId":I
    invoke-static {v1, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    .line 448
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRadioAvailableforModemPower gsmAvailable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cdmaAvailable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 449
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    :goto_1
    return v5

    .line 437
    .end local v1    # "cdmaSlotId":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    .restart local v1    # "cdmaSlotId":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1197
    const-string v0, "SvlteRadioManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return-void
.end method

.method private registerCIs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 150
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 152
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 153
    invoke-static {v0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 154
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method private resetCardProperties()V
    .locals 2

    .prologue
    .line 1011
    const-string v0, "Reset Card Properties"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1012
    const-string v0, "gsm.ril.cardtypeset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string v0, "gsm.ril.cardtypeset.2"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v0, "ril.iccid.sim1_c2k"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v0, "gsm.emdstatus.send.done"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method private resumeModemPowerOffRequestIfBlocked()V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->isModemOffRequestBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isRadioAvailableforModemPower()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    sget-object v0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;->RF_OFF_BY_POWER_OFF:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    invoke-virtual {v1, v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->setAndGetRfOffState(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$RfOffState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 410
    const-string v0, "MPRH: Retring MD OFF Request."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    iget v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const-string v0, "MPRH: Set RF_OFF_BY_POWER_OFF failed!"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resumeModemPowerOnRequestIfBlocked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 419
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->isAllModemPowerOffRequestDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->isModemOnRequestBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    .line 422
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->refreshRFBlockedState(Z)V

    .line 425
    :cond_0
    return-void
.end method

.method private setC2KRadioPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C2K MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 683
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 684
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 685
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 687
    :cond_0
    return-void
.end method

.method private setGsmModemPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GSM MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 333
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 334
    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 335
    return-void
.end method

.method private setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "power"    # Z

    .prologue
    .line 362
    if-eqz p1, :cond_2

    .line 363
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 364
    .local v0, "ci":Lcom/android/internal/telephony/CommandsInterface;
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    .line 365
    .local v3, "rs":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    .line 366
    .local v2, "phoneType":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v1

    .line 367
    .local v1, "isWorldModeSwitching":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setModemPowerByPhone, ci: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setModemPowerByPhone, RadioState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setModemPowerByPhone, phoneType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setModemPowerByPhone, isWorldModeSwitching = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 371
    if-eqz p2, :cond_0

    .line 372
    const/4 v4, 0x0

    invoke-interface {v0, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    .line 383
    .end local v0    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    .end local v1    # "isWorldModeSwitching":Z
    .end local v2    # "phoneType":I
    .end local v3    # "rs":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    return-void

    .line 374
    .restart local v0    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    .restart local v1    # "isWorldModeSwitching":Z
    .restart local v2    # "phoneType":I
    .restart local v3    # "rs":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_0
    const/4 v4, 0x1

    if-ne v4, v2, :cond_1

    .line 375
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 377
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setModemPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 381
    .end local v0    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    .end local v1    # "isWorldModeSwitching":Z
    .end local v2    # "phoneType":I
    .end local v3    # "rs":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_2
    const-string v4, "setModemPowerByPhone: phone is null"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRadioPowerById(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerById, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 649
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 650
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerByPhone(Lcom/android/internal/telephony/Phone;Z)V

    .line 651
    return-void
.end method

.method private setRadioPowerByPhone(Lcom/android/internal/telephony/Phone;Z)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "power"    # Z

    .prologue
    .line 663
    if-eqz p1, :cond_2

    .line 664
    if-nez p2, :cond_0

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerByPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 666
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 679
    :goto_0
    return-void

    .line 668
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 669
    .local v0, "phoneId":I
    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isAllowRadioPowerOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerByPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 671
    invoke-interface {p1, p2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    .line 673
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPowerByPhone, phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allow power on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    .end local v0    # "phoneId":I
    :cond_2
    const-string v1, "setRadioPowerByPhone: phone is null"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSvlteModemsPower(ZI)V
    .locals 7
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 305
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isAllowModemPowerRequest()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 307
    .local v2, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 308
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSvlteModemsPower, GSM, power: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 310
    invoke-static {v0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 311
    .local v1, "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 315
    .end local v1    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSvlteModemsPower, C2K, power: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 316
    invoke-static {p2, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 317
    .restart local v1    # "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-direct {p0, v1, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPowerByPhone(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 319
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    if-eqz v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->refreshRFBlockedState(Z)V

    .line 321
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v3, p1, v6}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->setModemPowerRequestBlocked(ZZ)V

    .line 329
    .end local v0    # "i":I
    .end local v1    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "phoneCount":I
    :cond_1
    :goto_1
    return-void

    .line 307
    .restart local v0    # "i":I
    .restart local v2    # "phoneCount":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "i":I
    .end local v2    # "phoneCount":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSvlteModemsPower, blocked power: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    if-eqz v3, :cond_1

    .line 326
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mModemPowerRequestHandler:Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;

    invoke-virtual {v3, p1, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager$ModemPowerRequestHandler;->setModemPowerRequestBlocked(ZZ)V

    goto :goto_1
.end method

.method private setSvlteRadioPower(ZI)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVLTE GSM MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 655
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 656
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerByPhone(Lcom/android/internal/telephony/Phone;Z)V

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVLTE C2K MD, power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 658
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 659
    invoke-direct {p0, v0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerByPhone(Lcom/android/internal/telephony/Phone;Z)V

    .line 660
    return-void
.end method

.method private turnOffCTARadioIfNecessary()V
    .locals 3

    .prologue
    .line 286
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mSimInsertedStatus:[I

    aget v1, v1, v0

    if-nez v1, :cond_2

    .line 288
    invoke-static {v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    const-string v1, "modem off, not to handle CTA"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 302
    :cond_0
    return-void

    .line 292
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with card type, ignore radio off."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 286
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turn off phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " radio because we are no longer in CTA mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto :goto_1
.end method


# virtual methods
.method public checkForCTACase()Z
    .locals 5

    .prologue
    .line 259
    const/4 v2, 0x1

    .line 260
    .local v2, "isCTACase":Z
    const-string v3, "Check For CTA case!"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 261
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mWifiOnlyMode:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    if-ge v1, v3, :cond_2

    .line 267
    sget-object v3, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "cardType":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cardType for phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 269
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const/4 v2, 0x0

    .line 262
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "cardType":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 277
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CTA case: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 278
    return v2
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 141
    const-string v2, "Disposing"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 143
    .local v1, "phoneCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 144
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 145
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(IZ)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    return-void
.end method

.method public forceAllowAirplaneModeChange(Z)V
    .locals 1
    .param p1, "forceSwitch"    # Z

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v0, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->setForceSwitch(Z)V

    .line 1193
    return-void
.end method

.method public forceSetRadioPower(ZI)V
    .locals 4
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v3, 0x1

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force set radio power for phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-ne v1, v3, :cond_1

    .line 557
    const-string v1, "isModemPowerOn: Set Radio Power under airplane mode, ignore"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isInIpoShutdown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    const-string v1, "Force Set Radio Power under ipo shutdown, ignore"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_2
    invoke-static {p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemPowerOff(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-ne v1, v3, :cond_4

    .line 567
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isNeedForceSetModemPowerForThermalL6()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 568
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->forceSetModemPower(ZI)V

    goto :goto_0

    .line 571
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetRadioPower: modem off for phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " off, ignore."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_4
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRestrictModeState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 577
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isIccIdReady(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 578
    move v0, p1

    .line 579
    .local v0, "radioPower":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetRadioPower: MSIMS refresh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 581
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->refreshSimSetting(ZI)V

    .line 583
    .end local v0    # "radioPower":Z
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetRadioPower:ignore radio on during AT+ERMS=1, phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 591
    :cond_6
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 592
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isIccIdReady(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 593
    const-string v1, "force set radio power, read iccid not ready, wait for200ms"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 595
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$ForceSetRadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mForceSetRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 602
    :cond_7
    move v0, p1

    .line 603
    .restart local v0    # "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->refreshIccIdPreference(ZLjava/lang/String;)V

    .line 604
    invoke-virtual {p0, v0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->refreshSimSetting(ZI)V

    .line 605
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    .line 607
    const-string v1, "forceSetRadioPower register EVENT_DISCONNECT for ECC call!"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    .line 609
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getAirplaneRequestHandler()Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 985
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 987
    :pswitch_0
    const-string v0, "MPRH: EVENT_RADIO_AVAILABLE."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 988
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resumeModemPowerOffRequestIfBlocked()V

    goto :goto_0

    .line 991
    :pswitch_1
    const-string v0, "MPRH: GSM EVENT_RIL_MODEM_POWER_REQUEST_DONE."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 992
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resumeModemPowerOnRequestIfBlocked()V

    goto :goto_0

    .line 995
    :pswitch_2
    const-string v0, "MPRH: C2K EVENT_RIL_MODEM_POWER_REQUEST_DONE."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 996
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resumeModemPowerOnRequestIfBlocked()V

    goto :goto_0

    .line 999
    :pswitch_3
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    if-eqz v0, :cond_0

    .line 1000
    const-string v0, "Ecc call is disconnected and unregister EVENT_ECC_DISCONNECT"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1001
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    .line 1002
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    goto :goto_0

    .line 985
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAllowAirplaneModeChange()Z
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->allowSwitching()Z

    move-result v0

    return v0
.end method

.method protected isModemOff(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "powerOff":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 231
    .local v0, "cdmaSlot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioOff: cdmaSlot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->getPhoneByPhoneProxy(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 233
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 234
    const-string v3, "isRadioOff: C2K phone"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 235
    if-nez v0, :cond_0

    .line 236
    const/4 p1, 0x0

    .line 248
    :goto_0
    sget-object v3, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_RADIO_OFF:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioOff: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", powerOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 250
    return v2

    .line 238
    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    .line 241
    :cond_1
    const-string v3, "isRadioOff: GSM phone"

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 242
    if-nez v0, :cond_2

    .line 243
    const/4 p1, 0x1

    goto :goto_0

    .line 245
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public notifyAirplaneModeChange(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 871
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 872
    iget-object v4, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->allowSwitching()Z

    move-result v4

    if-nez v4, :cond_1

    .line 873
    const-string v3, "airplane mode switching, not allow switch now "

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 874
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, p1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->pendingAirplaneModeRequest(Z)V

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-ne p1, v4, :cond_2

    .line 881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mAirplaneMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not expected (the same)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 886
    :cond_2
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Airplane mode changed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 889
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isUnderCryptKeeper()Z

    move-result v4

    if-nez v4, :cond_5

    .line 890
    const-string v4, "Airplane mode changed: turn on/off all modem"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 891
    if-eqz p1, :cond_4

    .line 893
    .local v1, "modemPower":Z
    :goto_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 894
    iget-object v4, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v4, v1, v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->onAirplaneChangeStarted(ZZ)V

    .line 897
    :cond_3
    const-string v3, "1"

    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 898
    iget v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v1, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    .line 899
    const-string v3, "gsm.emdstatus.send.done"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 902
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone()V

    goto :goto_0

    .end local v1    # "modemPower":Z
    :cond_4
    move v1, v3

    .line 891
    goto :goto_1

    .line 905
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isMSimModeSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 906
    const-string v4, "Airplane mode changed: turn on/off all radio"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 907
    if-eqz p1, :cond_7

    move v2, v1

    .line 909
    .local v2, "radioPower":Z
    :goto_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 910
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3, v2, v1}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->onAirplaneChangeStarted(ZZ)V

    .line 913
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    if-ge v0, v3, :cond_8

    .line 914
    invoke-virtual {p0, v2, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPower(ZI)V

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v2    # "radioPower":Z
    :cond_7
    move v2, v3

    .line 907
    goto :goto_2

    .line 917
    .restart local v0    # "i":I
    .restart local v2    # "radioPower":Z
    :cond_8
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 918
    iget-object v3, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneRequestHandler:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->monitorAirplaneChangeDone()V

    goto/16 :goto_0
.end method

.method public notifyIpoPreBoot()V
    .locals 1

    .prologue
    .line 972
    const-string v0, "IPO preboot!"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 973
    invoke-super {p0}, Lcom/mediatek/internal/telephony/RadioManager;->notifyIpoPreBoot()V

    .line 974
    return-void
.end method

.method public notifyIpoShutDown()V
    .locals 2

    .prologue
    .line 957
    const-string v0, "notify IPO shutdown!"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 958
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resetCardProperties()V

    .line 959
    const/4 v0, 0x0

    iget v1, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mBitmapForPhoneCount:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    .line 960
    return-void
.end method

.method public notifyRadioAvailable(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notifies radio available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 165
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isFlightModePowerOffModemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isUnderCryptKeeper()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const-string v0, "Power off modem because boot up under airplane mode"

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v1

    shl-int v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setModemPower(ZI)V

    .line 171
    :cond_0
    return-void
.end method

.method protected onReceiveSimStateChangedIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 744
    const-string v5, "ss"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 747
    .local v4, "simStatus":Ljava/lang/String;
    const-string v5, "phone"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 749
    .local v2, "phoneId":I
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 750
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT:Invalid phone id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", do nothing!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemPowerOn(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 755
    const-string v5, "INTENT: Modem is not power on!"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT:SIM_STATE_CHANGED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sim status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 762
    const/4 v0, 0x1

    .line 764
    .local v0, "desiredRadioPower":Z
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "LOCKED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 767
    :cond_3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mSimInsertedStatus:[I

    aput v7, v5, v2

    .line 768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v7}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, "iccid":Ljava/lang/String;
    const-string v5, "N/A"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 773
    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_4

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isUsimWithCsim(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 776
    const-string v5, "CT 4G card SIM state loaded, c2k iccid not ready, wait for it..."

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 777
    new-instance v3, Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;-><init>(Lcom/mediatek/internal/telephony/SvlteRadioManager;Landroid/content/Intent;)V

    .line 779
    .local v3, "simStateChangedRunnable":Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;
    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v3, v6, v7}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 782
    .end local v3    # "simStateChangedRunnable":Lcom/mediatek/internal/telephony/SvlteRadioManager$SimStateChangedRunnable;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":SIM ready but ICCID not ready, do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 785
    :cond_5
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_6

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 787
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": No card, do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 791
    :cond_6
    const/4 v0, 0x1

    .line 792
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-nez v5, :cond_0

    .line 793
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto/16 :goto_0

    .line 797
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_7
    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 798
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v5

    if-ne v2, v5, :cond_8

    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 802
    :cond_8
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mSimInsertedStatus:[I

    aput v8, v5, v2

    .line 803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Phone["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->simStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 804
    const/4 v0, 0x0

    .line 805
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-nez v5, :cond_0

    .line 806
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Radio Power due to SIM_STATE_CHANGED, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 808
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    if-ne v5, v7, :cond_9

    .line 809
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mEccPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v5, v2, :cond_9

    .line 810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Now Ecc call is on phone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and can\'t set power off!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 814
    :cond_9
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto/16 :goto_0
.end method

.method protected readIccIdUsingPhoneId(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 1101
    const/4 v2, 0x0

    .line 1102
    .local v2, "ret":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1103
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode(I)I

    move-result v1

    .line 1105
    .local v1, "radioTechMode":I
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v3

    .line 1106
    .local v3, "slotId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: radioTechMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1109
    const/4 v4, 0x3

    if-ne v4, v1, :cond_4

    .line 1111
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isRuimCsim(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for UIM card"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1113
    const-string v4, "ril.iccid.sim1_c2k"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1115
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, "iccidCommon":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: slotId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iccidCommon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1117
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "N/A"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1119
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: update iccid["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] use iccidC2K:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1141
    .end local v0    # "iccidCommon":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ICCID for phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 1142
    return-object v2

    .line 1125
    :cond_2
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1126
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1128
    :cond_3
    const-string v4, "ril.iccid.sim1_c2k"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1130
    :cond_4
    const/4 v4, 0x2

    if-ne v4, v1, :cond_6

    .line 1131
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1132
    const-string v4, "ril.iccid.sim1_c2k"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1134
    :cond_5
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1137
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIccIdUsingPhoneId: invalid radioTechMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected refreshSimSetting(ZI)V
    .locals 2
    .param p1, "radioPower"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 825
    if-eqz p1, :cond_1

    .line 826
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result p2

    .line 835
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager;->refreshSimSetting(ZI)V

    .line 836
    :goto_0
    return-void

    .line 829
    :cond_1
    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshSimSetting phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", not update SimSetting!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setModemPower(ZI)V
    .locals 6
    .param p1, "power"    # Z
    .param p2, "phoneBitMap"    # I

    .prologue
    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Modem Power according to bitmap, Power:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", PhoneBitMap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 189
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    const/4 v3, 0x0

    .line 190
    .local v3, "phoneId":I
    sget-object v4, Lcom/mediatek/internal/telephony/SvlteRadioManager$3;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Modem Power under SS mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, p1, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSvlteModemsPower(ZI)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 192
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Modem Power under DSDS mode, Power:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 195
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Modem Power under DSDA mode, Power:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 197
    .local v0, "cdmaSlotId":I
    invoke-direct {p0, p1, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSvlteModemsPower(ZI)V

    .line 198
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mPhoneCount:I

    if-ge v2, v4, :cond_0

    .line 199
    move v3, v2

    .line 200
    if-nez p1, :cond_1

    .line 201
    invoke-virtual {p0, v3}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->resetSimInsertedStatus(I)V

    .line 198
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    .end local v0    # "cdmaSlotId":I
    .end local v2    # "i":I
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SVLTE does not support TSTS mode! Power:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setPhoneRadioPower(ZI)V
    .locals 4
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 616
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemStatusConfigured()Z

    move-result v2

    if-nez v2, :cond_0

    .line 617
    const-string v2, "Modem status has not configured yet, radio on is not allowed"

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 645
    :goto_0
    return-void

    .line 621
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRestrictModeState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhoneRadioPower:ignore radio on during AT+ERMS=1, phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 626
    :cond_1
    move v1, p1

    .line 627
    .local v1, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "iccId":Ljava/lang/String;
    sget-object v2, Lcom/mediatek/internal/telephony/SvlteRadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust radio to off because once manually turned off, iccid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 632
    const/4 v1, 0x0

    .line 635
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhoneRadioPower, power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 636
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v2

    if-ne v2, p2, :cond_3

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getEngineerMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 639
    invoke-direct {p0, v1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setC2KRadioPower(ZI)V

    goto/16 :goto_0

    .line 640
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    if-ne v2, p2, :cond_4

    .line 641
    invoke-direct {p0, v1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSvlteRadioPower(ZI)V

    goto/16 :goto_0

    .line 643
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setRadioPowerById(ZI)V

    goto/16 :goto_0
.end method

.method public setRadioPower(ZI)V
    .locals 9
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 466
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 468
    .local v4, "stackTraceElements":[Ljava/lang/StackTraceElement;
    array-length v5, v4

    if-lt v5, v8, :cond_0

    .line 469
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRadioPower caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v8

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 473
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRadioPower, power="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 475
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isModemPowerOn(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRadioPower: Modem is not power on, phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 540
    :goto_0
    return-void

    .line 480
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mAirplaneMode:Z

    if-ne v5, v7, :cond_2

    .line 481
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRadioPower:radio on under flight mode is not allowed, phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getInstance()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRestrictModeState()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRadioPower:ignore radio on during AT+ERMS=1, phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_3
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 495
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isIccIdReady(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 496
    const-string v5, "RILD initialize not completed, wait for 200ms"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 497
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;

    invoke-direct {v7, p0, p1, p2}, Lcom/mediatek/internal/telephony/RadioManager$RadioPowerRunnable;-><init>(Lcom/mediatek/internal/telephony/RadioManager;ZI)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mRadioPowerRunnable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v5, v6, v7}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 502
    :cond_4
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setSimInsertedStatus(I)V

    .line 504
    move v3, p1

    .line 505
    .local v3, "radioPower":Z
    invoke-virtual {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->readIccIdUsingPhoneId(I)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "iccId":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/internal/telephony/SvlteRadioManager;->sIccidPreference:Landroid/content/SharedPreferences;

    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjust radio to off because once manually turned off, iccid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , phone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 510
    const/4 v3, 0x0

    .line 513
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->checkForCTACase()Z

    move-result v2

    .line 515
    .local v2, "isCTACase":Z
    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->isAllowRadioPowerOn(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not allow power on : +phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :cond_6
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isHaveCard(I)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {p2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isLteDcPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 522
    if-ne v2, v7, :cond_7

    .line 523
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getCdmaSocketSlotId()I

    move-result v0

    .line 524
    .local v0, "cdmaPhoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SIM inserted, force to turn on cdma phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " radio if no any sim radio is enabled!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0, v7, v0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto/16 :goto_0

    .line 527
    .end local v0    # "cdmaPhoneId":I
    :cond_7
    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/SvlteRadioManager;->mIsEccCall:Z

    if-ne v7, v5, :cond_8

    .line 528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ECC call Radio Power, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto/16 :goto_0

    .line 531
    :cond_8
    const-string v5, "No SIM inserted, turn Radio off!"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 532
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->turnOffCTARadioIfNecessary()V

    goto/16 :goto_0

    .line 535
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trigger set Radio Power, power: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->refreshSimSetting(ZI)V

    .line 538
    invoke-virtual {p0, v3, p2}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->setPhoneRadioPower(ZI)V

    goto/16 :goto_0
.end method

.method public setSilentRebootPropertyForAllModem(Ljava/lang/String;)V
    .locals 3
    .param p1, "isSilentReboot"    # Ljava/lang/String;

    .prologue
    .line 927
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    .line 929
    .local v0, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v1, Lcom/mediatek/internal/telephony/SvlteRadioManager$3;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 946
    const-string v1, "set eboot under SS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 947
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :goto_0
    return-void

    .line 931
    :pswitch_0
    const-string v1, "set eboot under DSDS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 932
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 936
    :pswitch_1
    const-string v1, "set eboot under DSDA"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 937
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v1, "gsm.ril.eboot.2"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v1, "cdma.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 942
    :pswitch_2
    const-string v1, "set eboot under TSTS"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/SvlteRadioManager;->log(Ljava/lang/String;)V

    .line 943
    const-string v1, "gsm.ril.eboot"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 929
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setSimInsertedStatus(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 840
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/mediatek/internal/telephony/RadioManager;->setSimInsertedStatus(I)V

    .line 841
    return-void
.end method
