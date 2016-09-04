.class Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;
.super Ljava/lang/Object;
.source "ZTEIndexFastScroller.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 117
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$000(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$100(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const-string v0, "ZTEIndexFastScroller"

    const-string v1, "onScroll STATE_SHOWING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v1, 0x1

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    .line 153
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v3, 0x1

    .line 121
    packed-switch p2, :pswitch_data_0

    .line 130
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z
    invoke-static {v1, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$102(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 134
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$300(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # getter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$300(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 135
    .local v0, "pos":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->getSectionByListPos(I)I
    invoke-static {v2, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$500(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    move-result v2

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mCurrentSection:I
    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$402(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    .line 138
    const-string v1, "ZTEIndexFastScroller"

    const-string v2, "onScrollStateChanged STATE_HIDING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v2, 0x3

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V
    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    .line 143
    .end local v0    # "pos":I
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mIsScrolling:Z
    invoke-static {v1, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$002(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 125
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v2, 0x0

    # setter for: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->isStopedScroll:Z
    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$102(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 126
    const-string v1, "ZTEIndexFastScroller"

    const-string v2, "onScrollStateChanged STATE_SHOWING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    # invokes: Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->setState(I)V
    invoke-static {v1, v3}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
