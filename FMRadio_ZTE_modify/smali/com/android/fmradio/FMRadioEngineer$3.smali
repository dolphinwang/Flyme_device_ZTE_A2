.class Lcom/android/fmradio/FMRadioEngineer$3;
.super Landroid/os/Handler;
.source "FMRadioEngineer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FMRadioEngineer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FMRadioEngineer;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    .line 263
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 266
    const-string v19, "FmRx/FMRadioEngineer"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "mHandler.handleMessage: what = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 267
    const-string v21, ",hashcode:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v21, v0

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/fmradio/FMRadioEngineer;->access$0(Lcom/android/fmradio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->hashCode()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 266
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 433
    const-string v19, "FmRx/FMRadioEngineer"

    const-string v20, "invalid message"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    :goto_0
    const-string v19, "FmRx/FMRadioEngineer"

    const-string v20, "handleMessage"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1
    :goto_1
    return-void

    .line 271
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->refreshTimeText()V
    invoke-static/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->access$5(Lcom/android/fmradio/FMRadioEngineer;)V

    goto :goto_0

    .line 275
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 277
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v19, "key_is_power_up"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 278
    .local v7, "isPowerup":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/android/fmradio/FMRadioEngineer;->access$6(Lcom/android/fmradio/FMRadioEngineer;Z)V

    .line 279
    const-string v19, "FmRx/FMRadioEngineer"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "updateFMState: FMRadio is powerup = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->stopAnimation()V
    invoke-static/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->access$7(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 281
    if-nez v7, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    const v21, 0x7f09005b

    invoke-virtual/range {v20 .. v21}, Lcom/android/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v20

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V
    invoke-static/range {v19 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$8(Lcom/android/fmradio/FMRadioEngineer;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 291
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v7    # "isPowerup":Z
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 293
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v19, "key_is_switch_antenna"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 294
    .local v10, "isSwitch":Z
    const-string v19, "FmRx/FMRadioEngineer"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[FMRadioEngineer.mHandler] swtich antenna: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-nez v10, :cond_3

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mIsActivityForeground:Z
    invoke-static/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->access$9(Lcom/android/fmradio/FMRadioEngineer;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->dismissNoAntennaDialog()Z
    invoke-static/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->access$10(Lcom/android/fmradio/FMRadioEngineer;)Z

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->showNoAntennaDialog()V

    .line 303
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->stopAnimation()V
    invoke-static/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->access$7(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V
    invoke-static/range {v19 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$12(Lcom/android/fmradio/FMRadioEngineer;Z)V

    goto/16 :goto_0

    .line 300
    :cond_2
    const-string v19, "FmRx/FMRadioEngineer"

    const-string v20, "need show no antenna dialog after onResume:"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$11(Lcom/android/fmradio/FMRadioEngineer;Z)V

    goto :goto_2

    .line 307
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$11(Lcom/android/fmradio/FMRadioEngineer;Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->dismissNoAntennaDialog()Z
    invoke-static/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->access$10(Lcom/android/fmradio/FMRadioEngineer;)Z

    goto/16 :goto_0

    .line 313
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v10    # "isSwitch":Z
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 314
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    .line 315
    const-string v20, "key_is_power_up"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 314
    invoke-static/range {v19 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$6(Lcom/android/fmradio/FMRadioEngineer;Z)V

    goto/16 :goto_0

    .line 320
    .end local v2    # "bundle":Landroid/os/Bundle;
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 321
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v19, "key_is_tune"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 322
    .local v17, "tuneFinish":Z
    const-string v19, "key_is_power_up"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 325
    .local v6, "isPowerUp":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mIsPlaying:Z
    invoke-static/range {v20 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$13(Lcom/android/fmradio/FMRadioEngineer;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mIsPlaying:Z
    invoke-static/range {v20 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$13(Lcom/android/fmradio/FMRadioEngineer;)Z

    move-result v6

    .end local v6    # "isPowerUp":Z
    :cond_4
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/fmradio/FMRadioEngineer;->access$6(Lcom/android/fmradio/FMRadioEngineer;Z)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->stopAnimation()V
    invoke-static/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->access$7(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$14(Lcom/android/fmradio/FMRadioEngineer;Z)V

    .line 330
    const-string v19, "key_tune_to_station"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 331
    .local v4, "frequency":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    invoke-static {v4}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$15(Lcom/android/fmradio/FMRadioEngineer;I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I
    invoke-static/range {v20 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$16(Lcom/android/fmradio/FMRadioEngineer;)I

    move-result v20

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->refreshStationUI(I)V
    invoke-static/range {v19 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$17(Lcom/android/fmradio/FMRadioEngineer;I)V

    .line 336
    if-nez v17, :cond_0

    .line 337
    const-string v19, "FmRx/FMRadioEngineer"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "mHandler.tune: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 345
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "frequency":F
    .end local v17    # "tuneFinish":Z
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 347
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v19, "key_is_scan"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 348
    .local v8, "isScan":Z
    const-string v19, "key_tune_to_station"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    .line 349
    .local v18, "tuneToFrequency":F
    const-string v19, "key_station_num"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 351
    .local v15, "searchedNum":I
    if-nez v8, :cond_5

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->dismissSearchDialog()V
    invoke-static/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->access$18(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 353
    const-string v19, "FmRx/FMRadioEngineer"

    const-string v20, "mHandler.scan canceled. not enter to channel list."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 357
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$15(Lcom/android/fmradio/FMRadioEngineer;I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I
    invoke-static/range {v20 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$16(Lcom/android/fmradio/FMRadioEngineer;)I

    move-result v20

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->refreshStationUI(I)V
    invoke-static/range {v19 .. v20}, Lcom/android/fmradio/FMRadioEngineer;->access$17(Lcom/android/fmradio/FMRadioEngineer;I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->dismissSearchDialog()V
    invoke-static/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->access$18(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 363
    if-eqz v15, :cond_1

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->enterChannelList()V
    invoke-static/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->access$19(Lcom/android/fmradio/FMRadioEngineer;)V

    goto/16 :goto_0

    .line 375
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v8    # "isScan":Z
    .end local v15    # "searchedNum":I
    .end local v18    # "tuneToFrequency":F
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/fmradio/FMRadioEngineer;->finish()V

    goto/16 :goto_0

    .line 379
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 380
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v19, "key_rds_station"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 381
    .local v12, "rdsStation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->refreshStationUI(I)V
    invoke-static {v0, v12}, Lcom/android/fmradio/FMRadioEngineer;->access$17(Lcom/android/fmradio/FMRadioEngineer;I)V

    goto/16 :goto_0

    .line 386
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v12    # "rdsStation":I
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 387
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v16, ""

    .line 388
    .local v16, "text":Ljava/lang/String;
    const-string v19, "key_ps_info"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 389
    .local v11, "psString":Ljava/lang/String;
    const-string v19, "key_rt_info"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 390
    .local v14, "rtString":Ljava/lang/String;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6

    .line 391
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 393
    :cond_6
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    .line 394
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_7

    .line 395
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 397
    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 399
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->showRds(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/fmradio/FMRadioEngineer;->access$20(Lcom/android/fmradio/FMRadioEngineer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v11    # "psString":Ljava/lang/String;
    .end local v14    # "rtString":Ljava/lang/String;
    .end local v16    # "text":Ljava/lang/String;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 405
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v19, "key_is_recording_state"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 406
    .local v13, "recorderState":I
    const-string v19, "FmRx/FMRadioEngineer"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "FMRadioEngineer.mHandler: recorderState = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 406
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->updateRecordingState(I)V
    invoke-static {v0, v13}, Lcom/android/fmradio/FMRadioEngineer;->access$21(Lcom/android/fmradio/FMRadioEngineer;I)V

    goto/16 :goto_0

    .line 412
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v13    # "recorderState":I
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 414
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v19, "key_recording_error_type"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 415
    .local v3, "errorState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FMRadioEngineer$3;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->updateRecorderError(I)V
    invoke-static {v0, v3}, Lcom/android/fmradio/FMRadioEngineer;->access$22(Lcom/android/fmradio/FMRadioEngineer;I)V

    goto/16 :goto_0

    .line 419
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "errorState":I
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 421
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v19, "key_is_recording_mode"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 423
    .local v5, "isInRecordingMode":Z
    goto/16 :goto_0

    .line 426
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "isInRecordingMode":Z
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 428
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v19, "key_is_speaker_mode"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 430
    .local v9, "isSpeakerMode":Z
    goto/16 :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xb -> :sswitch_6
        0xd -> :sswitch_5
        0xf -> :sswitch_4
        0x65 -> :sswitch_0
        0x100010 -> :sswitch_7
        0x100011 -> :sswitch_8
        0x100100 -> :sswitch_8
        0x100101 -> :sswitch_9
        0x100110 -> :sswitch_a
        0x100111 -> :sswitch_b
        0x101000 -> :sswitch_c
    .end sparse-switch
.end method
