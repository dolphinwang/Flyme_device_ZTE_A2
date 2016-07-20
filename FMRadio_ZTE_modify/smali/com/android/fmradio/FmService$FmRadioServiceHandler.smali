.class Lcom/android/fmradio/FmService$FmRadioServiceHandler;
.super Landroid/os/Handler;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmRadioServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmService;


# direct methods
.method public constructor <init>(Lcom/android/fmradio/FmService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3245
    iput-object p1, p0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    .line 3246
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3247
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3252
    const/4 v5, 0x0

    .line 3253
    .local v5, "isPowerup":Z
    const/4 v8, 0x1

    .line 3254
    .local v8, "isSwitch":Z
    const-string v17, "FmService"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "handleMessage: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 3474
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3259
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3260
    .local v2, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->handlePowerUp(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/fmradio/FmService;->access$48(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3265
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/fmradio/FmService;->handlePowerDown()V
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$49(Lcom/android/fmradio/FmService;)V

    goto :goto_0

    .line 3270
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/fmradio/FmService;->mIsSpeakerUsed:Z
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$1(Lcom/android/fmradio/FmService;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 3271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # invokes: Lcom/android/fmradio/FmService;->setForceUse(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/fmradio/FmService;->access$13(Lcom/android/fmradio/FmService;Z)V

    .line 3273
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/fmradio/FmService;->powerDown()Z
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$50(Lcom/android/fmradio/FmService;)Z

    .line 3274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/fmradio/FmService;->closeDevice()Z
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$51(Lcom/android/fmradio/FmService;)Z

    .line 3276
    new-instance v2, Landroid/os/Bundle;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 3277
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v17, "callback_flag"

    const/16 v18, 0xb

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/fmradio/FmService;->access$15(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V

    .line 3280
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 3281
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/fmradio/FmService$OnChannelListListener;->onExit()V

    goto :goto_0

    .line 3287
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3288
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v17, "switch_antenna_value"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 3294
    .local v16, "value":I
    if-nez v16, :cond_2

    .line 3296
    const-string v17, "callback_flag"

    .line 3297
    const/16 v18, 0x4

    .line 3296
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3298
    const-string v17, "key_is_switch_antenna"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/fmradio/FmService;->access$15(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V

    .line 3300
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 3301
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/fmradio/FmService$OnChannelListListener;->onSwitchAnntenna(Z)V

    goto/16 :goto_0

    .line 3307
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/fmradio/FmService;->mRecordState:I
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$52(Lcom/android/fmradio/FmService;)I

    move-result v17

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 3308
    const-string v17, "callback_flag"

    .line 3309
    const/16 v18, 0x4

    .line 3308
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3310
    const-string v17, "key_is_switch_antenna"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/fmradio/FmService;->access$15(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V

    .line 3312
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 3313
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/android/fmradio/FmService$OnChannelListListener;->onSwitchAnntenna(Z)V

    goto/16 :goto_0

    .line 3321
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v16    # "value":I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3322
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v17, "frequency"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v15

    .line 3323
    .local v15, "tuneStation":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->tuneStation(F)Z
    invoke-static {v0, v15}, Lcom/android/fmradio/FmService;->access$53(Lcom/android/fmradio/FmService;F)Z

    move-result v9

    .line 3325
    .local v9, "isTune":Z
    if-nez v9, :cond_3

    .line 3326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v15

    .line 3328
    :cond_3
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "bundle":Landroid/os/Bundle;
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 3329
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v17, "callback_flag"

    .line 3330
    const/16 v18, 0xf

    .line 3329
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3331
    const-string v17, "key_is_tune"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3332
    const-string v17, "key_tune_to_station"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3333
    const-string v18, "key_is_power_up"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/fmradio/FmService;->mPowerStatus:I
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$16(Lcom/android/fmradio/FmService;)I

    move-result v17

    sget v19, Lcom/android/fmradio/FmService;->POWER_UP:I

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/fmradio/FmService;->access$15(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V

    .line 3335
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 3336
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/fmradio/FmService$OnChannelListListener;->onTuneFinished()V

    goto/16 :goto_0

    .line 3333
    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    .line 3342
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v9    # "isTune":Z
    .end local v15    # "tuneStation":F
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3343
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/fmradio/FmService;->access$54(Lcom/android/fmradio/FmService;Z)V

    .line 3344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    const-string v18, "frequency"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v18

    .line 3345
    const-string v19, "option"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 3344
    # invokes: Lcom/android/fmradio/FmService;->seekStation(FZ)F
    invoke-static/range {v17 .. v19}, Lcom/android/fmradio/FmService;->access$55(Lcom/android/fmradio/FmService;FZ)F

    move-result v12

    .line 3346
    .local v12, "seekStation":F
    const/4 v7, 0x0

    .line 3347
    .local v7, "isStationTunningSuccessed":Z
    invoke-static {v12}, Lcom/android/fmradio/FmUtils;->computeStation(F)I

    move-result v13

    .line 3348
    .local v13, "station":I
    invoke-static {v13}, Lcom/android/fmradio/FmUtils;->isValidStation(I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 3349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->tuneStation(F)Z
    invoke-static {v0, v12}, Lcom/android/fmradio/FmService;->access$53(Lcom/android/fmradio/FmService;F)Z

    move-result v7

    .line 3352
    :cond_5
    if-nez v7, :cond_6

    .line 3353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v12

    .line 3355
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "bundle":Landroid/os/Bundle;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 3356
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v17, "callback_flag"

    .line 3357
    const/16 v18, 0xf

    .line 3356
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3358
    const-string v17, "key_is_tune"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3359
    const-string v17, "key_tune_to_station"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/fmradio/FmService;->access$15(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V

    .line 3361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/fmradio/FmService;->access$54(Lcom/android/fmradio/FmService;Z)V

    goto/16 :goto_0

    .line 3366
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v7    # "isStationTunningSuccessed":Z
    .end local v12    # "seekStation":F
    .end local v13    # "station":I
    :pswitch_7
    const/4 v14, 0x0

    .line 3367
    .local v14, "stations":[I
    const/4 v10, 0x0

    .line 3368
    .local v10, "result":[I
    const/4 v11, 0x0

    .line 3369
    .local v11, "scanTuneStation":F
    const/4 v6, 0x1

    .line 3370
    .local v6, "isScan":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/fmradio/FmService;->access$56(Lcom/android/fmradio/FmService;Z)V

    .line 3371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    sget v18, Lcom/android/fmradio/FmUtils;->DEFAULT_STATION_FLOAT:F

    # invokes: Lcom/android/fmradio/FmService;->powerUp(F)Z
    invoke-static/range {v17 .. v18}, Lcom/android/fmradio/FmService;->access$57(Lcom/android/fmradio/FmService;F)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/fmradio/FmService;->startScan()[I
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$58(Lcom/android/fmradio/FmService;)[I

    move-result-object v14

    .line 3376
    :cond_7
    if-eqz v14, :cond_9

    const/16 v17, 0x0

    aget v17, v14, v17

    const/16 v18, -0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 3377
    const/4 v6, 0x0

    .line 3378
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [I

    .end local v10    # "result":[I
    const/16 v17, 0x0

    .line 3379
    const/16 v18, -0x1

    aput v18, v10, v17

    .line 3395
    .restart local v10    # "result":[I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/fmradio/FmService;->mIsAudioFocusHeld:Z
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$31(Lcom/android/fmradio/FmService;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 3396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/fmradio/FmService;->setMute(Z)I

    .line 3398
    :cond_8
    const/16 v17, 0x1

    aget v17, v10, v17

    if-nez v17, :cond_b

    .line 3399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v18, v0

    const v19, 0x7f090050

    invoke-virtual/range {v18 .. v19}, Lcom/android/fmradio/FmService;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/fmradio/FmService;->onShowToast(Ljava/lang/String;)V

    .line 3411
    :goto_3
    new-instance v2, Landroid/os/Bundle;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 3412
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v17, "callback_flag"

    .line 3413
    const/16 v18, 0xd

    .line 3412
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3414
    const-string v17, "key_tune_to_station"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v11}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3415
    const-string v17, "key_station_num"

    const/16 v18, 0x1

    aget v18, v10, v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3416
    const-string v17, "key_is_scan"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/fmradio/FmService;->access$56(Lcom/android/fmradio/FmService;Z)V

    .line 3420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->notifyCurrentActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/fmradio/FmService;->access$60(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V

    .line 3421
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 3422
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lcom/android/fmradio/FmService$OnChannelListListener;->onScanFinished(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3382
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->updateStations([I)[I
    invoke-static {v0, v14}, Lcom/android/fmradio/FmService;->access$59(Lcom/android/fmradio/FmService;[I)[I

    move-result-object v10

    .line 3383
    const/16 v17, 0x0

    aget v17, v10, v17

    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v11

    .line 3384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->tuneStation(F)Z
    invoke-static {v0, v11}, Lcom/android/fmradio/FmService;->access$53(Lcom/android/fmradio/FmService;F)Z

    move-result v9

    .line 3385
    .restart local v9    # "isTune":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v3

    .line 3386
    .local v3, "defaultStation":F
    if-eqz v9, :cond_a

    .line 3387
    :goto_4
    const-string v17, "FmService"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "result[0]="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    aget v19, v10, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",defaultStation="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3388
    const-string v19, ",isTune="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",scanTuneStation="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3387
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    move v11, v3

    .line 3386
    goto :goto_4

    .line 3404
    .end local v3    # "defaultStation":F
    .end local v9    # "isTune":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v19, v0

    const v20, 0x7f09004f

    invoke-virtual/range {v19 .. v20}, Lcom/android/fmradio/FmService;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 3405
    const/16 v19, 0x1

    aget v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3404
    invoke-virtual/range {v17 .. v18}, Lcom/android/fmradio/FmService;->onShowToast(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3428
    .end local v6    # "isScan":Z
    .end local v10    # "result":[I
    .end local v11    # "scanTuneStation":F
    .end local v14    # "stations":[I
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3429
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v17, "key_audiofocus_changed"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 3430
    .local v4, "focusState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/android/fmradio/FmService;->updateAudioFocus(I)V
    invoke-static {v0, v4}, Lcom/android/fmradio/FmService;->access$61(Lcom/android/fmradio/FmService;I)V

    goto/16 :goto_0

    .line 3434
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "focusState":I
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3435
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    const-string v18, "option"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    # invokes: Lcom/android/fmradio/FmService;->setRds(Z)I
    invoke-static/range {v17 .. v18}, Lcom/android/fmradio/FmService;->access$62(Lcom/android/fmradio/FmService;Z)I

    goto/16 :goto_0

    .line 3439
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3440
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    const-string v18, "option"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/fmradio/FmService;->setMute(Z)I

    goto/16 :goto_0

    .line 3444
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/fmradio/FmService;->activeAf()I
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$63(Lcom/android/fmradio/FmService;)I

    goto/16 :goto_0

    .line 3449
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/fmradio/FmService;->startRecording()V
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$64(Lcom/android/fmradio/FmService;)V

    goto/16 :goto_0

    .line 3453
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    # invokes: Lcom/android/fmradio/FmService;->stopRecording()Z
    invoke-static/range {v17 .. v17}, Lcom/android/fmradio/FmService;->access$65(Lcom/android/fmradio/FmService;)Z

    goto/16 :goto_0

    .line 3457
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3458
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    const-string v18, "option"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    # invokes: Lcom/android/fmradio/FmService;->setRecordingMode(Z)V
    invoke-static/range {v17 .. v18}, Lcom/android/fmradio/FmService;->access$66(Lcom/android/fmradio/FmService;Z)V

    goto/16 :goto_0

    .line 3462
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3463
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->this$0:Lcom/android/fmradio/FmService;

    move-object/from16 v17, v0

    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/fmradio/FmService;->saveRecording(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/fmradio/FmService;->access$67(Lcom/android/fmradio/FmService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3255
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
