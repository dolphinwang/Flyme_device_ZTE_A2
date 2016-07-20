.class Lcom/zte/mifavor/widget/PagerMainTab$PageListener;
.super Ljava/lang/Object;
.source "PagerMainTab.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/PagerMainTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/PagerMainTab;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/widget/PagerMainTab;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/widget/PagerMainTab;Lcom/zte/mifavor/widget/PagerMainTab$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/widget/PagerMainTab;
    .param p2, "x1"    # Lcom/zte/mifavor/widget/PagerMainTab$1;

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;-><init>(Lcom/zte/mifavor/widget/PagerMainTab;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    # getter for: Lcom/zte/mifavor/widget/PagerMainTab;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerMainTab;->access$200(Lcom/zte/mifavor/widget/PagerMainTab;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/zte/mifavor/widget/PagerMainTab;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lcom/zte/mifavor/widget/PagerMainTab;->access$300(Lcom/zte/mifavor/widget/PagerMainTab;II)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 484
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    # setter for: Lcom/zte/mifavor/widget/PagerMainTab;->currentPosition:I
    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/PagerMainTab;->access$102(Lcom/zte/mifavor/widget/PagerMainTab;I)I

    .line 465
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    # setter for: Lcom/zte/mifavor/widget/PagerMainTab;->currentPositionOffset:F
    invoke-static {v0, p2}, Lcom/zte/mifavor/widget/PagerMainTab;->access$402(Lcom/zte/mifavor/widget/PagerMainTab;F)F

    .line 467
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    # getter for: Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerMainTab;->access$500(Lcom/zte/mifavor/widget/PagerMainTab;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    # invokes: Lcom/zte/mifavor/widget/PagerMainTab;->scrollToChild(II)V
    invoke-static {v0, p1, v1}, Lcom/zte/mifavor/widget/PagerMainTab;->access$300(Lcom/zte/mifavor/widget/PagerMainTab;II)V

    .line 469
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerMainTab;->invalidate()V

    .line 471
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    iget-object v0, v0, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 474
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 488
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    # getter for: Lcom/zte/mifavor/widget/PagerMainTab;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerMainTab;->access$500(Lcom/zte/mifavor/widget/PagerMainTab;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    iget-object v1, v1, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerMainTab$PageListener;->this$0:Lcom/zte/mifavor/widget/PagerMainTab;

    iget-object v1, v1, Lcom/zte/mifavor/widget/PagerMainTab;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 498
    :cond_0
    return-void
.end method
