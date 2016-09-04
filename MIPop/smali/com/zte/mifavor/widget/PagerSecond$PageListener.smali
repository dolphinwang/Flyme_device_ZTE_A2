.class Lcom/zte/mifavor/widget/PagerSecond$PageListener;
.super Ljava/lang/Object;
.source "PagerSecond.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/PagerSecond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/PagerSecond;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;Lcom/zte/mifavor/widget/PagerSecond$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/widget/PagerSecond;
    .param p2, "x1"    # Lcom/zte/mifavor/widget/PagerSecond$1;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/PagerSecond$PageListener;-><init>(Lcom/zte/mifavor/widget/PagerSecond;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    # invokes: Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/PagerSecond;->access$600(Lcom/zte/mifavor/widget/PagerSecond;)V

    .line 448
    if-nez p1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    # getter for: Lcom/zte/mifavor/widget/PagerSecond;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$200(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/zte/mifavor/widget/PagerSecond;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lcom/zte/mifavor/widget/PagerSecond;->access$300(Lcom/zte/mifavor/widget/PagerSecond;II)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 454
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    # setter for: Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I
    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/PagerSecond;->access$102(Lcom/zte/mifavor/widget/PagerSecond;I)I

    .line 434
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    # setter for: Lcom/zte/mifavor/widget/PagerSecond;->currentPositionOffset:F
    invoke-static {v0, p2}, Lcom/zte/mifavor/widget/PagerSecond;->access$402(Lcom/zte/mifavor/widget/PagerSecond;F)F

    .line 436
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    # getter for: Lcom/zte/mifavor/widget/PagerSecond;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$500(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    # invokes: Lcom/zte/mifavor/widget/PagerSecond;->scrollToChild(II)V
    invoke-static {v0, p1, v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$300(Lcom/zte/mifavor/widget/PagerSecond;II)V

    .line 438
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerSecond;->invalidate()V

    .line 440
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 443
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    # setter for: Lcom/zte/mifavor/widget/PagerSecond;->currentPosition:I
    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/PagerSecond;->access$102(Lcom/zte/mifavor/widget/PagerSecond;I)I

    .line 466
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerSecond;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    # invokes: Lcom/zte/mifavor/widget/PagerSecond;->updateTabStyles()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/PagerSecond;->access$600(Lcom/zte/mifavor/widget/PagerSecond;)V

    .line 470
    return-void
.end method
