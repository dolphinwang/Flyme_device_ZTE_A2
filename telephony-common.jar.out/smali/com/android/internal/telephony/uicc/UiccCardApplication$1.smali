.class Lcom/android/internal/telephony/uicc/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 442
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$000(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 443
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] while being destroyed. Ignoring."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 539
    :goto_0
    return-void

    .line 448
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 537
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown Event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :sswitch_0
    const/4 v1, -0x1

    .line 456
    .local v1, "attemptsRemaining":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 457
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 458
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v1

    .line 460
    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 461
    .local v4, "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 462
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 463
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 469
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "attemptsRemaining":I
    .end local v4    # "response":Landroid/os/Message;
    :sswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v8, "EVENT_PUK1_CHANGE_PIN1_DONE"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 470
    const/4 v2, -0x1

    .line 471
    .local v2, "attemptsRemainingPuk":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 472
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 473
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v2

    .line 475
    :cond_2
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    .line 476
    .local v5, "responsePuk":Landroid/os/Message;
    invoke-static {v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 477
    iput v2, v5, Landroid/os/Message;->arg1:I

    .line 478
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 479
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$400(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    goto :goto_0

    .line 482
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "attemptsRemainingPuk":I
    .end local v5    # "responsePuk":Landroid/os/Message;
    :sswitch_2
    const/4 v3, -0x1

    .line 483
    .local v3, "attemptsRemainingPuk2":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 484
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_3

    .line 485
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v3

    .line 487
    :cond_3
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    .line 488
    .local v6, "responsePuk2":Landroid/os/Message;
    invoke-static {v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 489
    iput v3, v6, Landroid/os/Message;->arg1:I

    .line 490
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 491
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    goto/16 :goto_0

    .line 495
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "attemptsRemainingPuk2":I
    .end local v6    # "responsePuk2":Landroid/os/Message;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 496
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 499
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 500
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V
    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$600(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 503
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 504
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$700(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 507
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 508
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$800(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 511
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v8, "handleMessage (EVENT_RADIO_UNAVAILABLE)"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 512
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$902(Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    goto/16 :goto_0

    .line 515
    :sswitch_8
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v8, "handleMessage (EVENT_QUERY_NETWORK_LOCK)"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 516
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 518
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 519
    const-string v7, "UiccCardApplication"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error query network lock with exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_4
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 523
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 526
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v8, "handleMessage (EVENT_CHANGE_NETWORK_LOCK)"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 527
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 528
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_5

    .line 529
    const-string v7, "UiccCardApplication"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error change network lock with exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_5
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    invoke-static {v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 534
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 448
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_0
        0x9 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
    .end sparse-switch
.end method
