.class Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
.super Landroid/os/Handler;
.source "PerfServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/PerfServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfServiceThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_BOOST_DISABLE:I = 0x1

.field private static final MESSAGE_BOOST_ENABLE:I = 0x0

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT:I = 0x2

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT_MS:I = 0x3

.field private static final MESSAGE_DUMP_ALL:I = 0x18

.field private static final MESSAGE_GET_PACK_NAME:I = 0x1d

.field private static final MESSAGE_NOTIFY_APP_STATE:I = 0x4

.field private static final MESSAGE_NOTIFY_FRAME_UPDATE:I = 0x1a

.field private static final MESSAGE_SET_FAVOR_PID:I = 0x19

.field private static final MESSAGE_SW_FRAME_UPDATE_TIMEOUT:I = 0x1b

.field private static final MESSAGE_TIMER_SCN_BASE:I = 0x64

.field private static final MESSAGE_TIMER_SCN_USER_BASE:I = 0xc8

.field private static final MESSAGE_TIMER_TOUCH_BOOST_DURATION:I = 0x28

.field private static final MESSAGE_TOUCH_BOOST_DURATION:I = 0x1c

.field private static final MESSAGE_USER_DISABLE:I = 0x14

.field private static final MESSAGE_USER_DISABLE_ALL:I = 0x16

.field private static final MESSAGE_USER_ENABLE:I = 0x11

.field private static final MESSAGE_USER_ENABLE_TIMEOUT:I = 0x12

.field private static final MESSAGE_USER_ENABLE_TIMEOUT_MS:I = 0x13

.field private static final MESSAGE_USER_GET_CAPABILITY:I = 0xd

.field private static final MESSAGE_USER_REG:I = 0xa

.field private static final MESSAGE_USER_REG_BIG_LITTLE:I = 0xb

.field private static final MESSAGE_USER_REG_SCN:I = 0xe

.field private static final MESSAGE_USER_REG_SCN_CONFIG:I = 0xf

.field private static final MESSAGE_USER_RESET_ALL:I = 0x15

.field private static final MESSAGE_USER_RESTORE_ALL:I = 0x17

.field private static final MESSAGE_USER_UNREG:I = 0xc

.field private static final MESSAGE_USER_UNREG_SCN:I = 0x10


# instance fields
.field final synthetic this$0:Lcom/mediatek/perfservice/PerfServiceManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/perfservice/PerfServiceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    .line 390
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 391
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTouchBoostTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTouchBoostTimerMs(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V

    return-void
.end method

.method private removeAllUserTimerList()V
    .locals 2

    .prologue
    .line 652
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 653
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 652
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 658
    :cond_0
    return-void
.end method

.method private startCheckTimer(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 560
    if-lez p1, :cond_0

    const/16 v1, 0xc

    if-lt p1, v1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 566
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 567
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 568
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 570
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private startCheckTimerMs(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 577
    if-lez p1, :cond_0

    const/16 v1, 0xc

    if-lt p1, v1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 583
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 584
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 585
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 587
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private startCheckTouchBoostTimerMs(I)V
    .locals 4
    .param p1, "timeout_ms"    # I

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 600
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    .line 601
    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 602
    return-void
.end method

.method private startCheckUserTimer(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 610
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 611
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 612
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 614
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_0
    return-void
.end method

.method private startCheckUserTimerMs(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 622
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 623
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 624
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 626
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_0
    return-void
.end method

.method private stopAllUserTimer()V
    .locals 4

    .prologue
    .line 638
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 640
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 641
    .local v0, "handle":I
    const/16 v3, 0xc

    if-ge v0, v3, :cond_0

    .line 642
    add-int/lit8 v2, v0, 0x64

    .line 646
    .local v2, "timer":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    .end local v2    # "timer":I
    :cond_0
    add-int/lit16 v2, v0, 0xc8

    .restart local v2    # "timer":I
    goto :goto_1

    .line 649
    .end local v0    # "handle":I
    .end local v2    # "timer":I
    :cond_1
    return-void
.end method

.method private stopCheckTimer(I)V
    .locals 1
    .param p1, "scenario"    # I

    .prologue
    .line 594
    add-int/lit8 v0, p1, 0x64

    .line 595
    .local v0, "timer":I
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 596
    return-void
.end method

.method private stopCheckTouchBoostTimer()V
    .locals 1

    .prologue
    .line 605
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 606
    return-void
.end method

.method private stopCheckUserTimer(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 633
    add-int/lit16 v0, p1, 0xc8

    .line 634
    .local v0, "timer":I
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 635
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0xc8

    const/4 v6, 0x7

    .line 396
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 525
    iget v1, p1, Landroid/os/Message;->what:I

    .line 526
    .local v1, "msgId":I
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_TIMEOUT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 528
    const/16 v5, 0x64

    if-lt v1, v5, :cond_3

    if-ge v1, v8, :cond_3

    .line 530
    add-int/lit8 v3, v1, -0x64

    .line 531
    .local v3, "scenario":I
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    .line 533
    packed-switch v3, :pswitch_data_0

    .line 557
    .end local v1    # "msgId":I
    .end local v3    # "scenario":I
    :cond_0
    :goto_0
    return-void

    .line 400
    :sswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in PerfServiceThreadHandler.handleMessage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1300(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :sswitch_1
    :try_start_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto :goto_0

    .line 414
    :sswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 415
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimer(II)V

    goto :goto_0

    .line 421
    :sswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_1

    .line 423
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$400(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 427
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 432
    :cond_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 433
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimerMs(II)V

    goto :goto_0

    .line 439
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;

    .line 441
    .local v2, "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mPackName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$600(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mClassName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$700(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mState:I
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$800(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)I

    move-result v7

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->mPid:I
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->access$900(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;II)I

    .line 442
    const/4 v2, 0x0

    .line 443
    const/4 v5, 0x0

    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 449
    .end local v2    # "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    :sswitch_5
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v6, "MESSAGE_TIMER_TOUCH_BOOST_DURATION timeout"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 450
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v6, 0x0

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 451
    const/4 v5, 0x7

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 457
    :sswitch_6
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_USER_ENABLE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    :sswitch_7
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_USER_DISABLE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 465
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I

    goto/16 :goto_0

    .line 471
    :sswitch_8
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_USER_ENABLE_TIMEOUT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 473
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimer(II)V

    goto/16 :goto_0

    .line 479
    :sswitch_9
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_USER_ENABLE_TIMEOUT_MS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 481
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimerMs(II)V

    goto/16 :goto_0

    .line 487
    :sswitch_a
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MESSAGE_USER_UNREG_SCN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 488
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserUnregScn(I)I

    goto/16 :goto_0

    .line 494
    :sswitch_b
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v6, "MESSAGE_USER_RESET_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopAllUserTimer()V

    .line 496
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeAllUserTimerList()V

    .line 497
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnResetAll()I

    goto/16 :goto_0

    .line 503
    :sswitch_c
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v6, "MESSAGE_USER_DISABLE_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisableAll()I

    goto/16 :goto_0

    .line 511
    :sswitch_d
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string v6, "MESSAGE_USER_RESTORE_ALL"

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnRestoreAll()I

    goto/16 :goto_0

    .line 535
    .restart local v1    # "msgId":I
    .restart local v3    # "scenario":I
    :pswitch_0
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1100(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 536
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v6, 0x0

    # setter for: Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouchBoost:Z
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$402(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 540
    :cond_2
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F
    invoke-static {v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1200(Lcom/mediatek/perfservice/PerfServiceManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 541
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    # getter for: Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;
    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->access$500(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v4

    .line 542
    .local v4, "utilization":F
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set utilization:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->access$1000(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    .end local v3    # "scenario":I
    .end local v4    # "utilization":F
    :cond_3
    if-lt v1, v8, :cond_0

    .line 549
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x10 -> :sswitch_a
        0x11 -> :sswitch_6
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x14 -> :sswitch_7
        0x15 -> :sswitch_b
        0x16 -> :sswitch_c
        0x17 -> :sswitch_d
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 533
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
