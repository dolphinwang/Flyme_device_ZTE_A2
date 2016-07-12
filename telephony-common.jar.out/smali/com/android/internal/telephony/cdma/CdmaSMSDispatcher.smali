.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final EVENT_CDMA_SMS_DISPATCHER_BASE:I = 0x7d0

.field private static final EVENT_ICC_CHANGED:I = 0x7d1

.field private static final EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE:I = 0x7d5

.field private static final EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE_DONE:I = 0x7d6

.field private static final EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE:I = 0x7d3

.field private static final EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE_DONE:I = 0x7d4

.field private static final EVENT_RUIM_READY:I = 0x7d2

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x7d7

.field private static final QUERY_SMS_REGISTER_FEASIBILITY_DELAY_MILLISECONDS:I = 0x2710

.field private static final QUERY_SMS_REGISTER_FEASIBILITY_MAX_RETRY_TIMES:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CdmaSMSDispatcher"

.field private static final VDBG:Z = true


# instance fields
.field private mCdmaModemSmsInitDone:Z

.field private mCdmaNetworkRegistered:Z

.field private mPendingSmsRegister:Z

.field private mQueryCDMASmsRegisterFeasibilityTimes:I

.field private mSmsRegisterFeasibilityQuerying:Z

.field private mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 93
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 108
    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 109
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPendingSmsRegister:Z

    .line 121
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "CdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x7d1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "viacode, mUiccController != null, register for icc change successly for CDMA"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x7d7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    return-void

    .line 130
    :cond_0
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "viacode, is not CDMA phone, dont do CT sms register work"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "viacode, mUiccController = null, cant register for icc change"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyCdmaSmsAutoRegisterBeFeasible()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 142
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    if-nez v3, :cond_1

    .line 143
    :cond_0
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "viacode, notifyCdmaSmsAutoRegisterBeFeasible failed for not both true"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v3, "CdmaSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "viacode, mCdmaNetworkRegistered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , mCdmaModemSmsInitDone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-void

    .line 148
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.CDMA_AUTO_SMS_REGISTER_FEASIBLE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 154
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v3, "CDMASMSDispatcher"

    invoke-virtual {v1, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 155
    .local v2, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 156
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 157
    const-string v3, "rTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 158
    const-string v3, "subscription"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSubId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "viacode, app can do auto sms register work now"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    goto :goto_0
.end method

.method private onUpdateIccAvailability()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 166
    const-string v2, "CdmaSMSDispatcher"

    const-string v3, "viacode, CdmaSMSDispatcher received EVENT_ICC_CHANGED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 168
    const-string v2, "CdmaSMSDispatcher"

    const-string v3, "viacode, but mUiccController == null, cant do nothing"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->getExternalModemSlot()I

    move-result v1

    .line 173
    .local v1, "slotId":I
    const-string v2, "CdmaSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CdmaSMSDispatcher received EVENT_ICC_CHANGED, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 177
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v2, v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v2, :cond_2

    .line 179
    const-string v2, "CdmaSMSDispatcher"

    const-string v3, "viacode, Removing stale icc objects, mUiccApplcation have changed!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 181
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 183
    :cond_2
    if-eqz v0, :cond_0

    .line 184
    const-string v2, "CdmaSMSDispatcher"

    const-string v3, "viacode, New card found!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 186
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x7d2

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    const-string v2, "CdmaSMSDispatcher"

    const-string v3, "viacode, register for EVENT_RUIM_READY successly"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 9
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 651
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "CDMASMSDispatcher: copy text message to icc card"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    .line 662
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 666
    .local v2, "msgCount":I
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText storage available"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    if-eq p4, v5, :cond_0

    const/4 v4, 0x3

    if-ne p4, v4, :cond_1

    .line 673
    :cond_0
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText to encode deliver pdu"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_0
    const-string v4, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[copyText msgCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    if-le v2, v5, :cond_4

    .line 683
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText multi-part message"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 692
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    if-nez v4, :cond_6

    .line 693
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText Exception happened when copy message"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 725
    .end local v1    # "i":I
    :goto_3
    return v4

    .line 674
    :cond_1
    const/4 v4, 0x5

    if-eq p4, v4, :cond_2

    const/4 v4, 0x7

    if-ne p4, v4, :cond_3

    .line 675
    :cond_2
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText to encode submit pdu"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 677
    :cond_3
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText invalid status, default is deliver pdu"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 678
    goto :goto_3

    .line 684
    :cond_4
    if-ne v2, v5, :cond_5

    .line 685
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText single-part message"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 687
    :cond_5
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText invalid message count"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 688
    goto :goto_3

    .line 697
    .restart local v1    # "i":I
    :cond_6
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p2, v4, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->createEfPdu(Ljava/lang/String;Ljava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    .line 699
    .local v3, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v3, :cond_7

    .line 700
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText write submit pdu into UIM"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v6, v3, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x6a

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v4, p4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V

    .line 707
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 709
    :try_start_0
    const-string v4, "CdmaSMSDispatcher"

    const-string v7, "[copyText wait until the message be wrote in UIM"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText thread is waked up"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v4, v5

    .line 704
    goto :goto_3

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "CdmaSMSDispatcher"

    const-string v7, "[copyText interrupted while trying to copy text message into UIM"

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    monitor-exit v6

    move v4, v5

    goto :goto_3

    .line 715
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 719
    .end local v3    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSuccess:Z

    if-ne v4, v5, :cond_9

    .line 720
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "[copyText all messages have been copied into UIM"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 724
    :cond_9
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "[copyText copy failed"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 725
    goto/16 :goto_3
.end method

.method protected createMessageFromSubmitPdu([B[B)Landroid/telephony/SmsMessage;
    .locals 3
    .param p1, "smsc"    # [B
    .param p2, "tpdu"    # [B

    .prologue
    .line 1098
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->getSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    move-result-object v0

    .line 1099
    .local v0, "mSmsInterfaces":Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
    if-nez v0, :cond_0

    .line 1100
    const-string v1, "CdmaSMSDispatcher"

    const-string v2, "createMessageFromSubmitPdu, mSmsInterfaces = null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const/4 v1, 0x0

    .line 1103
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p2}, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;->convertSubmitpduToPdu([B)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 321
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "CdmaSMSDispatcher dispose"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->removeMessages(I)V

    .line 323
    const/16 v0, 0x7d5

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->removeMessages(I)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 333
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "3gpp2"

    return-object v0
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;

    .prologue
    .line 459
    new-instance v18, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 460
    .local v18, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 461
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 462
    const/4 v5, 0x1

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    .line 464
    const/4 v5, 0x2

    move-object/from16 v0, v18

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 470
    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 471
    const-string v5, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "viacode: to use the encoding type ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    if-eqz p7, :cond_2

    if-eqz p8, :cond_2

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 478
    .local v17, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v17, :cond_3

    .line 479
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "CDMASMSDispatcher.getNewSubmitPduTracker(), L, getSubmitPdu() returned null, A"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v5, 0x0

    .line 484
    :goto_2
    return-object v5

    .line 465
    .end local v17    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v5, 0x2

    move/from16 v0, p5

    if-ne v0, v5, :cond_1

    .line 466
    const/4 v5, 0x0

    move-object/from16 v0, v18

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 468
    :cond_1
    const/4 v5, 0x4

    move-object/from16 v0, v18

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 476
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 482
    .restart local v17    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 484
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p4

    move-object/from16 v15, p12

    invoke-virtual/range {v5 .. v16}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v5

    goto :goto_2
.end method

.method protected getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;II)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 18
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;
    .param p12, "fullMessageText"    # Ljava/lang/String;
    .param p13, "validityPeriod"    # I
    .param p14, "priority"    # I

    .prologue
    .line 497
    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p13

    move/from16 v12, p14

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 500
    .local v17, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v17, :cond_1

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 503
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    const/16 v16, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p4

    move-object/from16 v15, p12

    invoke-virtual/range {v5 .. v16}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v5

    .line 508
    .end local v6    # "map":Ljava/util/HashMap;
    :goto_1
    return-object v5

    .line 497
    .end local v17    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 507
    .restart local v17    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "CDMASMSDispatcher.getNewSubmitPduTracker(), L, getSubmitPdu() returned null, B"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v5, 0x0

    goto :goto_1
.end method

.method handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 359
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 360
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 361
    .local v4, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    if-ne v5, v6, :cond_1

    .line 363
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 365
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 367
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 368
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 369
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 370
    const-string v5, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    .end local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 359
    .restart local v4    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .restart local v1    # "fillIn":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 199
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 312
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 201
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->onUpdateIccAvailability()V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 205
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Landroid/telephony/ServiceState;

    .line 206
    .local v6, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v4

    .line 207
    .local v4, "regState":I
    const/4 v8, 0x1

    if-eq v4, v8, :cond_1

    const/4 v8, 0x5

    if-ne v4, v8, :cond_0

    .line 209
    :cond_1
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPendingSmsRegister:Z

    if-eqz v8, :cond_0

    .line 210
    const-string v8, "CdmaSMSDispatcher"

    const-string v9, "viacode, send RUIM_READY again"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v8, 0x7d2

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 216
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "regState":I
    .end local v6    # "serviceState":Landroid/telephony/ServiceState;
    :pswitch_2
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    .line 217
    .local v7, "ss":I
    if-eqz v7, :cond_2

    .line 218
    const-string v8, "CdmaSMSDispatcher"

    const-string v9, "viacode, received EVENT_RUIM_READY in CDMASmsDispather"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPendingSmsRegister:Z

    goto :goto_0

    .line 222
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPendingSmsRegister:Z

    .line 223
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-nez v8, :cond_3

    .line 224
    const-string v8, "CdmaSMSDispatcher"

    const-string v9, "viacode, received EVENT_RUIM_READY in CDMASmsDispather"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    .line 226
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 227
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 228
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x7d4

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMANetWorkRegistrationState(Landroid/os/Message;)V

    goto :goto_0

    .line 230
    :cond_3
    const-string v8, "CdmaSMSDispatcher"

    const-string v9, "viacode, received EVENT_RUIM_READY, but query processing, dont need query multi."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    .end local v7    # "ss":I
    :pswitch_3
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 235
    const-string v8, "CdmaSMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "viacode, do network register state query again, retry times = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    const/16 v9, 0x64

    if-le v8, v9, :cond_4

    .line 237
    const-string v8, "CdmaSMSDispatcher"

    const-string v9, "over retry limits(100), query cdma sms register feasibility failed"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    goto/16 :goto_0

    .line 242
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x7d4

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMANetWorkRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 247
    :pswitch_4
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-eqz v8, :cond_7

    .line 248
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 249
    .local v1, "aresult":Landroid/os/AsyncResult;
    if-eqz v1, :cond_6

    .line 250
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v5, v8

    check-cast v5, [I

    .line 251
    .local v5, "res":[I
    if-eqz v5, :cond_5

    array-length v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 254
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 255
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaNetworkRegistered:Z

    .line 256
    const/16 v8, 0x7d5

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 259
    :cond_5
    const/16 v8, 0x7d3

    const-wide/16 v10, 0x2710

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 263
    .end local v5    # "res":[I
    :cond_6
    const/16 v8, 0x7d3

    const-wide/16 v10, 0x2710

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 266
    .end local v1    # "aresult":Landroid/os/AsyncResult;
    :cond_7
    const-string v8, "CdmaSMSDispatcher"

    const-string v9, "viacode, received EVENT_QUERY_CDMA_NETWORK_REGISTER_STATE_DONE but is not querying"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v8, "CdmaSMSDispatcher"

    const-string v9, "viacode, must make sure is retrying in the same instance, drop this done EVENT if is not retry querying."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    :pswitch_5
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 274
    const-string v8, "CdmaSMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "viacode, do sms init state query again, retry times = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    const/16 v9, 0x64

    if-le v8, v9, :cond_8

    .line 276
    const-string v8, "CdmaSMSDispatcher"

    const-string v9, "over retry limits(100), query cdma modem sms init state failed"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    goto/16 :goto_0

    .line 281
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x7d6

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->queryCDMASmsAndPBStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 286
    :pswitch_6
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSmsRegisterFeasibilityQuerying:Z

    if-eqz v8, :cond_b

    .line 287
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 288
    .local v2, "asyncresult":Landroid/os/AsyncResult;
    if-eqz v2, :cond_a

    .line 289
    iget-object v8, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [I

    move-object v3, v8

    check-cast v3, [I

    .line 290
    .local v3, "queryres":[I
    if-eqz v3, :cond_9

    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    const/4 v8, 0x0

    aget v8, v3, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 293
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mQueryCDMASmsRegisterFeasibilityTimes:I

    .line 294
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaModemSmsInitDone:Z

    .line 295
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->notifyCdmaSmsAutoRegisterBeFeasible()V

    goto/16 :goto_0

    .line 298
    :cond_9
    const/16 v8, 0x7d5

    const-wide/16 v10, 0x2710

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 302
    .end local v3    # "queryres":[I
    :cond_a
    const/16 v8, 0x7d5

    const-wide/16 v10, 0x2710

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 305
    .end local v2    # "asyncresult":Landroid/os/AsyncResult;
    :cond_b
    const-string v8, "CdmaSMSDispatcher"

    const-string v9, "viacode, received EVENT_QUERY_CDMA_MODEM_SMS_INIT_STATE_DONE but is not querying"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v8, "CdmaSMSDispatcher"

    const-string v9, "viacode, must make sure is retrying in the same instance, drop this done EVENT if is not retry querying."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 346
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "calling handleCdmaStatusReport()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 352
    :goto_0
    return-void

    .line 350
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const-string v0, "CdmaSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatusReport() called for object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 442
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must be called only on ImsSMSDispatcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 21
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "originalPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 610
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendData"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    if-eqz p7, :cond_0

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 613
    .local v8, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v8, :cond_1

    .line 614
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "via sendData error: invalid paramters, pdu == null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_1
    return-void

    .line 611
    .end local v8    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .restart local v8    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p5

    .line 617
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 618
    .local v10, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v9 .. v17}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v20

    .line 622
    .local v20, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v18

    .line 623
    .local v18, "carrierPackage":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 624
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "Found carrier package. w/op"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v19, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 626
    .local v19, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    goto :goto_1

    .line 628
    .end local v19    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    :cond_2
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "No carrier package. w/op"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 22
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 383
    if-eqz p6, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v9

    .local v9, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    .line 385
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .line 386
    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v21

    .line 390
    .local v21, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v19

    .line 391
    .local v19, "carrierPackage":Ljava/lang/String;
    if-eqz v19, :cond_1

    .line 392
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v20, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 394
    .local v20, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 399
    .end local v20    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$DataSmsSender;
    :goto_1
    return-void

    .line 383
    .end local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v19    # "carrierPackage":Ljava/lang/String;
    .end local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 396
    .restart local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v11    # "map":Ljava/util/HashMap;
    .restart local v19    # "carrierPackage":Ljava/lang/String;
    .restart local v21    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1
.end method

.method protected sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "Error! The functionality sendMultipartData is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    return-void
.end method

.method protected sendMultipartTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 31
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 804
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 807
    .local v16, "fullMessageText":Ljava/lang/String;
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendMultipartTextWithEncodingType"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v27, v0

    .line 809
    .local v27, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 810
    .local v26, "msgCount":I
    move/from16 v21, p4

    .line 811
    .local v21, "encoding":I
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: want to use encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    if-ltz v21, :cond_0

    const/16 v4, 0xa

    move/from16 v0, v21

    if-le v0, v4, :cond_1

    .line 815
    :cond_0
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: unavalid encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: to use the unkown default."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/16 v21, 0x0

    .line 820
    :cond_1
    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v22, v0

    .line 821
    .local v22, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v21, :cond_4

    .line 822
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: unkown encoding, to find one best."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 824
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v20

    .line 825
    .local v20, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v21

    if-eq v0, v4, :cond_3

    if-eqz v21, :cond_2

    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_3

    .line 828
    :cond_2
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v21, v0

    .line 830
    :cond_3
    aput-object v20, v22, v23

    .line 823
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 833
    .end local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v23    # "i":I
    :cond_4
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: APP want use specified encoding type."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_5

    .line 835
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-static {v4, v5, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v20

    .line 836
    .restart local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 837
    aput-object v20, v22, v23

    .line 834
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 841
    .end local v20    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v30, v0

    .line 844
    .local v30, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v26

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 845
    .local v13, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 847
    .local v14, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: now to send one by one, msgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    .line 849
    new-instance v19, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 850
    .local v19, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 851
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 852
    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 859
    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 860
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 861
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 863
    const/4 v10, 0x0

    .line 864
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-le v4, v0, :cond_6

    .line 865
    move-object/from16 v0, p5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 868
    .restart local v10    # "sentIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v11, 0x0

    .line 869
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-le v4, v0, :cond_7

    .line 870
    move-object/from16 v0, p6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 873
    .restart local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_7
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: to send the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " part"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aget-object v4, v22, v23

    iget v9, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    add-int/lit8 v4, v26, -0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_8

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p7

    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    aput-object v4, v30, v23

    .line 848
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 874
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 881
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v19    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_9
    if-eqz p3, :cond_a

    if-eqz v30, :cond_a

    move-object/from16 v0, v30

    array-length v4, v0

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    aget-object v4, v30, v4

    if-nez v4, :cond_c

    .line 883
    :cond_a
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMultipartTextWithEncodingType: Cannot send multipart text. parts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " trackers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_b
    :goto_4
    return-void

    .line 887
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v18

    .line 888
    .local v18, "carrierPackage":Ljava/lang/String;
    if-eqz v18, :cond_d

    .line 889
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithEncodingType: Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-instance v28, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 891
    .local v28, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    goto :goto_4

    .line 893
    .end local v28    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    :cond_d
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithEncodingType: No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    move-object/from16 v17, v30

    .local v17, "arr$":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    aget-object v29, v17, v24

    .line 895
    .local v29, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v29, :cond_e

    .line 896
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 894
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 898
    :cond_e
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithEncodingType: Null tracker."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public sendMultipartTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 33
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 981
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v16

    .line 984
    .local v16, "fullMessageText":Ljava/lang/String;
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendMultipartTextWithExtraParams"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    if-nez p4, :cond_4

    .line 990
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: extraParams == null, will encoding with no extra feature."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const/16 v17, -0x1

    .line 992
    .local v17, "validityPeriod":I
    const/16 v18, -0x1

    .line 993
    .local v18, "priority":I
    const/16 v23, 0x0

    .line 1000
    .local v23, "encoding":I
    :goto_0
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: validityPeriod is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: priority is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: want to use encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v29, v0

    .line 1005
    .local v29, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 1008
    .local v28, "msgCount":I
    if-ltz v23, :cond_0

    const/16 v4, 0xa

    move/from16 v0, v23

    if-le v0, v4, :cond_1

    .line 1009
    :cond_0
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: unavalid encoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: to use the unkown default."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/16 v23, 0x0

    .line 1014
    :cond_1
    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-object/from16 v24, v0

    .line 1015
    .local v24, "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v23, :cond_5

    .line 1016
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: unkown encoding, to find one best."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 1018
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v22

    .line 1019
    .local v22, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v23

    if-eq v0, v4, :cond_3

    if-eqz v23, :cond_2

    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_3

    .line 1022
    :cond_2
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v23, v0

    .line 1024
    :cond_3
    aput-object v22, v24, v25

    .line 1017
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 995
    .end local v17    # "validityPeriod":I
    .end local v18    # "priority":I
    .end local v22    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v23    # "encoding":I
    .end local v24    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v25    # "i":I
    .end local v28    # "msgCount":I
    .end local v29    # "refNumber":I
    :cond_4
    const-string v4, "validity_period"

    const/4 v5, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 996
    .restart local v17    # "validityPeriod":I
    const-string v4, "priority"

    const/4 v5, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 997
    .restart local v18    # "priority":I
    const-string v4, "encoding_type"

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .restart local v23    # "encoding":I
    goto/16 :goto_0

    .line 1027
    .restart local v24    # "encodingForParts":[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v28    # "msgCount":I
    .restart local v29    # "refNumber":I
    :cond_5
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "viacode: APP want use specified encoding type."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 1029
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move/from16 v0, v23

    invoke-static {v4, v5, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v22

    .line 1030
    .restart local v22    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1031
    aput-object v22, v24, v25

    .line 1028
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 1035
    .end local v22    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6
    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v32, v0

    .line 1038
    .local v32, "trackers":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v0, v28

    invoke-direct {v13, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1039
    .local v13, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v14, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1041
    .local v14, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viacode: now to send one by one, msgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    const/16 v25, 0x0

    :goto_3
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    .line 1043
    new-instance v21, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 1044
    .local v21, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v29

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 1045
    add-int/lit8 v4, v25, 0x1

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 1046
    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 1053
    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 1054
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1055
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v21

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1057
    const/4 v10, 0x0

    .line 1058
    .local v10, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v25

    if-le v4, v0, :cond_7

    .line 1059
    move-object/from16 v0, p5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 1062
    .restart local v10    # "sentIntent":Landroid/app/PendingIntent;
    :cond_7
    const/4 v11, 0x0

    .line 1063
    .local v11, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_8

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v25

    if-le v4, v0, :cond_8

    .line 1064
    move-object/from16 v0, p6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 1067
    .restart local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aget-object v4, v24, v25

    iget v9, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    add-int/lit8 v4, v28, -0x1

    move/from16 v0, v25

    if-ne v0, v4, :cond_9

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p7

    invoke-virtual/range {v4 .. v18}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNewSubmitPduTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Ljava/lang/String;II)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v4

    aput-object v4, v32, v25

    .line 1042
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 1067
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 1074
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v10    # "sentIntent":Landroid/app/PendingIntent;
    .end local v11    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v21    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_a
    if-eqz p3, :cond_b

    if-eqz v32, :cond_b

    move-object/from16 v0, v32

    array-length v4, v0

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    aget-object v4, v32, v4

    if-nez v4, :cond_d

    .line 1076
    :cond_b
    const-string v4, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMultipartTextWithExtraParams: Cannot send multipart text. parts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " trackers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_c
    :goto_5
    return-void

    .line 1080
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v20

    .line 1081
    .local v20, "carrierPackage":Ljava/lang/String;
    if-eqz v20, :cond_e

    .line 1082
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithExtraParams: Found carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v30, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/util/ArrayList;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1084
    .local v30, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v4, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSenderCallback;)V

    goto :goto_5

    .line 1086
    .end local v30    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$MultipartSmsSender;
    :cond_e
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithExtraParams: No carrier package."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    move-object/from16 v19, v32

    .local v19, "arr$":[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v26, 0x0

    .local v26, "i$":I
    :goto_6
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    aget-object v31, v19, v26

    .line 1088
    .local v31, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz v31, :cond_f

    .line 1089
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1087
    :goto_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 1091
    :cond_f
    const-string v4, "CdmaSMSDispatcher"

    const-string v5, "sendMultipartTextWithExtraParams: Null tracker."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method protected sendRgData(Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 406
    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 412
    .local v0, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    return-void

    .line 406
    .end local v0    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 528
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 531
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "pdu"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v2, v3

    check-cast v2, [B

    .line 534
    .local v2, "pdu":[B
    const/4 v0, 0x0

    .line 535
    .local v0, "isReadySend":Z
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 536
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_1

    .line 537
    :cond_0
    const-string v3, "CdmaSMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add tracker into the list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 541
    const/4 v0, 0x1

    .line 543
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    if-nez v0, :cond_3

    .line 546
    const-string v3, "CdmaSMSDispatcher"

    const-string v4, "There is another tracker in-queue and is sending"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return-void

    .line 543
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 551
    :cond_3
    const-string v3, "CdmaSMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSms:  isIms()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRetryCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mImsRetry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mMessageRef="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 564
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 566
    .local v4, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    .line 570
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 571
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 572
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "updatePhoneObject, remove tracker."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mSTrackersQueue:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_0

    .line 576
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :goto_1
    return-void

    .line 581
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 582
    .local v3, "reply":Landroid/os/Message;
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string v7, "pdu"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 584
    .local v2, "pdu":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 585
    .local v0, "currentDataNetwork":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_2

    const/16 v5, 0xd

    if-ne v0, v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v5

    const/4 v7, 0x7

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v5, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v7, :cond_5

    .line 596
    .local v1, "imsSmsDisabled":Z
    :goto_2
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    if-eqz v1, :cond_6

    .line 597
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_1

    .end local v1    # "imsSmsDisabled":Z
    :cond_5
    move v1, v6

    .line 585
    goto :goto_2

    .line 599
    .restart local v1    # "imsSmsDisabled":Z
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v5, v2, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 602
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_1
.end method

.method sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 2
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 340
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "sending EVENT_HANDLE_STATUS_REPORT message"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 342
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v2, 0x0

    .line 515
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 523
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 646
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "Error! The functionality sendText with port is not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 17
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 418
    if-eqz p5, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v4, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v14

    .line 420
    .local v14, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v14, :cond_2

    .line 421
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .line 422
    .local v5, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .line 425
    .local v16, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v13

    .line 426
    .local v13, "carrierPackage":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 427
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "Found carrier package."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance v15, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 429
    .local v15, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    invoke-virtual {v15, v13, v4}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 437
    .end local v5    # "map":Ljava/util/HashMap;
    .end local v13    # "carrierPackage":Ljava/lang/String;
    .end local v15    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v16    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_1
    return-void

    .line 418
    .end local v14    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 431
    .restart local v5    # "map":Ljava/util/HashMap;
    .restart local v13    # "carrierPackage":Ljava/lang/String;
    .restart local v14    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v16    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "No carrier package."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 435
    .end local v5    # "map":Ljava/util/HashMap;
    .end local v13    # "carrierPackage":Ljava/lang/String;
    .end local v16    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const-string v4, "CdmaSMSDispatcher"

    const-string v6, "CdmaSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendTextWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 22
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 733
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendTextWithEncodingType"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move/from16 v16, p4

    .line 736
    .local v16, "encoding":I
    const-string v5, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "viacode: want to use encoding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    if-ltz v16, :cond_0

    const/16 v5, 0xa

    move/from16 v0, v16

    if-le v0, v5, :cond_1

    .line 740
    :cond_0
    const-string v5, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "viacode: unavalid encoding = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "viacode: to use the unkown default."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/16 v16, 0x0

    .line 745
    :cond_1
    if-nez v16, :cond_3

    .line 746
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "viacode: unkown encoding, to find one best."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v15

    .line 748
    .local v15, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v5, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v16

    if-eq v0, v5, :cond_3

    if-eqz v16, :cond_2

    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_3

    .line 751
    :cond_2
    iget v0, v15, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v16, v0

    .line 755
    .end local v15    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    new-instance v21, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 756
    .local v21, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 757
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_5

    .line 758
    const/4 v5, 0x2

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 764
    :goto_0
    const/4 v5, 0x1

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 770
    if-eqz p6, :cond_7

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v19

    .line 773
    .local v19, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v19, :cond_9

    .line 774
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 775
    .local v6, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p3

    invoke-virtual/range {v5 .. v13}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v20

    .line 778
    .local v20, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v14

    .line 779
    .local v14, "carrierPackage":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 780
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "sendTextWithEncodingType: Found carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v18, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 782
    .local v18, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v5}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 797
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v14    # "carrierPackage":Ljava/lang/String;
    .end local v18    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v20    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    :goto_2
    return-void

    .line 759
    .end local v19    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_6

    .line 760
    const/4 v5, 0x0

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 762
    :cond_6
    const/4 v5, 0x4

    move-object/from16 v0, v21

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 770
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 784
    .restart local v6    # "map":Ljava/util/HashMap;
    .restart local v14    # "carrierPackage":Ljava/lang/String;
    .restart local v19    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v20    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "sendTextWithEncodingType: No carrier package."

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 788
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v14    # "carrierPackage":Ljava/lang/String;
    .end local v20    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_9
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "viacode : sendTextWithEncodingType: submitPdu is null"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    if-eqz p5, :cond_4

    .line 791
    const/4 v5, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 792
    :catch_0
    move-exception v17

    .line 793
    .local v17, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v5, "CdmaSMSDispatcher"

    const-string v7, "viacode: failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public sendTextWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 28
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "callingPkg"    # Ljava/lang/String;

    .prologue
    .line 909
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode: CdmaSMSDispatcher, implemented by VIA for interfaces needed. sendTextWithExtraParams"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    if-nez p4, :cond_5

    .line 916
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode: extraParams == null, will encoding with no extra feature."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v11, -0x1

    .line 918
    .local v11, "validityPeriod":I
    const/4 v12, -0x1

    .line 919
    .local v12, "priority":I
    const/4 v10, 0x0

    .line 926
    .local v10, "encoding":I
    :goto_0
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viacode: validityPeriod is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viacode: priority is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viacode: want to use encoding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    if-ltz v10, :cond_0

    const/16 v5, 0xa

    if-le v10, v5, :cond_1

    .line 932
    :cond_0
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "viacode: unavalid encoding = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode: to use the unkown default."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v10, 0x0

    .line 937
    :cond_1
    if-nez v10, :cond_3

    .line 938
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode: unkown encoding, to find one best."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v23

    .line 940
    .local v23, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_3

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    if-ne v10, v5, :cond_3

    .line 943
    :cond_2
    move-object/from16 v0, v23

    iget v10, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 947
    .end local v23    # "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    if-eqz p6, :cond_6

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;III)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v26

    .line 950
    .local v26, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v26, :cond_8

    .line 951
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v14

    .line 952
    .local v14, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v21, 0x1

    move-object/from16 v13, p0

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v18, p7

    move-object/from16 v20, p3

    invoke-virtual/range {v13 .. v21}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v27

    .line 955
    .local v27, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName()Ljava/lang/String;

    move-result-object v22

    .line 956
    .local v22, "carrierPackage":Ljava/lang/String;
    if-eqz v22, :cond_7

    .line 957
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "sendTextWithExtraParams: Found carrier package."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    new-instance v25, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 959
    .local v25, "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsSender;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;->sendSmsByCarrierApp(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$SmsSenderCallback;)V

    .line 974
    .end local v14    # "map":Ljava/util/HashMap;
    .end local v22    # "carrierPackage":Ljava/lang/String;
    .end local v25    # "smsSender":Lcom/android/internal/telephony/SMSDispatcher$TextSmsSender;
    .end local v27    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    :goto_2
    return-void

    .line 921
    .end local v10    # "encoding":I
    .end local v11    # "validityPeriod":I
    .end local v12    # "priority":I
    .end local v26    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_5
    const-string v5, "validity_period"

    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 922
    .restart local v11    # "validityPeriod":I
    const-string v5, "priority"

    const/4 v6, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 923
    .restart local v12    # "priority":I
    const-string v5, "encoding_type"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .restart local v10    # "encoding":I
    goto/16 :goto_0

    .line 947
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 961
    .restart local v14    # "map":Ljava/util/HashMap;
    .restart local v22    # "carrierPackage":Ljava/lang/String;
    .restart local v26    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v27    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_7
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "sendTextWithExtraParams: No carrier package."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 965
    .end local v14    # "map":Ljava/util/HashMap;
    .end local v22    # "carrierPackage":Ljava/lang/String;
    .end local v27    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode : sendTextWithExtraParams: submitPdu is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    if-eqz p5, :cond_4

    .line 968
    const/4 v5, 0x3

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 969
    :catch_0
    move-exception v24

    .line 970
    .local v24, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v5, "CdmaSMSDispatcher"

    const-string v6, "viacode: failed to send back RESULT_ERROR_NULL_PDU"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
