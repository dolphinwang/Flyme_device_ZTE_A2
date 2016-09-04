.class Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;
.super Landroid/os/Handler;
.source "ZTEIndexFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 480
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 482
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget v1, v1, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 517
    :goto_0
    return-void

    .line 485
    :pswitch_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/high16 v2, 0x3f800000    # 1.0f

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F
    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$702(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;F)F

    .line 486
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v2, 0x2

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V
    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    .line 492
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mTouchScroller:Z
    invoke-static {v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$800(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$300(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$300(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 494
    .local v0, "pos":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I
    invoke-static {v2, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$500(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    move-result v2

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I
    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$402(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    .line 499
    .end local v0    # "pos":I
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$300(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0

    .line 504
    :pswitch_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v2, 0x3

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V
    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    goto :goto_0

    .line 508
    :pswitch_2
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z
    invoke-static {v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$100(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z
    invoke-static {v1, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$002(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 511
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v2, 0x0

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mAlphaRate:F
    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$702(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;F)F

    .line 512
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V
    invoke-static {v1, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    .line 513
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$300(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 514
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$3;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const-wide/16 v2, 0xa

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->fade(J)V
    invoke-static {v1, v2, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$900(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;J)V

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
