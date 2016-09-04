.class public Lcom/zte/mifavor/actionbar/ActionbarImpl;
.super Landroid/app/ActionBar;
.source "ActionbarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;
    }
.end annotation


# static fields
.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field private mActionbarView:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

.field private mActivity:Landroid/app/Activity;

.field private mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

.field private mContentAnimations:Z

.field private mContext:Landroid/content/Context;

.field private mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

.field mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private mDisplayHomeAsUpSet:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mHideOnContentScroll:Z

.field private mNowShowing:Z

.field private mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingForMode:Z

.field final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x1

    .line 59
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mNowShowing:Z

    .line 54
    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContentAnimations:Z

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurWindowVisibility:I

    .line 82
    new-instance v0, Lcom/zte/mifavor/actionbar/ActionbarImpl$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/ActionbarImpl$1;-><init>(Lcom/zte/mifavor/actionbar/ActionbarImpl;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 489
    new-instance v0, Lcom/zte/mifavor/actionbar/ActionbarImpl$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/ActionbarImpl$2;-><init>(Lcom/zte/mifavor/actionbar/ActionbarImpl;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 496
    new-instance v0, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;-><init>(Lcom/zte/mifavor/actionbar/ActionbarImpl;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 60
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActivity:Landroid/app/Activity;

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/zte/mifavor/actionbar/ActionbarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ActionbarImpl;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ActionbarImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionbarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ActionbarImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ActionbarImpl;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ActionbarImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ToolBarActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ActionbarImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActionbarView:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ActionbarImpl;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 462
    if-eqz p2, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 465
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 415
    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mShowingForMode:Z

    .line 416
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 419
    :cond_0
    invoke-direct {p0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->updateVisibility(Z)V

    .line 421
    :cond_1
    return-void
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    .line 122
    return-void
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 388
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 389
    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mShowingForMode:Z

    .line 390
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 393
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->updateVisibility(Z)V

    .line 396
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 473
    iget-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 476
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 477
    iget-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 478
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mNowShowing:Z

    .line 479
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->doShow(Z)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 483
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mNowShowing:Z

    .line 484
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 144
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 326
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 331
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 341
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 336
    return-void
.end method

.method animateToMode(Z)V
    .locals 12
    .param p1, "toActionMode"    # Z

    .prologue
    const-wide/16 v10, 0xc8

    const-wide/16 v8, 0x64

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 298
    if-eqz p1, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->showForActionMode()V

    .line 305
    :goto_0
    if-eqz p1, :cond_1

    .line 306
    const-string v3, "guojingdong"

    const-string v4, "animateToMode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActionbarView:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v3, v6, v8, v9}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v1

    .line 309
    .local v1, "fadeOut":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    invoke-virtual {v3, v5, v10, v11}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 317
    .local v0, "fadeIn":Landroid/animation/Animator;
    :goto_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 318
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 319
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 321
    return-void

    .line 301
    .end local v0    # "fadeIn":Landroid/animation/Animator;
    .end local v1    # "fadeOut":Landroid/animation/Animator;
    .end local v2    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->hideForActionMode()V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActionbarView:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v3, v5, v10, v11}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    .line 314
    .restart local v0    # "fadeIn":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    invoke-virtual {v3, v6, v8, v9}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v1

    .restart local v1    # "fadeOut":Landroid/animation/Animator;
    goto :goto_1
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 516
    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 517
    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 519
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 152
    return-void
.end method

.method public doHide(Z)V
    .locals 11
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 573
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 574
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 577
    :cond_0
    if-eqz p1, :cond_3

    .line 578
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->setAlpha(F)V

    .line 580
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 581
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    invoke-virtual {v5}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 582
    .local v3, "endingY":F
    if-eqz p1, :cond_1

    .line 583
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 584
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    invoke-virtual {v5, v4}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->getLocationInWindow([I)V

    .line 585
    aget v5, v4, v9

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 587
    .end local v4    # "topLeft":[I
    :cond_1
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 589
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 590
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 591
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContentAnimations:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    if-eqz v5, :cond_2

    .line 592
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 596
    :cond_2
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContext:Landroid/content/Context;

    const v6, 0x10c0002

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 598
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 599
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 600
    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 601
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 605
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :goto_0
    return-void

    .line 603
    :cond_3
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 583
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 521
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 522
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 524
    :cond_0
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    invoke-virtual {v5, v9}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->setVisibility(I)V

    .line 526
    if-eqz p1, :cond_4

    .line 527
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    invoke-virtual {v5, v8}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->setTranslationY(F)V

    .line 529
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    invoke-virtual {v5}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 530
    .local v3, "startingY":F
    if-eqz p1, :cond_1

    .line 531
    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 532
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    invoke-virtual {v5, v4}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->getLocationInWindow([I)V

    .line 533
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 535
    .end local v4    # "topLeft":[I
    :cond_1
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    invoke-virtual {v5, v3}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->setTranslationY(F)V

    .line 536
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 537
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 539
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 540
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 541
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContentAnimations:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    if-eqz v5, :cond_2

    .line 542
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v11, [F

    aput v3, v7, v9

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 546
    :cond_2
    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 554
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 555
    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 556
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 566
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :goto_0
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    if-eqz v5, :cond_3

    .line 567
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v5}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 570
    :cond_3
    return-void

    .line 558
    :cond_4
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->setAlpha(F)V

    .line 559
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    invoke-virtual {v5, v8}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->setTranslationY(F)V

    .line 560
    iget-boolean v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContentAnimations:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    if-eqz v5, :cond_5

    .line 561
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    invoke-virtual {v5, v8}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->setTranslationY(F)V

    .line 564
    :cond_5
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 531
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContentAnimations:Z

    .line 377
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 671
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 669
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 701
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHiddenByApp:Z

    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->updateVisibility(Z)V

    .line 411
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 424
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 425
    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHiddenBySystem:Z

    .line 426
    invoke-direct {p0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->updateVisibility(Z)V

    .line 428
    :cond_0
    return-void
.end method

.method public init(Landroid/view/View;Lcom/zte/mifavor/actionbar/ActionBarCallBack;)V
    .locals 5
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/zte/mifavor/actionbar/ActionBarCallBack;

    .prologue
    const/4 v3, 0x1

    .line 64
    sget v2, Lcom/zte/extres/R$id;->action_bar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActionbarView:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    .line 65
    sget v2, Lcom/zte/extres/R$id;->action_context_bar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/actionbar/ActionBarContextView;

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    .line 67
    sget v2, Lcom/zte/extres/R$id;->action_bar_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/actionbar/ActionbarContainer;

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    .line 69
    sget v2, Lcom/zte/extres/R$id;->action_bar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getWrapper()Lcom/zte/mifavor/actionbar/DecorToolbar;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    .line 71
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActivity:Landroid/app/Activity;

    invoke-interface {v2, v4}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 72
    check-cast p1, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    .end local p1    # "decor":Landroid/view/View;
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    .line 73
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContext:Landroid/content/Context;

    .line 74
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v2}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 75
    .local v0, "current":I
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    move v1, v3

    .line 76
    .local v1, "homeAsUp":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 77
    iput-boolean v3, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDisplayHomeAsUpSet:Z

    .line 79
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 80
    return-void

    .line 75
    .end local v1    # "homeAsUp":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 117
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurWindowVisibility:I

    .line 126
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 148
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 352
    return-void
.end method

.method public removeTabAt(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 357
    return-void
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 362
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->setCustomView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 649
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 653
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 655
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 735
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->setDisplayHomeAsUpEnabled(Z)V

    .line 737
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 174
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->setDisplayOptions(II)V

    .line 176
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 228
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDisplayHomeAsUpSet:Z

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setDisplayOptions(I)V

    .line 232
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 236
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 237
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDisplayHomeAsUpSet:Z

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setDisplayOptions(I)V

    .line 240
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 185
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->setDisplayOptions(II)V

    .line 186
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 168
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->setDisplayOptions(II)V

    .line 170
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 180
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->setDisplayOptions(II)V

    .line 181
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 163
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->setDisplayOptions(II)V

    .line 164
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->setElevation(F)V

    .line 94
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 452
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 457
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 432
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHideOnContentScroll:Z

    .line 437
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 438
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 637
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setNavigationContentDescription(I)V

    .line 638
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 633
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 628
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 623
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setHomeButtonEnabled(Z)V

    .line 191
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 707
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setIcon(I)V

    .line 708
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 713
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    new-instance v1, Lcom/zte/mifavor/actionbar/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/zte/mifavor/actionbar/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 662
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setLogo(I)V

    .line 722
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 727
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 690
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    .line 693
    .local v0, "oldMode":I
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v1, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setNavigationMode(I)V

    .line 695
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setCollapsible(Z)V

    .line 697
    return-void

    .line 695
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 113
    :pswitch_1
    return-void

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mShowHideAnimationEnabled:Z

    .line 137
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 140
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 253
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 249
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mDecorToolbar:Lcom/zte/mifavor/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 382
    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHiddenByApp:Z

    .line 383
    invoke-direct {p0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->updateVisibility(Z)V

    .line 385
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mHiddenBySystem:Z

    .line 401
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->updateVisibility(Z)V

    .line 403
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 282
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->killMode()V

    .line 283
    new-instance v0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;-><init>(Lcom/zte/mifavor/actionbar/ActionbarImpl;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 284
    .local v0, "mode":Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;
    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActionMode:Landroid/view/ActionMode;

    .line 288
    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->invalidate()V

    .line 289
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 290
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->animateToMode(Z)V

    .line 292
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 295
    .end local v0    # "mode":Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
