.class Lcom/zte/mifavor/widget/PagerMainTab$1;
.super Ljava/lang/Object;
.source "PagerMainTab.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/PagerMainTab;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/PagerMainTab;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/PagerMainTab;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerMainTab$1;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$1;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerMainTab;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$1;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab$1;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    # getter for: Lcom/zte/mifavor/widget/PagerMainTab;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerMainTab;->access$200(Lcom/zte/mifavor/widget/PagerMainTab;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    # setter for: Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/PagerMainTab;->access$102(Lcom/zte/mifavor/widget/PagerMainTab;I)I

    .line 233
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$1;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab$1;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    # getter for: Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerMainTab;->access$100(Lcom/zte/mifavor/widget/PagerMainTab;)I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/zte/mifavor/widget/PagerMainTab;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lcom/zte/mifavor/widget/PagerMainTab;->access$300(Lcom/zte/mifavor/widget/PagerMainTab;II)V

    .line 234
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$1;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerMainTab;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
