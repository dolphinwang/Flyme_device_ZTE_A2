.class Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmService;


# direct methods
.method private constructor <init>(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/fmradio/FmService;Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;-><init>(Lcom/android/fmradio/FmService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 281
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "action":Ljava/lang/String;
    const-string v7, "command"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "command":Ljava/lang/String;
    const-string v7, "FmService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onReceive, action = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / command = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v7, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 286
    const-string v7, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 287
    const-string v7, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 288
    const-string v7, "com.android.music.musicservicecommand"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "pause"

    .line 289
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 291
    :cond_0
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$7(Lcom/android/fmradio/FmService;)Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 292
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const-string v8, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 293
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const-string v8, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 295
    const-string v7, "FmService"

    const-string v8, "onReceive.SOUND_POWER_DOWN_MSG. exit FM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->exitFm()V
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$4(Lcom/android/fmradio/FmService;)V

    .line 297
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->stopSelf()V

    .line 299
    :cond_1
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 301
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$7(Lcom/android/fmradio/FmService;)Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 302
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const-string v8, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 303
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const-string v8, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 305
    const-string v7, "FmService"

    const-string v8, "onReceive.ACTION_AIRPLANE_MODE_CHANGED. exit FM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 307
    iget-object v8, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const v9, 0x7f0900bb

    invoke-virtual {v8, v9}, Lcom/android/fmradio/FmService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 308
    const/4 v9, 0x0

    .line 306
    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 308
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 309
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->exitFm()V
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$4(Lcom/android/fmradio/FmService;)V

    .line 310
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->stopSelf()V

    .line 434
    :cond_2
    :goto_0
    return-void

    .line 312
    :cond_3
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 317
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$7(Lcom/android/fmradio/FmService;)Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 318
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const-string v8, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_COUNTINGDOWN_TIMEUP"

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 319
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const-string v8, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 320
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->exitFm()V
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$4(Lcom/android/fmradio/FmService;)V

    .line 321
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->stopSelf()V

    goto :goto_0

    .line 323
    :cond_4
    const-string v7, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 324
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$7(Lcom/android/fmradio/FmService;)Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 325
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->exitFm()V
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$4(Lcom/android/fmradio/FmService;)V

    .line 326
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->stopSelf()V

    goto :goto_0

    .line 328
    :cond_5
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 329
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->setRdsAsync(Z)V

    goto :goto_0

    .line 331
    :cond_6
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 332
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->setRdsAsync(Z)V

    .line 335
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->updatePlayingNotification()V

    goto :goto_0

    .line 337
    :cond_7
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 339
    iget-object v8, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const-string v7, "state"

    const/4 v9, -0x1

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_8

    const/4 v7, 0x0

    :goto_1
    invoke-static {v8, v7}, Lcom/android/fmradio/FmService;->access$8(Lcom/android/fmradio/FmService;I)V

    .line 340
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    iget-object v8, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mValueHeadSetPlug:I
    invoke-static {v8}, Lcom/android/fmradio/FmService;->access$9(Lcom/android/fmradio/FmService;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->switchAntennaAsync(I)V

    .line 344
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsServiceInited:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$10(Lcom/android/fmradio/FmService;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 345
    const-string v7, "FmService"

    const-string v8, "onReceive, mIsServiceInited is false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 339
    :cond_8
    const/4 v7, 0x1

    goto :goto_1

    .line 353
    :cond_9
    const-string v7, "FmService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FmServiceBroadcastReceiver, mValueHeadSetPlug: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    iget-object v9, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mValueHeadSetPlug:I
    invoke-static {v9}, Lcom/android/fmradio/FmService;->access$9(Lcom/android/fmradio/FmService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 353
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mValueHeadSetPlug:I
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$9(Lcom/android/fmradio/FmService;)I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsRecordingPermissible:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$11(Lcom/android/fmradio/FmService;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 357
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const-string v8, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->stopCountingDownAsync(Ljava/lang/String;)V

    .line 358
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    iget-object v8, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v8}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v8

    invoke-static {v8}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->powerUpAsync(F)V

    goto/16 :goto_0

    .line 359
    :cond_a
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mValueHeadSetPlug:I
    invoke-static {v8}, Lcom/android/fmradio/FmService;->access$9(Lcom/android/fmradio/FmService;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 360
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$7(Lcom/android/fmradio/FmService;)Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    move-result-object v7

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 361
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$7(Lcom/android/fmradio/FmService;)Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 362
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$7(Lcom/android/fmradio/FmService;)Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    move-result-object v7

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 363
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$7(Lcom/android/fmradio/FmService;)Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    move-result-object v7

    .line 364
    const/16 v8, 0xa

    .line 363
    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 365
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mFmServiceHandler:Lcom/android/fmradio/FmService$FmRadioServiceHandler;
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$7(Lcom/android/fmradio/FmService;)Lcom/android/fmradio/FmService$FmRadioServiceHandler;

    move-result-object v7

    .line 366
    const/16 v8, 0x9

    .line 365
    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService$FmRadioServiceHandler;->removeMessages(I)V

    .line 367
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const/4 v8, -0x1

    # invokes: Lcom/android/fmradio/FmService;->focusChanged(I)V
    invoke-static {v7, v8}, Lcom/android/fmradio/FmService;->access$5(Lcom/android/fmradio/FmService;I)V

    .line 371
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const/4 v8, 0x0

    # invokes: Lcom/android/fmradio/FmService;->setForceUse(Z)V
    invoke-static {v7, v8}, Lcom/android/fmradio/FmService;->access$13(Lcom/android/fmradio/FmService;Z)V

    .line 372
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$14(Lcom/android/fmradio/FmService;)Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/fmradio/FmUtils;->setIsSpeakerModeOnFocusLost(Landroid/content/Context;Z)V

    .line 375
    new-instance v1, Landroid/os/Bundle;

    const/4 v7, 0x2

    invoke-direct {v1, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 376
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "callback_flag"

    .line 377
    const v8, 0x101000

    .line 376
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    const-string v7, "key_is_speaker_mode"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # invokes: Lcom/android/fmradio/FmService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v7, v1}, Lcom/android/fmradio/FmService;->access$15(Lcom/android/fmradio/FmService;Landroid/os/Bundle;)V

    .line 385
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    const-string v8, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_HEADSET_TIMEUP"

    .line 386
    const-wide/16 v10, 0x3c

    .line 385
    invoke-virtual {v7, v8, v10, v11}, Lcom/android/fmradio/FmService;->startCountingDownAsync(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 388
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_b
    const-string v7, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STARTSCAN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 389
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mPowerStatus:I
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$16(Lcom/android/fmradio/FmService;)I

    move-result v7

    sget v8, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v7, v8, :cond_c

    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$17(Lcom/android/fmradio/FmService;)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsScanning:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$18(Lcom/android/fmradio/FmService;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 390
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->startScanAsync()V

    goto/16 :goto_0

    .line 392
    :cond_c
    new-instance v4, Landroid/os/Bundle;

    const/4 v7, 0x2

    invoke-direct {v4, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 393
    .local v4, "favBundle":Landroid/os/Bundle;
    const-string v7, "key_station_num"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const-string v7, "key_is_scan"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 397
    # getter for: Lcom/android/fmradio/FmService;->sChannelListListener:Lcom/android/fmradio/FmService$OnChannelListListener;
    invoke-static {}, Lcom/android/fmradio/FmService;->access$19()Lcom/android/fmradio/FmService$OnChannelListListener;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/android/fmradio/FmService$OnChannelListListener;->onScanFinished(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 400
    .end local v4    # "favBundle":Landroid/os/Bundle;
    :cond_d
    const-string v7, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STOPSCAN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 401
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->stopScan()Z

    goto/16 :goto_0

    .line 402
    :cond_e
    const-string v7, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_TUNESTATION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 403
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mPowerStatus:I
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$16(Lcom/android/fmradio/FmService;)I

    move-result v7

    sget v8, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$17(Lcom/android/fmradio/FmService;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsScanning:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$18(Lcom/android/fmradio/FmService;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 404
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 405
    .local v3, "curStation":I
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-static {v3}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->tuneStationAsync(F)V

    goto/16 :goto_0

    .line 407
    .end local v3    # "curStation":I
    :cond_f
    const-string v7, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 408
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mPowerStatus:I
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$16(Lcom/android/fmradio/FmService;)I

    move-result v7

    sget v8, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$17(Lcom/android/fmradio/FmService;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsScanning:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$18(Lcom/android/fmradio/FmService;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 409
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    .line 410
    iget-object v8, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v8}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v8

    invoke-static {v8}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v8

    const/4 v9, 0x0

    .line 409
    invoke-virtual {v7, v8, v9}, Lcom/android/fmradio/FmService;->seekStationAsync(FZ)V

    goto/16 :goto_0

    .line 411
    :cond_10
    const-string v7, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 412
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mPowerStatus:I
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$16(Lcom/android/fmradio/FmService;)I

    move-result v7

    sget v8, Lcom/android/fmradio/FmService;->POWER_UP:I

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsNativeSeeking:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$17(Lcom/android/fmradio/FmService;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mIsScanning:Z
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$18(Lcom/android/fmradio/FmService;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 413
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    .line 414
    iget-object v8, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v8}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v8

    invoke-static {v8}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v8

    const/4 v9, 0x1

    .line 413
    invoke-virtual {v7, v8, v9}, Lcom/android/fmradio/FmService;->seekStationAsync(FZ)V

    goto/16 :goto_0

    .line 415
    :cond_11
    const-string v7, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 416
    if-eqz v2, :cond_12

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 417
    :cond_12
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    iget-object v8, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v8}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/fmradio/FmService;->updateFavoriteStation(I)V

    goto/16 :goto_0

    .line 419
    :cond_13
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 420
    .local v5, "favorStation":I
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v7, v5}, Lcom/android/fmradio/FmService;->updateFavoriteStation(I)V

    goto/16 :goto_0

    .line 422
    .end local v5    # "favorStation":I
    :cond_14
    const-string v7, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 423
    if-eqz v2, :cond_2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 424
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v7}, Lcom/android/fmradio/FmService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 426
    const/4 v8, 0x0

    .line 424
    invoke-static {v7, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 426
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 428
    :cond_15
    const-string v7, "com.mediatek.FMRadio.FmRadioWidget.update"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 429
    invoke-static {}, Lcom/android/fmradio/FmRadioWidget;->getInstance()Lcom/android/fmradio/FmRadioWidget;

    move-result-object v6

    .line 430
    .local v6, "widget":Lcom/android/fmradio/FmRadioWidget;
    iget-object v7, p0, Lcom/android/fmradio/FmService$FmServiceBroadcastReceiver;->this$0:Lcom/android/fmradio/FmService;

    # getter for: Lcom/android/fmradio/FmService;->mCurrentStation:I
    invoke-static {v7}, Lcom/android/fmradio/FmService;->access$12(Lcom/android/fmradio/FmService;)I

    move-result v7

    invoke-virtual {v6, p1, v7}, Lcom/android/fmradio/FmRadioWidget;->updateWidget(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 432
    .end local v6    # "widget":Lcom/android/fmradio/FmRadioWidget;
    :cond_16
    const-string v7, "FmService"

    const-string v8, "Error: undefined action."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
