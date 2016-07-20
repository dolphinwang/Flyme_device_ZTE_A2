.class Lcom/android/fmradio/FMRadioEngineer$4;
.super Ljava/lang/Object;
.source "FMRadioEngineer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v0, 0x0

    .line 463
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "FMRadioEngineer.onServiceConnected start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    check-cast p2, Lcom/android/fmradio/FmService$ServiceBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/android/fmradio/FmService$ServiceBinder;->getService()Lcom/android/fmradio/FmService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/fmradio/FMRadioEngineer;->access$23(Lcom/android/fmradio/FMRadioEngineer;Lcom/android/fmradio/FmService;)V

    .line 465
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 466
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "ServiceConnection: Error: can\'t get Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    invoke-virtual {v1}, Lcom/android/fmradio/FMRadioEngineer;->finish()V

    .line 526
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mFmListener:Lcom/android/fmradio/FmListener;
    invoke-static {v2}, Lcom/android/fmradio/FMRadioEngineer;->access$24(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/fmradio/FmService;->registerFmRadioListener(Lcom/android/fmradio/FmListener;)V

    .line 472
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isServiceInited()Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "ServiceConnection: FM service is not init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I
    invoke-static {v2}, Lcom/android/fmradio/FMRadioEngineer;->access$16(Lcom/android/fmradio/FMRadioEngineer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/fmradio/FmService;->initService(I)V

    .line 475
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->powerUpFm()V
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$25(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 525
    :goto_1
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "FMRadioEngineer.onServiceConnected end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    :cond_1
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "ServiceConnection: FM service is already init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isDeviceOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 484
    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v2}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isModeNormal()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 485
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "Need to power up auto for this case"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->powerUpFm()V
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$25(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 499
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mNeedTuneto:Z
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$27(Lcom/android/fmradio/FMRadioEngineer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mCurrentStation:I
    invoke-static {v2}, Lcom/android/fmradio/FMRadioEngineer;->access$16(Lcom/android/fmradio/FMRadioEngineer;)I

    move-result v2

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v1, v2}, Lcom/android/fmradio/FMRadioEngineer;->access$1(Lcom/android/fmradio/FMRadioEngineer;I)V

    .line 501
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    invoke-static {v1, v0}, Lcom/android/fmradio/FMRadioEngineer;->access$28(Lcom/android/fmradio/FMRadioEngineer;Z)V

    .line 503
    :cond_3
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->updateCurrentStation()V
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$29(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 504
    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v2}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v2

    if-ne v1, v2, :cond_4

    const/4 v0, 0x1

    .line 509
    .local v0, "isPlaying":Z
    :cond_4
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    invoke-static {v1, v0}, Lcom/android/fmradio/FMRadioEngineer;->access$6(Lcom/android/fmradio/FMRadioEngineer;Z)V

    .line 510
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->updateMenuStatus()V
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$30(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 511
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->updateDialogStatus()V
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$31(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 515
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->updateRds()V
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$32(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 516
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->restoreRecorderState()V
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$33(Lcom/android/fmradio/FMRadioEngineer;)V

    goto/16 :goto_1

    .line 487
    .end local v0    # "isPlaying":Z
    :cond_5
    sget v1, Lcom/android/fmradio/FmService;->POWER_UP:I

    iget-object v2, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v2}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fmradio/FmService;->getPowerStatus()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isModeNormal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mIsNeedShowNoAntennaDlg:Z
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$26(Lcom/android/fmradio/FMRadioEngineer;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # getter for: Lcom/android/fmradio/FMRadioEngineer;->mService:Lcom/android/fmradio/FmService;
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$3(Lcom/android/fmradio/FMRadioEngineer;)Lcom/android/fmradio/FmService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fmradio/FmService;->isAntennaAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 491
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "Need to show no antenna dialog for plug out earphone in onPause state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->dismissNoAntennaDialog()Z
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$10(Lcom/android/fmradio/FMRadioEngineer;)Z

    .line 493
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    invoke-virtual {v1}, Lcom/android/fmradio/FMRadioEngineer;->showNoAntennaDialog()V

    goto/16 :goto_2

    .line 520
    :cond_6
    const-string v1, "FmRx/FMRadioEngineer"

    const-string v2, "ServiceConnection: service is exiting while start FM again"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    # invokes: Lcom/android/fmradio/FMRadioEngineer;->exitService()V
    invoke-static {v1}, Lcom/android/fmradio/FMRadioEngineer;->access$2(Lcom/android/fmradio/FMRadioEngineer;)V

    .line 522
    iget-object v1, p0, Lcom/android/fmradio/FMRadioEngineer$4;->this$0:Lcom/android/fmradio/FMRadioEngineer;

    invoke-virtual {v1}, Lcom/android/fmradio/FMRadioEngineer;->finish()V

    goto/16 :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 535
    const-string v0, "FmRx/FMRadioEngineer"

    const-string v1, "FMRadioEngineer.onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void
.end method
