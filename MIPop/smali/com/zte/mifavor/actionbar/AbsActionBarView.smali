.class public abstract Lcom/zte/mifavor/actionbar/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected mSplitActionBar:Z

.field protected mSplitView:Landroid/view/ViewGroup;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v1, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/zte/mifavor/actionbar/AbsActionBarView;)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisAnimListener:Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

    .line 78
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 79
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101048d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .prologue
    .line 316
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 240
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 241
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 242
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 302
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisAnimListener:Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 192
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    .line 306
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 310
    sub-int/2addr p2, p4

    .line 312
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/zte/extres/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/zte/extres/R$styleable;->ActionBar_android_height:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->setContentHeight(I)V

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    iget-boolean v1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {p0, v5}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->setSplitToolbar(Z)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v1, p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 137
    .local v0, "action":I
    if-ne v0, v5, :cond_0

    .line 138
    iput-boolean v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mEatingHover:Z

    .line 141
    :cond_0
    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mEatingHover:Z

    if-nez v2, :cond_1

    .line 142
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 143
    .local v1, "handled":Z
    if-ne v0, v5, :cond_1

    if-nez v1, :cond_1

    .line 144
    iput-boolean v4, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mEatingHover:Z

    .line 148
    .end local v1    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 150
    :cond_2
    iput-boolean v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mEatingHover:Z

    .line 153
    :cond_3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 113
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 114
    iput-boolean v4, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mEatingTouch:Z

    .line 117
    :cond_0
    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mEatingTouch:Z

    if-nez v2, :cond_1

    .line 118
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 119
    .local v1, "handled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 120
    iput-boolean v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mEatingTouch:Z

    .line 124
    .end local v1    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 125
    :cond_2
    iput-boolean v4, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mEatingTouch:Z

    .line 128
    :cond_3
    return v3
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 321
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 322
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 324
    .local v1, "childTop":I
    if-eqz p5, :cond_1

    .line 325
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 330
    :goto_0
    if-eqz p5, :cond_0

    neg-int v2, v2

    .end local v2    # "childWidth":I
    :cond_0
    return v2

    .line 327
    .restart local v2    # "childWidth":I
    :cond_1
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/zte/mifavor/actionbar/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/AbsActionBarView$1;-><init>(Lcom/zte/mifavor/actionbar/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mContentHeight:I

    .line 174
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->requestLayout()V

    .line 175
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 0
    .param p1, "split"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mSplitActionBar:Z

    .line 162
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "splitView"    # Landroid/view/ViewGroup;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    .line 183
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 170
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 250
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 252
    :cond_1
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .locals 10
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 196
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 200
    :cond_0
    if-nez p1, :cond_3

    .line 201
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {p0, v6}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->setAlpha(F)V

    .line 203
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v3, :cond_1

    .line 204
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v3, v6}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setAlpha(F)V

    .line 207
    :cond_1
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    aput v8, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 208
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 209
    sget-object v3, Lcom/zte/mifavor/actionbar/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v3, :cond_2

    .line 211
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 212
    .local v1, "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    aput v8, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 213
    .local v2, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 214
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisAnimListener:Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 234
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    return-object v1

    .line 218
    :cond_2
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisAnimListener:Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v1, v0

    .line 219
    goto :goto_0

    .line 222
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_3
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    aput v6, v4, v7

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 223
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    sget-object v3, Lcom/zte/mifavor/actionbar/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 225
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v3, :cond_4

    .line 226
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 227
    .restart local v1    # "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 228
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 229
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisAnimListener:Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 233
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisAnimListener:Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v1, v0

    .line 234
    goto :goto_0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
