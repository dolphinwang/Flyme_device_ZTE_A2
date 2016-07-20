.class Lcom/zte/mifavor/widget/PagerSecond$1;
.super Ljava/lang/Object;
.source "PagerSecond.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/PagerSecond;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/PagerSecond;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

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
    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerSecond;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    # getter for: Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$200(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    # setter for: Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I
    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$102(Lcom/zte/mifavor/widget/PagerSecond;I)I

    .line 230
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    # getter for: Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$100(Lcom/zte/mifavor/widget/PagerSecond;)I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/zte/mifavor/widget/PagerSecond;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lcom/zte/mifavor/widget/PagerSecond;->access$300(Lcom/zte/mifavor/widget/PagerSecond;II)V

    .line 231
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$1;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerSecond;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
