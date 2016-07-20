.class public abstract Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;
.super Landroid/view/ViewGroup;
.source "MenuDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;,
        Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;,
        Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;,
        Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;,
        Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;
    }
.end annotation


# static fields
.field protected static final ANIMATION_DELAY:I = 0x10

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x258

.field private static final DEFAULT_DRAG_BEZEL_DP:I = 0x18

.field private static final DEFAULT_DROP_SHADOW_DP:I = 0x6

.field static final INDICATOR_ANIM_DURATION:I = 0x320

.field protected static final INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final MENU_DRAG_CONTENT:I = 0x0

.field public static final MENU_DRAG_WINDOW:I = 0x1

.field protected static final SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_CLOSING:I = 0x1

.field public static final STATE_DRAGGING:I = 0x2

.field public static final STATE_OPEN:I = 0x8

.field public static final STATE_OPENING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MenuDrawer"

.field public static final TOUCH_MODE_BEZEL:I = 0x1

.field public static final TOUCH_MODE_FULLSCREEN:I = 0x2

.field public static final TOUCH_MODE_NONE:I

.field static final USE_TRANSLATIONS:Z

.field static layoutDirection:I


# instance fields
.field private final ACTIONBAR_HEIGHT:I

.field private final INDICATOR_HEIGHT:I

.field private final SPLIT_ACTIONBAR_COLOR:I

.field private final SPLIT_ACTIONBAR_HEIGHT:I

.field private mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

.field private mActionbarHeight:I

.field private mActionbarTabHeight:I

.field protected mActiveIndicator:Landroid/graphics/Bitmap;

.field protected mActivePosition:I

.field protected final mActiveRect:Landroid/graphics/Rect;

.field protected mActiveView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAllowIndicatorAnimation:Z

.field protected mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

.field private mCurrentUpContentDesc:I

.field protected mDragMode:I

.field protected mDrawOverlay:Z

.field private mDrawerClosedContentDesc:I

.field protected mDrawerIndicatorEnabled:Z

.field private mDrawerOpenContentDesc:I

.field protected mDrawerState:I

.field protected mDropShadowColor:I

.field protected mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDropShadowEnabled:Z

.field protected final mDropShadowRect:Landroid/graphics/Rect;

.field protected mDropShadowSize:I

.field protected mEnableMenuDrawer:Z

.field protected mHardwareLayersEnabled:Z

.field protected mIndicatorAnimating:Z

.field private final mIndicatorClipRect:Landroid/graphics/Rect;

.field protected mIndicatorOffset:F

.field private mIndicatorRunnable:Ljava/lang/Runnable;

.field private mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

.field protected mIndicatorStartPos:I

.field protected mIsStatic:Z

.field protected mMaxAnimationDuration:I

.field protected mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

.field protected mMenuOverlay:Landroid/graphics/drawable/Drawable;

.field public mMenuSize:I

.field private mMenuView:Landroid/view/View;

.field protected mMenuVisible:Z

.field protected mOffsetPixels:F

.field private mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

.field private mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

.field protected mOnInterceptMoveEventListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

.field protected mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

.field private mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field protected mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

.field private mSplitActionbarHeight:I

.field protected mState:Landroid/os/Bundle;

.field private final mTempRect:Landroid/graphics/Rect;

.field protected mThemeUpIndicator:Landroid/graphics/drawable/Drawable;

.field protected mTouchBezelSize:I

.field protected mTouchMode:I

.field protected mTouchSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/SmoothInterpolator;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/overlaydrawer/SmoothInterpolator;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 200
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    .line 657
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    .line 658
    iput p2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    .line 661
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 665
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 668
    sget v0, Lcom/zte/extres/R$attr;->menuDrawerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 669
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v3, 0x34

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 672
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    .line 256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;

    .line 288
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    .line 299
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    .line 324
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchMode:I

    .line 329
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mHardwareLayersEnabled:Z

    .line 341
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mEnableMenuDrawer:Z

    .line 346
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$1;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorRunnable:Ljava/lang/Runnable;

    .line 376
    const/16 v0, 0x258

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 402
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    .line 406
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    .line 417
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->INDICATOR_HEIGHT:I

    .line 418
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->ACTIONBAR_HEIGHT:I

    .line 419
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 420
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    .line 421
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarTabHeight:I

    .line 422
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSplitActionbarHeight:I

    .line 423
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SPLIT_ACTIONBAR_COLOR:I

    .line 1096
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 673
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 674
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->animateIndicatorInvalidate()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private animateIndicatorInvalidate()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->getCurr()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    .line 1159
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1161
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1168
    :goto_0
    return-void

    .line 1167
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->completeAnimatingIndicator()V

    goto :goto_0
.end method

.method public static attach(Landroid/app/Activity;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 432
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->BEHIND:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    .prologue
    .line 444
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/Position;->LEFT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-static {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;Lcom/zte/mifavor/widget/overlaydrawer/Position;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;Lcom/zte/mifavor/widget/overlaydrawer/Position;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;
    .param p2, "position"    # Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;Lcom/zte/mifavor/widget/overlaydrawer/Position;I)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;Lcom/zte/mifavor/widget/overlaydrawer/Position;I)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;
    .param p2, "position"    # Lcom/zte/mifavor/widget/overlaydrawer/Position;
    .param p3, "dragMode"    # I

    .prologue
    .line 481
    invoke-static {p0, p3, p2, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->createMenuDrawer(Landroid/app/Activity;ILcom/zte/mifavor/widget/overlaydrawer/Position;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    move-result-object v0

    .line 482
    .local v0, "menuDrawer":Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    sget v1, Lcom/zte/extres/R$id;->md__drawer:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setId(I)V

    .line 484
    packed-switch p3, :pswitch_data_0

    .line 494
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown menu mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :pswitch_0
    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attachToContent(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    .line 497
    :goto_0
    return-object v0

    .line 490
    :pswitch_1
    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attachToDecor(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/Position;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "position"    # Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .prologue
    .line 455
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->BEHIND:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    invoke-static {p0, v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attach(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;Lcom/zte/mifavor/widget/overlaydrawer/Position;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    move-result-object v0

    return-object v0
.end method

.method private static attachToContent(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menuDrawer"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .prologue
    const/4 v8, -0x1

    .line 569
    const v5, 0x1020002

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 570
    .local v0, "content":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 571
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 572
    invoke-virtual {v0, p1, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 599
    :goto_0
    return-void

    .line 574
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 575
    .local v1, "mBackground":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 576
    .local v2, "mSplitBackground":Landroid/widget/LinearLayout;
    sget v5, Lcom/zte/extres/R$id;->md__background:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 577
    sget v5, Lcom/zte/extres/R$id;->md__splitbackground:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 579
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 580
    .local v3, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 581
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x4d

    invoke-static {p0, v6}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 589
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 590
    .local v4, "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 592
    .end local v4    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 595
    invoke-virtual {v0, v3, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private static attachToDecor(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menuDrawer"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .prologue
    const/4 v3, -0x1

    .line 645
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 646
    .local v1, "decorView":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 648
    .local v0, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 649
    invoke-virtual {v1, p1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 651
    iget-object v2, p1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    return-void
.end method

.method private completeAnimatingIndicator()V
    .locals 1

    .prologue
    .line 1174
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    .line 1175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    .line 1176
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1177
    return-void
.end method

.method private static createMenuDrawer(Landroid/app/Activity;ILcom/zte/mifavor/widget/overlaydrawer/Position;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragMode"    # I
    .param p2, "position"    # Lcom/zte/mifavor/widget/overlaydrawer/Position;
    .param p3, "type"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    .prologue
    .line 509
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    invoke-direct {v0, p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;-><init>(Landroid/app/Activity;I)V

    .line 511
    .local v0, "drawer":Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setupUpIndicator(Landroid/app/Activity;)V

    .line 512
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setDrawerIndicatorEnabled(Z)V

    .line 514
    new-instance v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;

    invoke-direct {v1, v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;Landroid/app/Activity;)V

    .line 526
    .local v1, "drawerarrwer":Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;
    sget-object v2, Lcom/zte/mifavor/widget/overlaydrawer/Position;->LEFT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    iput-object v2, v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 529
    iput p1, v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDragMode:I

    .line 532
    return-object v0
.end method

.method private drawDropShadow(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 818
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowColor:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDropShadowColor(I)V

    .line 821
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->updateDropShadowRect()V

    .line 822
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 823
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 824
    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 860
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    sget v5, Lcom/zte/extres/R$id;->mdActiveViewPosition:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 861
    .local v3, "position":Ljava/lang/Integer;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 862
    .local v2, "pos":I
    :goto_0
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivePosition:I

    if-ne v2, v4, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->updateIndicatorClipRect()V

    .line 864
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 865
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, "drawLeft":I
    const/4 v1, 0x0

    .line 869
    .local v1, "drawTop":I
    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 887
    :goto_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    int-to-float v6, v1

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 888
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 890
    .end local v0    # "drawLeft":I
    .end local v1    # "drawTop":I
    :cond_0
    return-void

    .line 861
    .end local v2    # "pos":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 872
    .restart local v0    # "drawLeft":I
    .restart local v1    # "drawTop":I
    .restart local v2    # "pos":I
    :pswitch_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 873
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 874
    goto :goto_1

    .line 877
    :pswitch_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 878
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 879
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 880
    goto :goto_1

    .line 883
    :pswitch_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 884
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v1, v4, v5

    goto :goto_1

    .line 869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getIndicatorStartPos()I
    .locals 2

    .prologue
    .line 1127
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1135
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return v0

    .line 1129
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1131
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1133
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1127
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldDrawIndicator()Z
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isViewDescendant(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAnimatingIndicator()V
    .locals 4

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getIndicatorStartPos()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorStartPos:I

    .line 1115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    .line 1116
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->startScroll(FFI)V

    .line 1118
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->animateIndicatorInvalidate()V

    .line 1119
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->closeMenu(Z)V

    .line 1010
    return-void
.end method

.method public abstract closeMenu(Z)V
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 796
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 797
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOffsetPixels:F

    float-to-int v0, v1

    .line 799
    .local v0, "offsetPixels":I
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->drawOverlay(Landroid/graphics/Canvas;)V

    .line 802
    :cond_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowEnabled:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIsStatic:Z

    if-eqz v1, :cond_1

    .line 805
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->shouldDrawIndicator()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 806
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 808
    :cond_2
    return-void
.end method

.method protected dispatchOnDrawerSlide(FI)V
    .locals 1
    .param p1, "openRatio"    # F
    .param p2, "offsetPixels"    # I

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerSlide(FI)V

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v0, :cond_1

    .line 1653
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerSlide(FI)V

    .line 1656
    :cond_1
    return-void
.end method

.method protected dpToPx(I)I
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected abstract drawOverlay(Landroid/graphics/Canvas;)V
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 1642
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setPadding(IIII)V

    .line 1645
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getAllowIndicatorAnimation()Z
    .locals 1

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    return v0
.end method

.method public getContentContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1471
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    if-nez v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    .line 1474
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getDrawOverlay()Z
    .locals 1

    .prologue
    .line 1356
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    return v0
.end method

.method public getDrawerState()I
    .locals 1

    .prologue
    .line 1199
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    return v0
.end method

.method public getDropShadow()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 2

    .prologue
    .line 1235
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1246
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    return-object v0

    .line 1237
    :pswitch_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1240
    :pswitch_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1243
    :pswitch_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1235
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMenuContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    return-object v0
.end method

.method public getMenuSize()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuSize:I

    return v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method public getOffset()F
    .locals 1

    .prologue
    .line 810
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOffsetPixels:F

    return v0
.end method

.method public abstract getOffsetMenuEnabled()Z
.end method

.method protected getPosition()Lcom/zte/mifavor/widget/overlaydrawer/Position;
    .locals 4

    .prologue
    .line 535
    invoke-static {p0}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 536
    .local v1, "layoutDirection":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 537
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 538
    sget-object v2, Lcom/zte/mifavor/widget/overlaydrawer/Position;->RIGHT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 540
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/zte/mifavor/widget/overlaydrawer/Position;->LEFT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    goto :goto_0
.end method

.method public abstract getTouchBezelSize()I
.end method

.method public abstract getTouchMode()I
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v10, -0x1000000

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 677
    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setWillNotDraw(Z)V

    .line 678
    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setFocusable(Z)V

    .line 680
    sget-object v5, Lcom/zte/extres/R$styleable;->MenuDrawer:[I

    sget v6, Lcom/zte/extres/R$attr;->menuDrawerStyle:I

    sget v7, Lcom/zte/extres/R$style;->Widget_MenuDrawer:I

    invoke-virtual {p1, p2, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 683
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdContentBackground:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 684
    .local v1, "contentBackground":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdMenuBackground:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 686
    .local v3, "menuBackground":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdMenuSize:I

    const/16 v6, 0xf0

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->dpToPx(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuSize:I

    .line 688
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdActiveIndicator:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 689
    .local v2, "indicatorResId":I
    if-eqz v2, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    .line 693
    :cond_0
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadowEnabled:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowEnabled:Z

    .line 695
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadow:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 697
    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 698
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadowColor:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowColor:I

    .line 701
    :cond_1
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadowSize:I

    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->dpToPx(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    .line 704
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdTouchBezelSize:I

    const/16 v6, 0x18

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->dpToPx(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchBezelSize:I

    .line 707
    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    .line 709
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdMaxAnimationDuration:I

    const/16 v6, 0x258

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 717
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDrawerOpenUpContentDescription:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    .line 718
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDrawerClosedUpContentDescription:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    .line 720
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDrawOverlay:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    .line 722
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdPosition:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 723
    .local v4, "position":I
    invoke-static {v4}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->fromValue(I)Lcom/zte/mifavor/widget/overlaydrawer/Position;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 725
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 727
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;

    invoke-direct {v5, p1}, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    .line 728
    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    sget v6, Lcom/zte/extres/R$id;->md__menu:I

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setId(I)V

    .line 731
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;

    invoke-direct {v5, p1}, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    .line 732
    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    sget v6, Lcom/zte/extres/R$id;->md__content:I

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setId(I)V

    .line 735
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;

    invoke-direct {v5, v10}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    .line 737
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    sget-object v6, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v5, v6}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    .line 738
    return-void
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1448
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public abstract isMenuVisible()Z
.end method

.method protected isViewDescendant(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 766
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 767
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 768
    if-ne v0, p0, :cond_0

    .line 769
    const/4 v1, 0x1

    .line 775
    :goto_1
    return v1

    .line 772
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 775
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected logDrawerState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1579
    packed-switch p1, :pswitch_data_0

    .line 1601
    :pswitch_0
    const-string v0, "MenuDrawer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DrawerState] Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :goto_0
    return-void

    .line 1581
    :pswitch_1
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_CLOSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1585
    :pswitch_2
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_CLOSING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1589
    :pswitch_3
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_DRAGGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1593
    :pswitch_4
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_OPENING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1597
    :pswitch_5
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_OPEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 780
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 781
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 782
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 787
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 788
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 742
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 743
    sget v2, Lcom/zte/extres/R$id;->mdMenu:I

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 744
    .local v1, "menu":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 745
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->removeView(Landroid/view/View;)V

    .line 746
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setMenuView(Landroid/view/View;)V

    .line 749
    :cond_0
    sget v2, Lcom/zte/extres/R$id;->mdContent:I

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 750
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->removeView(Landroid/view/View;)V

    .line 752
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setContentView(Landroid/view/View;)V

    .line 755
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 756
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Menu and content view added in xml must have id\'s @id/mdMenu and @id/mdContent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 759
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1696
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;

    .line 1697
    .local v0, "savedState":Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1699
    iget-object v1, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->restoreState(Landroid/os/Parcelable;)V

    .line 1700
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 553
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 556
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getPosition()Lcom/zte/mifavor/widget/overlaydrawer/Position;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 557
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->requestLayout()V

    .line 558
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 559
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1684
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1685
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1687
    .local v0, "state":Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1688
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->saveState(Landroid/os/Bundle;)V

    .line 1690
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    iput-object v2, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;->mState:Landroid/os/Bundle;

    .line 1691
    return-object v0
.end method

.method public openMenu()V
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->openMenu(Z)V

    .line 996
    return-void
.end method

.method public abstract openMenu(Z)V
.end method

.method public abstract peekDrawer()V
.end method

.method public abstract peekDrawer(J)V
.end method

.method public abstract peekDrawer(JJ)V
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1633
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1634
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1638
    :goto_0
    return-void

    .line 1636
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcelable;

    .prologue
    .line 1679
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "in":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1680
    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->saveState(Landroid/os/Bundle;)V

    .line 1666
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    return-object v0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1671
    return-void
.end method

.method public setActiveView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1049
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setActiveView(Landroid/view/View;I)V

    .line 1050
    return-void
.end method

.method public setActiveView(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    .line 1062
    .local v0, "oldView":Landroid/view/View;
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    .line 1063
    iput p2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivePosition:I

    .line 1065
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1066
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->startAnimatingIndicator()V

    .line 1069
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1070
    return-void
.end method

.method public setAllowIndicatorAnimation(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1078
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    if-eq p1, v0, :cond_0

    .line 1079
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    .line 1080
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->completeAnimatingIndicator()V

    .line 1082
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 1525
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    packed-switch v0, :pswitch_data_0

    .line 1535
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getPosition()Lcom/zte/mifavor/widget/overlaydrawer/Position;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 1536
    const-string v0, "guojingdong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    return-void

    .line 1527
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1528
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 1532
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    .line 1525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 1545
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1546
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1555
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    packed-switch v0, :pswitch_data_0

    .line 1565
    :goto_0
    return-void

    .line 1557
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1558
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1562
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1555
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDrawOverlay(Z)V
    .locals 0
    .param p1, "drawOverlay"    # Z

    .prologue
    .line 1347
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    .line 1348
    return-void
.end method

.method public setDrawerIndicator(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1432
    if-eqz p1, :cond_0

    .line 1433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDrawerIndicatorEnabled(Z)V

    .line 1440
    :goto_0
    return-void

    .line 1436
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDrawerIndicatorEnabled(Z)V

    .line 1437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setSlideDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-nez v0, :cond_0

    .line 1419
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setupUpIndicator(Activity) has not been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    .line 1423
    if-eqz p1, :cond_2

    .line 1424
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1429
    :goto_1
    return-void

    .line 1424
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0

    .line 1427
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mThemeUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method protected setDrawerState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1568
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    if-eq p1, v1, :cond_1

    .line 1569
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    .line 1570
    .local v0, "oldState":I
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    .line 1571
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerStateChange(II)V

    .line 1572
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerStateChange(II)V

    .line 1576
    .end local v0    # "oldState":I
    :cond_1
    return-void
.end method

.method public setDropShadow(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDropShadow(Landroid/graphics/drawable/Drawable;)V

    .line 1284
    return-void
.end method

.method public setDropShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1274
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1275
    return-void
.end method

.method public setDropShadowColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v1

    .line 1258
    .local v1, "orientation":Landroid/graphics/drawable/GradientDrawable$Orientation;
    const v2, 0xffffff

    and-int v0, p1, v2

    .line 1259
    .local v0, "endColor":I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-direct {v2, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1264
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1265
    return-void
.end method

.method public setDropShadowEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1229
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowEnabled:Z

    .line 1230
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1231
    return-void
.end method

.method public setDropShadowSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1299
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    .line 1300
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1301
    return-void
.end method

.method public setEnableMenuDrawer(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1454
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mEnableMenuDrawer:Z

    .line 1455
    return-void
.end method

.method public abstract setHardwareLayerEnabled(Z)V
.end method

.method public setIndicatorColor(Landroid/app/Activity;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "color"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 604
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 605
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;

    invoke-direct {v4, p2}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 606
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 619
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 609
    sget v3, Lcom/zte/extres/R$id;->md__background:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 610
    .local v2, "tv":Landroid/widget/LinearLayout;
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 611
    sget v3, Lcom/zte/extres/R$id;->md__splitbackground:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 613
    .local v0, "mSplitBackground":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSplitActionbarHeight:I

    invoke-static {p1, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 615
    .local v1, "mSplitLinearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    const v3, -0x1d1d1e

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setIndicatorColor(Landroid/app/Activity;ZZI)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fillActionBar"    # Z
    .param p3, "fillSplitAactionBar"    # Z
    .param p4, "color"    # I

    .prologue
    const/16 v3, 0x34

    const/4 v2, 0x0

    .line 622
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 623
    if-eqz p2, :cond_1

    .line 624
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    .line 629
    :goto_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarTabHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    .line 631
    if-eqz p3, :cond_2

    .line 632
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSplitActionbarHeight:I

    .line 637
    :goto_1
    invoke-virtual {p0, p1, p4}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setIndicatorColor(Landroid/app/Activity;I)V

    .line 639
    :cond_0
    return-void

    .line 626
    :cond_1
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    goto :goto_0

    .line 634
    :cond_2
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSplitActionbarHeight:I

    goto :goto_1
.end method

.method public setMaxAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1338
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 1339
    return-void
.end method

.method public abstract setMenuSize(I)V
.end method

.method public setMenuView(I)V
    .locals 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1485
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    .line 1486
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;)V

    .line 1487
    return-void
.end method

.method public setMenuView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 1495
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1496
    return-void
.end method

.method public setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    .line 1506
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1507
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1508
    return-void
.end method

.method public abstract setOffsetMenuEnabled(Z)V
.end method

.method public setOnDrawerStateChangeArrowListener(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .line 1213
    return-void
.end method

.method public setOnDrawerStateChangeListener(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .line 1209
    return-void
.end method

.method public setOnInterceptMoveEventListener(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnInterceptMoveEventListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

    .line 1221
    return-void
.end method

.method public setSlideDrawable(I)V
    .locals 1
    .param p1, "drawableRes"    # I

    .prologue
    .line 1373
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setSlideDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1374
    return-void
.end method

.method public setSlideDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1382
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    .line 1384
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setDisplayShowHomeAsUpEnabled(Z)V

    .line 1387
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1392
    :cond_0
    return-void

    .line 1388
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0
.end method

.method public abstract setTouchBezelSize(I)V
.end method

.method public abstract setTouchMode(I)V
.end method

.method public setupUpIndicator(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-nez v0, :cond_0

    .line 1401
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    .line 1402
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mThemeUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1404
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 1405
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1409
    :cond_0
    return-void

    .line 1405
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0
.end method

.method public toggleMenu()V
    .locals 1

    .prologue
    .line 977
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->toggleMenu(Z)V

    .line 978
    return-void
.end method

.method public abstract toggleMenu(Z)V
.end method

.method protected updateDropShadowRect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 828
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 857
    :goto_0
    return-void

    .line 830
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 831
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 832
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 833
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 837
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 838
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 839
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 840
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 844
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 845
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 846
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 847
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 851
    :pswitch_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 852
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 853
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 854
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected updateIndicatorClipRect()V
    .locals 17

    .prologue
    .line 896
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 899
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIsStatic:Z

    if-eqz v14, :cond_0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 901
    .local v10, "openRatio":F
    :goto_0
    const/high16 v14, 0x3f800000    # 1.0f

    sget-object v15, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v10

    invoke-interface/range {v15 .. v16}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    sub-float v7, v14, v15

    .line 903
    .local v7, "interpolatedRatio":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 904
    .local v5, "indicatorWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 906
    .local v4, "indicatorHeight":I
    int-to-float v14, v5

    mul-float/2addr v14, v7

    float-to-int v8, v14

    .line 907
    .local v8, "interpolatedWidth":I
    int-to-float v14, v4

    mul-float/2addr v14, v7

    float-to-int v6, v14

    .line 909
    .local v6, "interpolatedHeight":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorStartPos:I

    .line 911
    .local v12, "startPos":I
    const/4 v9, 0x0

    .line 912
    .local v9, "left":I
    const/4 v13, 0x0

    .line 913
    .local v13, "top":I
    const/4 v11, 0x0

    .line 914
    .local v11, "right":I
    const/4 v1, 0x0

    .line 915
    .local v1, "bottom":I
    sget-object v14, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v15}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 939
    :goto_1
    sget-object v14, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v15}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_1

    .line 965
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v9, v14, Landroid/graphics/Rect;->left:I

    .line 966
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v13, v14, Landroid/graphics/Rect;->top:I

    .line 968
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v11, v14, Landroid/graphics/Rect;->right:I

    .line 969
    const-string v14, "guojingdong"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mIndicatorClipRect.right="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v1, v14, Landroid/graphics/Rect;->bottom:I

    .line 971
    return-void

    .line 899
    .end local v1    # "bottom":I
    .end local v4    # "indicatorHeight":I
    .end local v5    # "indicatorWidth":I
    .end local v6    # "interpolatedHeight":I
    .end local v7    # "interpolatedRatio":F
    .end local v8    # "interpolatedWidth":I
    .end local v9    # "left":I
    .end local v10    # "openRatio":F
    .end local v11    # "right":I
    .end local v12    # "startPos":I
    .end local v13    # "top":I
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOffsetPixels:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuSize:I

    int-to-float v15, v15

    div-float v10, v14, v15

    goto/16 :goto_0

    .line 918
    .restart local v1    # "bottom":I
    .restart local v4    # "indicatorHeight":I
    .restart local v5    # "indicatorWidth":I
    .restart local v6    # "interpolatedHeight":I
    .restart local v7    # "interpolatedRatio":F
    .restart local v8    # "interpolatedWidth":I
    .restart local v9    # "left":I
    .restart local v10    # "openRatio":F
    .restart local v11    # "right":I
    .restart local v12    # "startPos":I
    .restart local v13    # "top":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    sub-int/2addr v15, v4

    div-int/lit8 v15, v15, 0x2

    add-int v3, v14, v15

    .line 919
    .local v3, "finalTop":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    if-eqz v14, :cond_1

    .line 920
    int-to-float v14, v12

    sub-int v15, v3, v12

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v13, v14

    .line 924
    :goto_3
    add-int v1, v13, v4

    .line 925
    goto/16 :goto_1

    .line 922
    :cond_1
    move v13, v3

    goto :goto_3

    .line 929
    .end local v3    # "finalTop":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    sub-int/2addr v15, v5

    div-int/lit8 v15, v15, 0x2

    add-int v2, v14, v15

    .line 930
    .local v2, "finalLeft":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    if-eqz v14, :cond_2

    .line 931
    int-to-float v14, v12

    sub-int v15, v2, v12

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v9, v14

    .line 935
    :goto_4
    add-int v11, v9, v5

    goto/16 :goto_1

    .line 933
    :cond_2
    move v9, v2

    goto :goto_4

    .line 941
    .end local v2    # "finalLeft":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v11

    .line 942
    sub-int v9, v11, v8

    .line 943
    goto/16 :goto_2

    .line 947
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v1

    .line 948
    sub-int v13, v1, v6

    .line 949
    goto/16 :goto_2

    .line 953
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v9

    .line 954
    add-int v11, v9, v8

    .line 955
    goto/16 :goto_2

    .line 959
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v13

    .line 960
    add-int v1, v13, v6

    goto/16 :goto_2

    .line 915
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 939
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected updateTouchAreaSize()V
    .locals 2

    .prologue
    .line 1143
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1144
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchBezelSize:I

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchSize:I

    .line 1150
    :goto_0
    return-void

    .line 1145
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1146
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchSize:I

    goto :goto_0

    .line 1148
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchSize:I

    goto :goto_0
.end method

.method protected updateUpContentDescription()V
    .locals 2

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    .line 1361
    .local v0, "upContentDesc":I
    :goto_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mCurrentUpContentDesc:I

    if-eq v0, v1, :cond_0

    .line 1362
    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mCurrentUpContentDesc:I

    .line 1363
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarDescription(I)V

    .line 1365
    :cond_0
    return-void

    .line 1360
    .end local v0    # "upContentDesc":I
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0
.end method
