.class public Lcom/zte/mifavor/widget/FusrceenActivity;
.super Ljava/lang/Object;
.source "FusrceenActivity.java"


# instance fields
.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mChildOfContent:Landroid/view/View;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 24
    .local v0, "content":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/FusrceenActivity;->mChildOfContent:Landroid/view/View;

    .line 25
    iget-object v1, p0, Lcom/zte/mifavor/widget/FusrceenActivity;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/zte/mifavor/widget/FusrceenActivity$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/FusrceenActivity$1;-><init>(Lcom/zte/mifavor/widget/FusrceenActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    iget-object v1, p0, Lcom/zte/mifavor/widget/FusrceenActivity;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lcom/zte/mifavor/widget/FusrceenActivity;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/FusrceenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/FusrceenActivity;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->possiblyResizeChildOfContent()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    new-instance v0, Lcom/zte/mifavor/widget/FusrceenActivity;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/FusrceenActivity;-><init>(Landroid/app/Activity;)V

    .line 16
    return-void
.end method

.method private computeUsableHeight()I
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/zte/mifavor/widget/FusrceenActivity;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 53
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4b

    return v1
.end method

.method private possiblyResizeChildOfContent()V
    .locals 5

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/zte/mifavor/widget/FusrceenActivity;->computeUsableHeight()I

    move-result v1

    .line 35
    .local v1, "usableHeightNow":I
    iget v3, p0, Lcom/zte/mifavor/widget/FusrceenActivity;->usableHeightPrevious:I

    if-eq v1, v3, :cond_0

    .line 36
    iget-object v3, p0, Lcom/zte/mifavor/widget/FusrceenActivity;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 37
    .local v2, "usableHeightSansKeyboard":I
    sub-int v0, v2, v1

    .line 38
    .local v0, "heightDifference":I
    div-int/lit8 v3, v2, 0x4

    if-le v0, v3, :cond_1

    .line 40
    iget-object v3, p0, Lcom/zte/mifavor/widget/FusrceenActivity;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int v4, v2, v0

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 45
    :goto_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/FusrceenActivity;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 46
    iput v1, p0, Lcom/zte/mifavor/widget/FusrceenActivity;->usableHeightPrevious:I

    .line 48
    .end local v0    # "heightDifference":I
    .end local v2    # "usableHeightSansKeyboard":I
    :cond_0
    return-void

    .line 43
    .restart local v0    # "heightDifference":I
    .restart local v2    # "usableHeightSansKeyboard":I
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/FusrceenActivity;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0
.end method
