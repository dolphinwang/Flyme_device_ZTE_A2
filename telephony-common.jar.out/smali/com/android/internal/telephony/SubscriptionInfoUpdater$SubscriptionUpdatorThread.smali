.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;
.super Ljava/lang/Thread;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionUpdatorThread"
.end annotation


# static fields
.field public static final SIM_ABSENT:I = 0x0

.field public static final SIM_LOADED:I = 0x1

.field public static final SIM_LOCKED:I = 0x2

.field public static final SIM_NO_CHANGED:I = 0x4

.field public static final SIM_READY:I = 0x3


# instance fields
.field private mEventId:I

.field private mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;I)V
    .locals 0
    .param p2, "userObj"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    .param p3, "eventId"    # I

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 563
    iput-object p2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    .line 564
    iput p3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mEventId:I

    .line 565
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 569
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mEventId:I

    packed-switch v0, :pswitch_data_0

    .line 599
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v1, "SubscriptionUpdatorThread run with invalid event id."

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 602
    :cond_0
    :goto_1
    return-void

    .line 571
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    goto :goto_1

    .line 575
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    goto :goto_1

    .line 579
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1200(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    const-string v2, "LOCKED"

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget-object v3, v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 586
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1400(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    goto :goto_1

    .line 591
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v1, "[Common Slot]SubscriptionUpdatorThread run for SIM_NO_CHANGED."

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->checkAllIccIdReady()Z
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1400(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoIfNeed()V
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    goto :goto_0

    .line 595
    :cond_2
    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1600()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v1, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    const-string v2, "N/A"

    aput-object v2, v0, v1

    .line 596
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "case SIM_NO_CHANGED: set N/A for slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$SubscriptionUpdatorThread;->mUserObj:Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    iget v2, v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
