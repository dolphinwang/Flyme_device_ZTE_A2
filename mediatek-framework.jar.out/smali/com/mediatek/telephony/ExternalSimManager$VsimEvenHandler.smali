.class public Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
.super Landroid/os/Handler;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VsimEvenHandler"
.end annotation


# instance fields
.field private mHasNotifyEnableEvnetToModem:Z

.field private mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field private mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 852
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 853
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 854
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mHasNotifyEnableEvnetToModem:Z

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
    .param p1, "x1"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .param p2, "x2"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .prologue
    .line 852
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setDataStream(Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V

    return-void
.end method

.method private dispatchCallback(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1121
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v1

    .line 1123
    .local v1, "msgId":I
    const-string v2, "ExternalSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VsimEvenHandler handleMessage: msgId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    sparse-switch v1, :sswitch_data_0

    .line 1220
    const-string v2, "ExternalSimManager"

    const-string v3, "VsimEvenHandler handleMessage: default"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1137
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleGetPlatformCapability(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto :goto_0

    .line 1141
    :sswitch_2
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleEventRequest(ILcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto :goto_0

    .line 1149
    :sswitch_3
    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    .line 1153
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "gsm.external.sim.inserted"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1157
    .local v0, "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1158
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto :goto_0

    .line 1163
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1170
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1171
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto :goto_0

    .line 1176
    :sswitch_5
    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    .line 1179
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "gsm.external.sim.inserted"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1183
    .restart local v0    # "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1184
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto :goto_0

    .line 1189
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_6
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1196
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1197
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto :goto_0

    .line 1203
    :sswitch_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    const-string v3, "gsm.external.sim.inserted"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1207
    .restart local v0    # "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_0

    .line 1213
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_8
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_0

    .line 1217
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleServiceStateRequest(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto/16 :goto_0

    .line 1125
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_3
        0x3ee -> :sswitch_7
    .end sparse-switch
.end method

.method private getMdWaitingFlag()Z
    .locals 3

    .prologue
    .line 874
    const-string v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMdWaitingFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z
    invoke-static {v2}, Lcom/mediatek/telephony/ExternalSimManager;->access$300(Lcom/mediatek/telephony/ExternalSimManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    # getter for: Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z
    invoke-static {v0}, Lcom/mediatek/telephony/ExternalSimManager;->access$300(Lcom/mediatek/telephony/ExternalSimManager;)Z

    move-result v0

    return v0
.end method

.method private handleEventRequest(ILcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 879
    const-string v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] start"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    .line 884
    .local v5, "slotId":I
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v4

    .line 886
    .local v4, "simType":I
    const/4 v3, 0x0

    .line 888
    .local v3, "result":I
    const-string v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VsimEvenHandler First slotId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", simType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    packed-switch p1, :pswitch_data_0

    .line 982
    :goto_0
    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v7

    const/16 v8, 0x3eb

    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v9

    invoke-direct {v1, v7, v8, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 985
    .local v1, "eventResponse":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 986
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 988
    const-string v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] end"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void

    .line 893
    .end local v1    # "eventResponse":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 894
    const/4 v3, 0x0

    .line 900
    :goto_1
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 901
    .local v6, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 903
    .local v0, "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    if-eq v4, v11, :cond_0

    .line 904
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 906
    const-string v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VsimEvenHandler set default data to subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.external.sim.enabled"

    const-string v8, "1"

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 896
    .end local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v6    # "subId":I
    :cond_1
    const/4 v3, -0x2

    goto :goto_1

    .line 915
    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.external.sim.enabled"

    const-string v8, "0"

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.external.sim.inserted"

    const-string v8, "0"

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 927
    invoke-direct {p0, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    .line 929
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 930
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccController;->resetRadioForVsim()V

    goto/16 :goto_0

    .line 935
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.external.sim.inserted"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "persist.radio.external.sim"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 943
    .restart local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 946
    .local v2, "mCPhoneId":I
    if-eq v5, v2, :cond_2

    if-ne v4, v11, :cond_3

    .line 949
    :cond_2
    const-string v7, "ExternalSimManager"

    const-string v8, "VsimEvenHandler no need to do capablity switch"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 951
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 952
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccController;->resetRadioForVsim()V

    goto/16 :goto_0

    .line 956
    :cond_3
    const-string v7, "ExternalSimManager"

    const-string v8, "VsimEvenHandler need to do capablity switch"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 959
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 960
    .restart local v6    # "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 961
    const/4 v3, 0x0

    .line 962
    goto/16 :goto_0

    .line 963
    .end local v6    # "subId":I
    :cond_4
    const/4 v3, -0x2

    .line 966
    goto/16 :goto_0

    .line 970
    .end local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v2    # "mCPhoneId":I
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v7, "gsm.external.sim.inserted"

    const-string v8, "0"

    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 977
    invoke-direct {p0, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto/16 :goto_0

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleGetPlatformCapability(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 992
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    .line 993
    .local v2, "eventId":I
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v8

    .line 995
    .local v8, "simType":I
    new-instance v6, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v9

    const/16 v10, 0x3ea

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v11

    invoke-direct {v6, v9, v10, v11}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1000
    .local v6, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1001
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1007
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 1008
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_1

    .line 1009
    invoke-virtual {v6, v13}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1019
    :goto_1
    const-string v9, "ro.mtk_external_sim_support"

    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1025
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v7

    .line 1027
    .local v7, "simCount":I
    const-string v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleGetPlatformCapability simType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", simCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    if-ne v8, v13, :cond_4

    .line 1031
    shl-int v9, v13, v7

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1071
    :goto_2
    iget-object v9, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v9, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1072
    return-void

    .line 1003
    .end local v1    # "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    .end local v7    # "simCount":I
    :cond_0
    const/4 v9, -0x2

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_0

    .line 1010
    .restart local v1    # "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    :cond_1
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_2

    .line 1011
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1012
    :cond_2
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_3

    .line 1013
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1015
    :cond_3
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1033
    .restart local v7    # "simCount":I
    :cond_4
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_b

    .line 1034
    const/4 v4, 0x0

    .line 1035
    .local v4, "isCdmaCard":I
    const/4 v5, 0x0

    .line 1037
    .local v5, "isHasCard":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v7, :cond_8

    .line 1038
    sget-object v9, Lcom/mediatek/telephony/ExternalSimManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v9, v9, v3

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1039
    .local v0, "cardType":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1040
    shl-int v9, v13, v3

    or-int/2addr v5, v9

    .line 1043
    :cond_5
    const-string v9, "CSIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "RUIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "UIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1045
    :cond_6
    shl-int v9, v13, v3

    or-int/2addr v4, v9

    .line 1037
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1049
    .end local v0    # "cardType":Ljava/lang/String;
    :cond_8
    const-string v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleGetPlatformCapability isCdmaCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isHasCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    if-nez v5, :cond_9

    .line 1054
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1055
    :cond_9
    if-nez v4, :cond_a

    .line 1057
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1060
    :cond_a
    shl-int v9, v13, v7

    add-int/lit8 v9, v9, -0x1

    xor-int/2addr v9, v4

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1066
    .end local v3    # "i":I
    .end local v4    # "isCdmaCard":I
    .end local v5    # "isHasCard":I
    :cond_b
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2
.end method

.method private handleServiceStateRequest(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 1075
    const/4 v2, 0x0

    .line 1076
    .local v2, "result":I
    const/4 v3, -0x1

    .line 1077
    .local v3, "voiceRejectCause":I
    const/4 v0, -0x1

    .line 1079
    .local v0, "dataRejectCause":I
    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v4

    const/16 v5, 0x3ef

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v6

    invoke-direct {v1, v4, v5, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1109
    .local v1, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1111
    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1113
    invoke-virtual {v1, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1115
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v4, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1116
    return-void
.end method

.method private setDataStream(Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V
    .locals 2
    .param p1, "vsimAdpatorIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .param p2, "vsimRilIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 864
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 865
    const-string v0, "ExternalSimManager"

    const-string v1, "VsimEvenHandler setDataStream done."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method private setMdWaitingFlag(Z)V
    .locals 3
    .param p1, "isWaiting"    # Z

    .prologue
    .line 869
    const-string v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMdWaitingFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    # setter for: Lcom/mediatek/telephony/ExternalSimManager;->isMdWaitingResponse:Z
    invoke-static {v0, p1}, Lcom/mediatek/telephony/ExternalSimManager;->access$302(Lcom/mediatek/telephony/ExternalSimManager;Z)Z

    .line 871
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 859
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->dispatchCallback(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 860
    return-void
.end method
