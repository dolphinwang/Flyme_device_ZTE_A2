.class final Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierSmsFilterCallback"
.end annotation


# instance fields
.field private final mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V
    .locals 0
    .param p2, "smsFilter"    # Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    .prologue
    .line 1499
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    .line 1500
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    .line 1501
    return-void
.end method


# virtual methods
.method public onDownloadMmsComplete(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onDownloadMmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1549
    return-void
.end method

.method public onFilterComplete(Z)V
    .locals 8
    .param p1, "keepMessage"    # Z

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->disposeConnection(Landroid/content/Context;)V

    .line 1510
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFilterComplete: keepMessage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1100(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    .line 1511
    if-eqz p1, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mPdus:[[B
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->access$1200(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)[[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->access$1300(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mDestPort:I
    invoke-static {v3}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->access$1400(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->access$1500(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mUploadFlag:I
    invoke-static {v5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->access$1600(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;I)V

    .line 1529
    :goto_0
    return-void

    .line 1519
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1522
    .local v6, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->access$1500(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-result-object v1

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access$1700(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->mSmsFilter:Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->access$1500(Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-result-object v2

    # getter for: Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->access$1800(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1527
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    goto :goto_0

    .line 1525
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onSendMmsComplete(I[B)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "sendConfPdu"    # [B

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onSendMmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1544
    return-void
.end method

.method public onSendMultipartSmsComplete(I[I)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "messageRefs"    # [I

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onSendMultipartSmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1539
    return-void
.end method

.method public onSendSmsComplete(II)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "messageRef"    # I

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onSendSmsComplete call with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1534
    return-void
.end method
