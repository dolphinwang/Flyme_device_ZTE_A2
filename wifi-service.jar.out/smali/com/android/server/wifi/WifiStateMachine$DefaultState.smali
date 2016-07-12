.class Lcom/android/server/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 5326
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 5329
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$1200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 5331
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 5733
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error! unhandled message"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5736
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v13, 0x1

    return v13

    .line 5333
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/AsyncChannel;

    .line 5334
    .local v2, "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    if-ne v2, v13, :cond_2

    .line 5335
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-nez v13, :cond_1

    .line 5336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    const v14, 0x11001

    invoke-virtual {v13, v14}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 5338
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WifiP2pService connection failure, error="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 5341
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v14, "got HALF_CONNECTED for unknown channel"

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 5346
    .end local v2    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/AsyncChannel;

    .line 5347
    .restart local v2    # "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v13

    if-ne v2, v13, :cond_0

    .line 5348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 5356
    .end local v2    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :goto_1
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v14, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 5365
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, -0x1

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5368
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5371
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    const/4 v13, 0x0

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v14, v0, v15, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5374
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    const/4 v13, 0x0

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v14, v0, v15, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5377
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4

    const/4 v13, 0x1

    :goto_2
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v14, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1702(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 5380
    :sswitch_9
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 5381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v14, 0x2

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v13, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 5383
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v14, 0x2

    const/4 v15, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v13, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 5387
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1900(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v3

    .line 5388
    .local v3, "countryCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 5389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$500(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_country_code"

    invoke-static {v13, v14, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$2000(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v11

    .line 5397
    .local v11, "sequenceNum":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x20050

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    invoke-static {v13, v14, v11, v15, v3}, Lcom/android/server/wifi/WifiStateMachine;->access$2100(Lcom/android/server/wifi/WifiStateMachine;IIILjava/lang/Object;)V

    .line 5400
    .end local v11    # "sequenceNum":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    goto/16 :goto_0

    .line 5403
    .end local v3    # "countryCode":Ljava/lang/String;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/Bundle;

    move/from16 v0, v16

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    invoke-static {v14, v15, v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$2200(Lcom/android/server/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 5406
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleBatchedScanPollRequest()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 5409
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startNextBatchedScan()V
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$2400(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 5412
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    :goto_3
    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScreenStateChanged(ZZ)V
    invoke-static {v14, v13, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$2500(Lcom/android/server/wifi/WifiStateMachine;ZZ)V

    goto/16 :goto_0

    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 5417
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2700()I

    move-result v14

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$2602(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 5476
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2700()I

    move-result v14

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$2602(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 5479
    :sswitch_11
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkDhcpv6cWifi:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2800()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 5480
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    .line 5481
    const-string v13, "WifiStateMachine"

    const-string v14, "Set mDhcpV6StateMachine to null!"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpV6StateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$2902(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto/16 :goto_0

    .line 5484
    :cond_8
    const-string v13, "WifiStateMachine"

    const-string v14, "Set mDhcpStateMachine to null!"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$3002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto/16 :goto_0

    .line 5488
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$3002(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto/16 :goto_0

    .line 5492
    :sswitch_12
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 5493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$3100(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5494
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v14, 0x4

    const/4 v15, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v13, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 5496
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v14, 0x4

    const/4 v15, 0x0

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V
    invoke-static {v13, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1800(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 5500
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 5501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto/16 :goto_0

    .line 5504
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x25002

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5508
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x25005

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5512
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_FAIL:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$3200()I

    move-result v14

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$2602(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 5513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x25008

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5517
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x2500c

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5521
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x2500f

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5525
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x25012

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5529
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x25016

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5533
    :sswitch_1b
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 5534
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    move-result v5

    .line 5535
    .local v5, "featureSet":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5537
    .end local v5    # "featureSet":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5542
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5545
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/NetworkInfo;

    .line 5546
    .local v7, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$3300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 5549
    .end local v7    # "info":Landroid/net/NetworkInfo;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_c

    const/4 v13, 0x1

    :goto_4
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v14, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$3402(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5550
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x2300d

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v13, v0, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$3500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 5549
    :cond_c
    const/4 v13, 0x0

    goto :goto_4

    .line 5554
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x2008c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateLinkProperties(I)V
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$3600(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 5558
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DISCARD:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$2700()I

    move-result v14

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$2602(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 5561
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConnectionStatistics:Landroid/net/wifi/WifiConnectionStatistics;
    invoke-static {v15}, Lcom/android/server/wifi/WifiStateMachine;->access$3700(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v15

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5570
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, -0x1

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5573
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, -0x1

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5576
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    const/4 v13, 0x1

    :goto_5
    invoke-static {v13}, Lcom/android/server/wifi/WifiNative;->setTxPowerEnabled(Z)Z

    move-result v10

    .line 5577
    .local v10, "ok":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    if-eqz v10, :cond_e

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v14, v0, v15, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5576
    .end local v10    # "ok":Z
    :cond_d
    const/4 v13, 0x0

    goto :goto_5

    .line 5577
    .restart local v10    # "ok":Z
    :cond_e
    const/4 v13, -0x1

    goto :goto_6

    .line 5580
    .end local v10    # "ok":Z
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13}, Lcom/android/server/wifi/WifiNative;->setTxPower(I)Z

    move-result v10

    .line 5581
    .restart local v10    # "ok":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    if-eqz v10, :cond_f

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v14, v0, v15, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_f
    const/4 v13, -0x1

    goto :goto_7

    .line 5594
    .end local v10    # "ok":Z
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mCountryCode:Ljava/lang/String;
    invoke-static {v14, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$3902(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 5597
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v15}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wifi/WifiNative;->getDisconnectFlag()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5600
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectNetwork:Z
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$4002(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 5601
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x200ad

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5605
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 5608
    :sswitch_2a
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkCtpppoe:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4100()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 5609
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x25019

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5611
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x25019

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5615
    :sswitch_2b
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mMtkCtpppoe:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$4100()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 5616
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x2501c

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5618
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x2501c

    const/4 v15, 0x0

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5623
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x2502d

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5626
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x25030

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5629
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x25033

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5632
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x25039

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5635
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x25036

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5638
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v14, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mWaitingForHrToken:Z
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$4202(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 5645
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x2500c

    const/4 v15, 0x2

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5650
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->setWoWlanNormalModeCommand()Z

    move-result v10

    .line 5651
    .restart local v10    # "ok":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    if-eqz v10, :cond_12

    const/4 v13, 0x1

    :goto_8
    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v14, v0, v15, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_12
    const/4 v13, -0x1

    goto :goto_8

    .line 5654
    .end local v10    # "ok":Z
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$3800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiNative;->setWoWlanMagicModeCommand()Z

    move-result v10

    .line 5655
    .restart local v10    # "ok":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    if-eqz v10, :cond_13

    const/4 v13, 0x1

    :goto_9
    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v14, v0, v15, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_13
    const/4 v13, -0x1

    goto :goto_9

    .line 5660
    .end local v10    # "ok":Z
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SET_WIFI_NOT_RECONNECT_AND_SCAN "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5661
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_14

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_17

    .line 5662
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v14, "set dont_reconnect_scan flag"

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5663
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x2503c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$4300(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5664
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    if-lez v13, :cond_15

    .line 5665
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x2503c

    const/16 v16, 0x0

    const/16 v17, -0x1

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    mul-int/lit16 v15, v15, 0x3e8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 5669
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "message.arg1: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5670
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_16

    .line 5671
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v14, "isAllowReconnect is false"

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5672
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDontReconnect:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5674
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    .line 5678
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDontReconnectAndScan:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5679
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x200ad

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5681
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v14, "reset dont_reconnect_scan flag"

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 5682
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x2503c

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 5683
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isTemporarilyDontReconnectWifi()Z
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$4500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 5687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDontReconnect:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$4400(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5688
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDontReconnectAndScan:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$4600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x200ad

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 5694
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/4 v15, -0x1

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v13, v0, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 5697
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiAutoJoinController:Lcom/android/server/wifi/WifiAutoJoinController;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiAutoJoinController;->enableDebugProgiling(I)V

    .line 5698
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enableDebugProgiling = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5715
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    .line 5716
    .local v9, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v9, :cond_1b

    .line 5717
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 5718
    .local v8, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v13, v8, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    .line 5719
    .local v12, "value":I
    const-string v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EAP value:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5720
    const/4 v13, 0x4

    if-eq v12, v13, :cond_19

    const/4 v13, 0x5

    if-ne v12, v13, :cond_18

    :cond_19
    iget v13, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v14, 0xa2

    if-eq v13, v14, :cond_1a

    iget v13, v8, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v14, 0xa3

    if-ne v13, v14, :cond_18

    .line 5723
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$4800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v13

    iget v14, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 5724
    .local v4, "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_a

    .line 5728
    .end local v4    # "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "value":I
    :cond_1b
    const-string v13, "WifiStateMachine"

    const-string v14, "Check for EAP_SIM_AKA, networks is null!"

    invoke-static {v13, v14}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5331
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x2000b -> :sswitch_10
        0x2000c -> :sswitch_10
        0x2000d -> :sswitch_10
        0x2000e -> :sswitch_10
        0x20011 -> :sswitch_10
        0x20012 -> :sswitch_10
        0x20013 -> :sswitch_10
        0x20015 -> :sswitch_10
        0x20016 -> :sswitch_10
        0x20017 -> :sswitch_10
        0x20018 -> :sswitch_10
        0x20019 -> :sswitch_10
        0x2001a -> :sswitch_10
        0x2001b -> :sswitch_10
        0x2001c -> :sswitch_10
        0x2001d -> :sswitch_10
        0x2001e -> :sswitch_10
        0x2001f -> :sswitch_3
        0x20033 -> :sswitch_4
        0x20034 -> :sswitch_4
        0x20035 -> :sswitch_4
        0x20036 -> :sswitch_4
        0x20037 -> :sswitch_10
        0x20038 -> :sswitch_10
        0x20039 -> :sswitch_10
        0x2003a -> :sswitch_4
        0x2003b -> :sswitch_6
        0x2003c -> :sswitch_5
        0x2003d -> :sswitch_1b
        0x2003e -> :sswitch_7
        0x2003f -> :sswitch_1c
        0x20047 -> :sswitch_f
        0x20048 -> :sswitch_10
        0x20049 -> :sswitch_10
        0x2004a -> :sswitch_10
        0x2004b -> :sswitch_10
        0x2004c -> :sswitch_21
        0x2004d -> :sswitch_9
        0x20050 -> :sswitch_10
        0x20052 -> :sswitch_8
        0x20053 -> :sswitch_10
        0x20056 -> :sswitch_12
        0x20058 -> :sswitch_10
        0x20059 -> :sswitch_10
        0x2005a -> :sswitch_10
        0x2005d -> :sswitch_10
        0x2005e -> :sswitch_10
        0x2005f -> :sswitch_e
        0x20060 -> :sswitch_10
        0x20062 -> :sswitch_10
        0x20085 -> :sswitch_10
        0x20086 -> :sswitch_a
        0x20087 -> :sswitch_b
        0x20088 -> :sswitch_d
        0x20089 -> :sswitch_c
        0x2008a -> :sswitch_20
        0x2008b -> :sswitch_20
        0x2008c -> :sswitch_1f
        0x2008d -> :sswitch_10
        0x2008e -> :sswitch_10
        0x2008f -> :sswitch_10
        0x20090 -> :sswitch_10
        0x20091 -> :sswitch_10
        0x20092 -> :sswitch_10
        0x20093 -> :sswitch_10
        0x20097 -> :sswitch_0
        0x20099 -> :sswitch_26
        0x200a3 -> :sswitch_22
        0x200a4 -> :sswitch_22
        0x200a5 -> :sswitch_22
        0x200a6 -> :sswitch_23
        0x200a7 -> :sswitch_22
        0x200a8 -> :sswitch_24
        0x200a9 -> :sswitch_25
        0x200aa -> :sswitch_22
        0x200ab -> :sswitch_22
        0x200ac -> :sswitch_0
        0x200ae -> :sswitch_22
        0x200af -> :sswitch_0
        0x200b0 -> :sswitch_0
        0x200b1 -> :sswitch_0
        0x200b2 -> :sswitch_27
        0x200b4 -> :sswitch_28
        0x200b5 -> :sswitch_29
        0x200b6 -> :sswitch_0
        0x200b7 -> :sswitch_32
        0x200b8 -> :sswitch_32
        0x200ba -> :sswitch_31
        0x200bb -> :sswitch_33
        0x200bc -> :sswitch_34
        0x200c0 -> :sswitch_0
        0x200da -> :sswitch_36
        0x200db -> :sswitch_36
        0x200dd -> :sswitch_37
        0x200de -> :sswitch_29
        0x200df -> :sswitch_0
        0x200e0 -> :sswitch_0
        0x200e1 -> :sswitch_0
        0x200e2 -> :sswitch_0
        0x200e3 -> :sswitch_0
        0x200e4 -> :sswitch_0
        0x200e5 -> :sswitch_0
        0x200e6 -> :sswitch_0
        0x200e7 -> :sswitch_0
        0x200e8 -> :sswitch_0
        0x200e9 -> :sswitch_38
        0x21015 -> :sswitch_10
        0x21016 -> :sswitch_10
        0x2300b -> :sswitch_1d
        0x2300c -> :sswitch_1e
        0x24001 -> :sswitch_10
        0x24002 -> :sswitch_10
        0x24003 -> :sswitch_10
        0x24004 -> :sswitch_10
        0x24005 -> :sswitch_10
        0x24006 -> :sswitch_10
        0x24007 -> :sswitch_10
        0x2400a -> :sswitch_10
        0x2400c -> :sswitch_13
        0x2400f -> :sswitch_10
        0x24010 -> :sswitch_10
        0x2402b -> :sswitch_10
        0x25001 -> :sswitch_14
        0x25004 -> :sswitch_15
        0x25007 -> :sswitch_16
        0x2500a -> :sswitch_17
        0x2500e -> :sswitch_18
        0x25011 -> :sswitch_19
        0x25014 -> :sswitch_1a
        0x25017 -> :sswitch_2a
        0x2501a -> :sswitch_2b
        0x25029 -> :sswitch_32
        0x2502a -> :sswitch_32
        0x2502b -> :sswitch_32
        0x2502c -> :sswitch_2c
        0x2502f -> :sswitch_2d
        0x25032 -> :sswitch_2e
        0x25035 -> :sswitch_30
        0x25038 -> :sswitch_2f
        0x2503c -> :sswitch_35
        0x30004 -> :sswitch_10
        0x30005 -> :sswitch_10
        0x30006 -> :sswitch_11
    .end sparse-switch
.end method
