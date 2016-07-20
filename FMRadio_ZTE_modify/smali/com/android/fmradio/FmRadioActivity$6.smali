.class Lcom/android/fmradio/FmRadioActivity$6;
.super Landroid/os/Handler;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    .line 368
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 371
    const-string v13, "FmRx/Activity"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "mHandler.handleMessage: what = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 372
    const-string v15, ",hashcode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/android/fmradio/FmRadioActivity;->access$0(Lcom/android/fmradio/FmRadioActivity;)Landroid/os/Handler;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 371
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    .line 558
    const-string v13, "FmRx/Activity"

    const-string v14, "invalid message"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_0
    const-string v13, "FmRx/Activity"

    const-string v14, "handleMessage"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    :goto_1
    return-void

    .line 376
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshTimeText()V
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$14(Lcom/android/fmradio/FmRadioActivity;)V

    goto :goto_0

    .line 380
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshCountDownTimeText()V
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$15(Lcom/android/fmradio/FmRadioActivity;)V

    goto :goto_0

    .line 384
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 386
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v13, "key_is_power_up"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 388
    .local v6, "isPowerup":Z
    const-string v13, "key_tune_to_station"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 389
    .local v3, "frequency":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    invoke-static {v3}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$16(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    invoke-static {v13, v6}, Lcom/android/fmradio/FmRadioActivity;->access$17(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 391
    const-string v13, "FmRx/Activity"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "updateFMState: FMRadio is powerup = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->stopAnimation()V
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$18(Lcom/android/fmradio/FmRadioActivity;)V

    .line 393
    if-eqz v6, :cond_3

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$8(Lcom/android/fmradio/FmRadioActivity;)I

    move-result v14

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshStationUI(I)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$19(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$8(Lcom/android/fmradio/FmRadioActivity;)I

    move-result v14

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshRulerUI(I)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$20(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$8(Lcom/android/fmradio/FmRadioActivity;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z
    invoke-static {v15}, Lcom/android/fmradio/FmRadioActivity;->access$12(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v15

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V
    invoke-static {v13, v14, v15}, Lcom/android/fmradio/FmRadioActivity;->access$13(Lcom/android/fmradio/FmRadioActivity;IZ)V

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$6(Lcom/android/fmradio/FmRadioActivity;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/fmradio/FmUtils;->isFirstTimePlayFm(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 399
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$6(Lcom/android/fmradio/FmRadioActivity;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/fmradio/FmUtils;->setIsFirstTimePlayFm(Landroid/content/Context;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$21(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 402
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x0

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$22(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 403
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x0

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$23(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsActivityForeground:Z
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$24(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->showSearchDialog()V
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$25(Lcom/android/fmradio/FmRadioActivity;)V

    .line 407
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$6(Lcom/android/fmradio/FmRadioActivity;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/fmradio/FmStation;->cleanSearchedStations(Landroid/content/Context;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$3(Lcom/android/fmradio/FmRadioActivity;)Lcom/android/fmradio/FmService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/fmradio/FmService;->startScanAsync()V

    goto/16 :goto_0

    .line 410
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x1

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$22(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x1

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$23(Lcom/android/fmradio/FmRadioActivity;Z)V

    goto/16 :goto_0

    .line 414
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const v15, 0x7f09005b

    invoke-virtual {v14, v15}, Lcom/android/fmradio/FmRadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/fmradio/FmRadioActivity;->showToast(Ljava/lang/CharSequence;)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$2(Lcom/android/fmradio/FmRadioActivity;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 419
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "frequency":F
    .end local v6    # "isPowerup":Z
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 421
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v13, "key_is_switch_antenna"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 422
    .local v9, "isSwitch":Z
    const-string v13, "FmRx/Activity"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "[FmRadioActivity.mHandler] swtich antenna: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 422
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez v9, :cond_5

    .line 425
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsActivityForeground:Z
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$24(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 426
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$26(Lcom/android/fmradio/FmRadioActivity;)Z

    .line 427
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    invoke-virtual {v13}, Lcom/android/fmradio/FmRadioActivity;->showNoAntennaDialog()V

    .line 433
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->stopAnimation()V
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$18(Lcom/android/fmradio/FmRadioActivity;)V

    goto/16 :goto_0

    .line 429
    :cond_4
    const-string v13, "FmRx/Activity"

    .line 430
    const-string v14, "need show no antenna dialog after onResume:"

    .line 429
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$27(Lcom/android/fmradio/FmRadioActivity;Z)V

    goto :goto_2

    .line 435
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$27(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 436
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$26(Lcom/android/fmradio/FmRadioActivity;)Z

    goto/16 :goto_0

    .line 441
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v9    # "isSwitch":Z
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 442
    .restart local v1    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    .line 443
    const-string v14, "key_is_power_up"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 442
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$17(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 444
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x0

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$22(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 445
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x0

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$23(Lcom/android/fmradio/FmRadioActivity;Z)V

    goto/16 :goto_0

    .line 449
    .end local v1    # "bundle":Landroid/os/Bundle;
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 451
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v13, "key_is_tune"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 453
    .local v12, "tuneFinish":Z
    const-string v13, "key_is_power_up"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 455
    .local v5, "isPowerUp":Z
    const-string v13, "key_tune_to_station"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 458
    .restart local v3    # "frequency":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$4(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$4(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v5

    .end local v5    # "isPowerUp":Z
    :cond_6
    invoke-static {v13, v5}, Lcom/android/fmradio/FmRadioActivity;->access$17(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->stopAnimation()V
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$18(Lcom/android/fmradio/FmRadioActivity;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    invoke-static {v3}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$16(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 464
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$8(Lcom/android/fmradio/FmRadioActivity;)I

    move-result v14

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshStationUI(I)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$19(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$8(Lcom/android/fmradio/FmRadioActivity;)I

    move-result v14

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshRulerUI(I)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$20(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$8(Lcom/android/fmradio/FmRadioActivity;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z
    invoke-static {v15}, Lcom/android/fmradio/FmRadioActivity;->access$12(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v15

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V
    invoke-static {v13, v14, v15}, Lcom/android/fmradio/FmRadioActivity;->access$13(Lcom/android/fmradio/FmRadioActivity;IZ)V

    .line 468
    if-nez v12, :cond_7

    .line 469
    const-string v13, "FmRx/Activity"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "mHandler.tune: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$4(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v14

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$22(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 471
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$4(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v14

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$23(Lcom/android/fmradio/FmRadioActivity;Z)V

    goto/16 :goto_1

    .line 474
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x1

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$22(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x1

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$23(Lcom/android/fmradio/FmRadioActivity;Z)V

    goto/16 :goto_0

    .line 479
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "frequency":F
    .end local v12    # "tuneFinish":Z
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 481
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v13, "key_is_scan"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 483
    .local v7, "isScan":Z
    const-string v13, "key_tune_to_station"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 485
    .restart local v3    # "frequency":F
    const-string v13, "key_station_num"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 486
    .local v11, "searchedNum":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->stopAnimation()V
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$18(Lcom/android/fmradio/FmRadioActivity;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$4(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v14

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$22(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 488
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$4(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v14

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshPopupMenuItem(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$23(Lcom/android/fmradio/FmRadioActivity;Z)V

    .line 490
    if-nez v7, :cond_8

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->dismissSearchDialog()V
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$28(Lcom/android/fmradio/FmRadioActivity;)V

    .line 492
    const-string v13, "FmRx/Activity"

    .line 493
    const-string v14, "mHandler.scan canceled. not enter to channel list."

    .line 492
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 497
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    invoke-static {v3}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$16(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$8(Lcom/android/fmradio/FmRadioActivity;)I

    move-result v14

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshStationUI(I)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$19(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$8(Lcom/android/fmradio/FmRadioActivity;)I

    move-result v14

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshRulerUI(I)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$20(Lcom/android/fmradio/FmRadioActivity;I)V

    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v14}, Lcom/android/fmradio/FmRadioActivity;->access$8(Lcom/android/fmradio/FmRadioActivity;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z
    invoke-static {v15}, Lcom/android/fmradio/FmRadioActivity;->access$12(Lcom/android/fmradio/FmRadioActivity;)Z

    move-result v15

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V
    invoke-static {v13, v14, v15}, Lcom/android/fmradio/FmRadioActivity;->access$13(Lcom/android/fmradio/FmRadioActivity;IZ)V

    .line 503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->dismissSearchDialog()V
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$28(Lcom/android/fmradio/FmRadioActivity;)V

    .line 505
    if-eqz v11, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->enterChannelList()V
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$29(Lcom/android/fmradio/FmRadioActivity;)V

    goto/16 :goto_0

    .line 517
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "frequency":F
    .end local v7    # "isScan":Z
    .end local v11    # "searchedNum":I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    invoke-virtual {v13}, Lcom/android/fmradio/FmRadioActivity;->finish()V

    goto/16 :goto_0

    .line 521
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 523
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v13, "key_is_recording_state"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 524
    .local v10, "recorderState":I
    const-string v13, "FmRx/Activity"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "FmRadioActivity.mHandler: recorderState = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 524
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->updateRecordingState(I)V
    invoke-static {v13, v10}, Lcom/android/fmradio/FmRadioActivity;->access$30(Lcom/android/fmradio/FmRadioActivity;I)V

    goto/16 :goto_0

    .line 530
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v10    # "recorderState":I
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 532
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v13, "key_recording_error_type"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 533
    .local v2, "errorState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # invokes: Lcom/android/fmradio/FmRadioActivity;->updateRecorderError(I)V
    invoke-static {v13, v2}, Lcom/android/fmradio/FmRadioActivity;->access$31(Lcom/android/fmradio/FmRadioActivity;I)V

    goto/16 :goto_0

    .line 537
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "errorState":I
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 539
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v13, "key_is_recording_mode"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 541
    .local v4, "isInRecordingMode":Z
    goto/16 :goto_0

    .line 544
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "isInRecordingMode":Z
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 546
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v13, "key_is_speaker_mode"

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 547
    .local v8, "isSpeakerMode":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    # getter for: Lcom/android/fmradio/FmRadioActivity;->mButtonSwitchToSpeaker:Landroid/widget/ImageButton;
    invoke-static {v13}, Lcom/android/fmradio/FmRadioActivity;->access$32(Lcom/android/fmradio/FmRadioActivity;)Landroid/widget/ImageButton;

    move-result-object v14

    .line 548
    if-eqz v8, :cond_9

    const v13, 0x7f020202

    :goto_3
    invoke-virtual {v14, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x1

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$22(Lcom/android/fmradio/FmRadioActivity;Z)V

    goto/16 :goto_0

    .line 549
    :cond_9
    const v13, 0x7f020201

    goto :goto_3

    .line 554
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v8    # "isSpeakerMode":Z
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/fmradio/FmRadioActivity$6;->this$0:Lcom/android/fmradio/FmRadioActivity;

    const/4 v14, 0x1

    # invokes: Lcom/android/fmradio/FmRadioActivity;->refreshImageButton(Z)V
    invoke-static {v13, v14}, Lcom/android/fmradio/FmRadioActivity;->access$22(Lcom/android/fmradio/FmRadioActivity;Z)V

    goto/16 :goto_0

    .line 374
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x9 -> :sswitch_2
        0xa -> :sswitch_4
        0xb -> :sswitch_7
        0xd -> :sswitch_6
        0xf -> :sswitch_5
        0x22 -> :sswitch_c
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x100101 -> :sswitch_8
        0x100110 -> :sswitch_9
        0x100111 -> :sswitch_a
        0x101000 -> :sswitch_b
    .end sparse-switch
.end method
