.class Lcom/android/fmradio/FmEmActivity$3;
.super Ljava/lang/Object;
.source "FmEmActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmEmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmEmActivity;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmEmActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 485
    const-string v1, "FmRx/EM"

    const-string v2, "begin FmEmActivity.onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    check-cast p2, Lcom/android/fmradio/FmService$ServiceBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/fmradio/FmService$ServiceBinder;->getService()Lcom/android/fmradio/FmService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fmradio/FmEmActivity;->access$37(Lcom/android/fmradio/FmEmActivity;Lcom/android/fmradio/FmService;)V

    .line 487
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$6(Lcom/android/fmradio/FmEmActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 488
    const-string v1, "FmRx/EM"

    const-string v2, "Error: null interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-virtual {v1}, Lcom/android/fmradio/FmEmActivity;->finish()V

    .line 546
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$6(Lcom/android/fmradio/FmEmActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mFmListener:Lcom/android/fmradio/FmListener;
    invoke-static {v2}, Lcom/android/fmradio/FmEmActivity;->access$38(Lcom/android/fmradio/FmEmActivity;)Lcom/android/fmradio/FmListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fmradio/FmService;->registerFmRadioListener(Lcom/android/fmradio/FmListener;)V

    .line 495
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # invokes: Lcom/android/fmradio/FmEmActivity;->isServiceInited()Z
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$39(Lcom/android/fmradio/FmEmActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 496
    const-string v1, "FmRx/EM"

    const-string v2, "FM service is not init."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/android/fmradio/FmEmActivity;->access$1(Lcom/android/fmradio/FmEmActivity;)I

    move-result v2

    # invokes: Lcom/android/fmradio/FmEmActivity;->initService(I)V
    invoke-static {v1, v2}, Lcom/android/fmradio/FmEmActivity;->access$40(Lcom/android/fmradio/FmEmActivity;I)V

    .line 498
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    const/4 v2, 0x0

    # invokes: Lcom/android/fmradio/FmEmActivity;->refreshTextStatus(Z)V
    invoke-static {v1, v2}, Lcom/android/fmradio/FmEmActivity;->access$41(Lcom/android/fmradio/FmEmActivity;Z)V

    .line 502
    const-string v1, "FmRx/EM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onService connect.mCurrentStation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I
    invoke-static {v3}, Lcom/android/fmradio/FmEmActivity;->access$1(Lcom/android/fmradio/FmEmActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$6(Lcom/android/fmradio/FmEmActivity;)Lcom/android/fmradio/FmService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/android/fmradio/FmEmActivity;->access$1(Lcom/android/fmradio/FmEmActivity;)I

    move-result v2

    invoke-static {v2}, Lcom/android/fmradio/FmUtils;->computeFrequency(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/fmradio/FmService;->powerUpAsync(F)V

    .line 545
    :goto_1
    const-string v1, "FmRx/EM"

    const-string v2, "<<< FmEmActivity.onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_1
    const-string v1, "FmRx/EM"

    const-string v2, "FM service is already init."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # invokes: Lcom/android/fmradio/FmEmActivity;->isDeviceOpen()Z
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$42(Lcom/android/fmradio/FmEmActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 510
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # invokes: Lcom/android/fmradio/FmEmActivity;->getFrequency()I
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$43(Lcom/android/fmradio/FmEmActivity;)I

    move-result v0

    .line 511
    .local v0, "iFreq":I
    invoke-static {v0}, Lcom/android/fmradio/FmUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 512
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$1(Lcom/android/fmradio/FmEmActivity;)I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 513
    const-string v1, "FmRx/EM"

    const-string v2, "The frequency in FM service is not same as in database."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-static {v1, v0}, Lcom/android/fmradio/FmEmActivity;->access$44(Lcom/android/fmradio/FmEmActivity;I)V

    .line 517
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$45(Lcom/android/fmradio/FmEmActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/android/fmradio/FmEmActivity;->access$1(Lcom/android/fmradio/FmEmActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/fmradio/FmStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 525
    :goto_2
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # invokes: Lcom/android/fmradio/FmEmActivity;->isPowerUp()Z
    invoke-static {v2}, Lcom/android/fmradio/FmEmActivity;->access$46(Lcom/android/fmradio/FmEmActivity;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/fmradio/FmEmActivity;->access$47(Lcom/android/fmradio/FmEmActivity;Z)V

    .line 527
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mIsPlaying:Z
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$48(Lcom/android/fmradio/FmEmActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    const-string v1, "FmRx/EM"

    const-string v2, "FM is already power up."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    const/4 v2, 0x1

    # invokes: Lcom/android/fmradio/FmEmActivity;->refreshTextStatus(Z)V
    invoke-static {v1, v2}, Lcom/android/fmradio/FmEmActivity;->access$41(Lcom/android/fmradio/FmEmActivity;Z)V

    .line 532
    :cond_2
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mIsPlaying:Z
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$48(Lcom/android/fmradio/FmEmActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 534
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # invokes: Lcom/android/fmradio/FmEmActivity;->getPS()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/fmradio/FmEmActivity;->access$49(Lcom/android/fmradio/FmEmActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fmradio/FmEmActivity;->access$50(Lcom/android/fmradio/FmEmActivity;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    iget-object v2, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # invokes: Lcom/android/fmradio/FmEmActivity;->getLRText()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/fmradio/FmEmActivity;->access$51(Lcom/android/fmradio/FmEmActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fmradio/FmEmActivity;->access$52(Lcom/android/fmradio/FmEmActivity;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$36(Lcom/android/fmradio/FmEmActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 543
    .end local v0    # "iFreq":I
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$36(Lcom/android/fmradio/FmEmActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 519
    .restart local v0    # "iFreq":I
    :cond_4
    const-string v1, "FmRx/EM"

    const-string v2, "The frequency in FM service is same as in database."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 522
    :cond_5
    const-string v1, "FmRx/EM"

    const-string v2, "Error: invalid frequency in service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 541
    .end local v0    # "iFreq":I
    :cond_6
    const-string v1, "FmRx/EM"

    const-string v2, "Error: FM device is not open"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 549
    const-string v0, "FmRx/EM"

    const-string v1, ">>> FmEmActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/android/fmradio/FmEmActivity$3;->this$0:Lcom/android/fmradio/FmEmActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fmradio/FmEmActivity;->access$37(Lcom/android/fmradio/FmEmActivity;Lcom/android/fmradio/FmService;)V

    .line 551
    const-string v0, "FmRx/EM"

    const-string v1, "<<< FmEmActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void
.end method
