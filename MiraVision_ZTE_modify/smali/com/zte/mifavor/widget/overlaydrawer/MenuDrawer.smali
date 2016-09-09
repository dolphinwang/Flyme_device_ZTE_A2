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
    .line 191
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/SmoothInterpolator;

    invoke-direct {v0}, Lcom/zte/mifavor/widget/overlaydrawer/SmoothInterpolator;-><init>()V

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 196
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
    .line 622
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    .line 624
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    .line 625
    iput p2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    .line 626
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 630
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 633
    sget v0, Lcom/zte/extres/R$attr;->menuDrawerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 634
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

    .line 637
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 247
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTempRect:Landroid/graphics/Rect;

    .line 284
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    .line 295
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    .line 318
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchMode:I

    .line 323
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mHardwareLayersEnabled:Z

    .line 335
    iput-boolean v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mEnableMenuDrawer:Z

    .line 340
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$1;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorRunnable:Ljava/lang/Runnable;

    .line 370
    const/16 v0, 0x258

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 396
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    .line 400
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    .line 411
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->INDICATOR_HEIGHT:I

    .line 412
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->ACTIONBAR_HEIGHT:I

    .line 413
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 414
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    .line 415
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarTabHeight:I

    .line 416
    iput v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSplitActionbarHeight:I

    .line 417
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SPLIT_ACTIONBAR_COLOR:I

    .line 1061
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$2;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 638
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 639
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->animateIndicatorInvalidate()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .prologue
    .line 38
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
    .line 1122
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->getCurr()F

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    .line 1124
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1126
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1133
    :goto_0
    return-void

    .line 1132
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->completeAnimatingIndicator()V

    goto :goto_0
.end method

.method public static attach(Landroid/app/Activity;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 426
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
    .line 437
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
    .line 460
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
    .line 474
    invoke-static {p0, p3, p2, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->createMenuDrawer(Landroid/app/Activity;ILcom/zte/mifavor/widget/overlaydrawer/Position;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    move-result-object v0

    .line 475
    .local v0, "menuDrawer":Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    sget v1, Lcom/zte/extres/R$id;->md__drawer:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setId(I)V

    .line 477
    packed-switch p3, :pswitch_data_0

    .line 487
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

    .line 479
    :pswitch_0
    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attachToContent(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    .line 490
    :goto_0
    return-object v0

    .line 483
    :pswitch_1
    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->attachToDecor(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V

    goto :goto_0

    .line 477
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
    .line 448
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

    .line 536
    const v5, 0x1020002

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 537
    .local v0, "content":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 538
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 539
    invoke-virtual {v0, p1, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 566
    :goto_0
    return-void

    .line 541
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 542
    .local v1, "mBackground":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 543
    .local v2, "mSplitBackground":Landroid/widget/LinearLayout;
    sget v5, Lcom/zte/extres/R$id;->md__background:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 544
    sget v5, Lcom/zte/extres/R$id;->md__splitbackground:I

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 546
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 547
    .local v3, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 548
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x4d

    invoke-static {p0, v6}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v8, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 556
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 557
    .local v4, "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 559
    .end local v4    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 562
    invoke-virtual {v0, v3, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private static attachToDecor(Landroid/app/Activity;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "menuDrawer"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;

    .prologue
    const/4 v3, -0x1

    .line 612
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 613
    .local v1, "decorView":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 615
    .local v0, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 616
    invoke-virtual {v1, p1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 618
    iget-object v2, p1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    return-void
.end method

.method private completeAnimatingIndicator()V
    .locals 1

    .prologue
    .line 1139
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    .line 1140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    .line 1141
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1142
    return-void
.end method

.method private static createMenuDrawer(Landroid/app/Activity;ILcom/zte/mifavor/widget/overlaydrawer/Position;Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;)Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragMode"    # I
    .param p2, "position"    # Lcom/zte/mifavor/widget/overlaydrawer/Position;
    .param p3, "type"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    .prologue
    .line 502
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;

    invoke-direct {v0, p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;-><init>(Landroid/app/Activity;I)V

    .line 504
    .local v0, "drawer":Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;
    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setupUpIndicator(Landroid/app/Activity;)V

    .line 505
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->setDrawerIndicatorEnabled(Z)V

    .line 507
    new-instance v1, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;

    invoke-direct {v1, v0, p0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;-><init>(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;Landroid/app/Activity;)V

    .line 520
    .local v1, "drawerarrwer":Lcom/zte/mifavor/widget/overlaydrawer/ActionBarDrawerToggle;
    iput p1, v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mDragMode:I

    .line 521
    iput-object p2, v0, Lcom/zte/mifavor/widget/overlaydrawer/OverlayDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 524
    return-object v0
.end method

.method private drawDropShadow(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 783
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowColor:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDropShadowColor(I)V

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->updateDropShadowRect()V

    .line 787
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 788
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 789
    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 825
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    sget v5, Lcom/zte/extres/R$id;->mdActiveViewPosition:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 826
    .local v3, "position":Ljava/lang/Integer;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 827
    .local v2, "pos":I
    :goto_0
    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivePosition:I

    if-ne v2, v4, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->updateIndicatorClipRect()V

    .line 829
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 830
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, "drawLeft":I
    const/4 v1, 0x0

    .line 834
    .local v1, "drawTop":I
    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 852
    :goto_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    int-to-float v6, v1

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 853
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 855
    .end local v0    # "drawLeft":I
    .end local v1    # "drawTop":I
    :cond_0
    return-void

    .line 826
    .end local v2    # "pos":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 837
    .restart local v0    # "drawLeft":I
    .restart local v1    # "drawTop":I
    .restart local v2    # "pos":I
    :pswitch_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 838
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 839
    goto :goto_1

    .line 842
    :pswitch_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v0, v4, v5

    .line 843
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    .line 844
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    .line 845
    goto :goto_1

    .line 848
    :pswitch_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 849
    iget-object v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v1, v4, v5

    goto :goto_1

    .line 834
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
    .line 1092
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1100
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return v0

    .line 1094
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1096
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1098
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1092
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
    .line 756
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
    .line 1079
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getIndicatorStartPos()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorStartPos:I

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    .line 1081
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;->startScroll(FFI)V

    .line 1083
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->animateIndicatorInvalidate()V

    .line 1084
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .prologue
    .line 974
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->closeMenu(Z)V

    .line 975
    return-void
.end method

.method public abstract closeMenu(Z)V
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 761
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 762
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOffsetPixels:F

    float-to-int v0, v1

    .line 764
    .local v0, "offsetPixels":I
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->drawOverlay(Landroid/graphics/Canvas;)V

    .line 767
    :cond_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowEnabled:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIsStatic:Z

    if-eqz v1, :cond_1

    .line 770
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->shouldDrawIndicator()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 771
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 773
    :cond_2
    return-void
.end method

.method protected dispatchOnDrawerSlide(FI)V
    .locals 1
    .param p1, "openRatio"    # F
    .param p2, "offsetPixels"    # I

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerSlide(FI)V

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v0, :cond_1

    .line 1616
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerSlide(FI)V

    .line 1619
    :cond_1
    return-void
.end method

.method protected dpToPx(I)I
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 727
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

    .line 1605
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setPadding(IIII)V

    .line 1608
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getAllowIndicatorAnimation()Z
    .locals 1

    .prologue
    .line 1055
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    return v0
.end method

.method public getContentContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1436
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    if-nez v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    .line 1439
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
    .line 1321
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    return v0
.end method

.method public getDrawerState()I
    .locals 1

    .prologue
    .line 1164
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    return v0
.end method

.method public getDropShadow()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 2

    .prologue
    .line 1200
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1211
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    return-object v0

    .line 1202
    :pswitch_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1205
    :pswitch_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1208
    :pswitch_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 1200
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
    .line 1427
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    return-object v0
.end method

.method public getMenuSize()I
    .locals 1

    .prologue
    .line 1004
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuSize:I

    return v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    return-object v0
.end method

.method public getOffset()F
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOffsetPixels:F

    return v0
.end method

.method public abstract getOffsetMenuEnabled()Z
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

    .line 642
    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setWillNotDraw(Z)V

    .line 643
    invoke-virtual {p0, v8}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setFocusable(Z)V

    .line 645
    sget-object v5, Lcom/zte/extres/R$styleable;->MenuDrawer:[I

    sget v6, Lcom/zte/extres/R$attr;->menuDrawerStyle:I

    sget v7, Lcom/zte/extres/R$style;->Widget_MenuDrawer:I

    invoke-virtual {p1, p2, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 648
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdContentBackground:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 649
    .local v1, "contentBackground":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdMenuBackground:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 651
    .local v3, "menuBackground":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdMenuSize:I

    const/16 v6, 0xf0

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->dpToPx(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuSize:I

    .line 653
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdActiveIndicator:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 654
    .local v2, "indicatorResId":I
    if-eqz v2, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    .line 658
    :cond_0
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadowEnabled:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowEnabled:Z

    .line 660
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadow:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 662
    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 663
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadowColor:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowColor:I

    .line 666
    :cond_1
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDropShadowSize:I

    const/4 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->dpToPx(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    .line 669
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdTouchBezelSize:I

    const/16 v6, 0x18

    invoke-virtual {p0, v6}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->dpToPx(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchBezelSize:I

    .line 672
    iput-boolean v9, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    .line 674
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdMaxAnimationDuration:I

    const/16 v6, 0x258

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 682
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDrawerOpenUpContentDescription:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    .line 683
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDrawerClosedUpContentDescription:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    .line 685
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdDrawOverlay:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    .line 687
    sget v5, Lcom/zte/extres/R$styleable;->MenuDrawer_mdPosition:I

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 688
    .local v4, "position":I
    invoke-static {v4}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->fromValue(I)Lcom/zte/mifavor/widget/overlaydrawer/Position;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 690
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 692
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;

    invoke-direct {v5, p1}, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    .line 693
    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    sget v6, Lcom/zte/extres/R$id;->md__menu:I

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setId(I)V

    .line 696
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;

    invoke-direct {v5, p1}, Lcom/zte/mifavor/widget/overlaydrawer/NoClickThroughFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    .line 697
    iget-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    sget v6, Lcom/zte/extres/R$id;->md__content:I

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->setId(I)V

    .line 700
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;

    invoke-direct {v5, v10}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    .line 702
    new-instance v5, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    sget-object v6, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->SMOOTH_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v5, v6}, Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorScroller:Lcom/zte/mifavor/widget/overlaydrawer/FloatScroller;

    .line 703
    return-void
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 1413
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public abstract isMenuVisible()Z
.end method

.method protected isViewDescendant(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 731
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 732
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 733
    if-ne v0, p0, :cond_0

    .line 734
    const/4 v1, 0x1

    .line 740
    :goto_1
    return v1

    .line 737
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 740
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected logDrawerState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1542
    packed-switch p1, :pswitch_data_0

    .line 1564
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

    .line 1566
    :goto_0
    return-void

    .line 1544
    :pswitch_1
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_CLOSED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1548
    :pswitch_2
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_CLOSING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1552
    :pswitch_3
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_DRAGGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1556
    :pswitch_4
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_OPENING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1560
    :pswitch_5
    const-string v0, "MenuDrawer"

    const-string v1, "[DrawerState] STATE_OPEN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1542
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
    .line 745
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 746
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 747
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 752
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 753
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 707
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 708
    sget v2, Lcom/zte/extres/R$id;->mdMenu:I

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 709
    .local v1, "menu":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 710
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->removeView(Landroid/view/View;)V

    .line 711
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setMenuView(Landroid/view/View;)V

    .line 714
    :cond_0
    sget v2, Lcom/zte/extres/R$id;->mdContent:I

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 715
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 716
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->removeView(Landroid/view/View;)V

    .line 717
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setContentView(Landroid/view/View;)V

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 721
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Menu and content view added in xml must have id\'s @id/mdMenu and @id/mdContent"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 724
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1659
    move-object v0, p1

    check-cast v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;

    .line 1660
    .local v0, "savedState":Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1662
    iget-object v1, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->restoreState(Landroid/os/Parcelable;)V

    .line 1663
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1647
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1648
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1650
    .local v0, "state":Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1651
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->saveState(Landroid/os/Bundle;)V

    .line 1653
    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    iput-object v2, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$SavedState;->mState:Landroid/os/Bundle;

    .line 1654
    return-object v0
.end method

.method public openMenu()V
    .locals 1

    .prologue
    .line 960
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->openMenu(Z)V

    .line 961
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
    .line 1596
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1597
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1601
    :goto_0
    return-void

    .line 1599
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcelable;

    .prologue
    .line 1642
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "in":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1643
    return-void
.end method

.method public final saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->saveState(Landroid/os/Bundle;)V

    .line 1629
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mState:Landroid/os/Bundle;

    return-object v0
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1634
    return-void
.end method

.method public setActiveView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1014
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setActiveView(Landroid/view/View;I)V

    .line 1015
    return-void
.end method

.method public setActiveView(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    .line 1027
    .local v0, "oldView":Landroid/view/View;
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    .line 1028
    iput p2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivePosition:I

    .line 1030
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1031
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->startAnimatingIndicator()V

    .line 1034
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1035
    return-void
.end method

.method public setAllowIndicatorAnimation(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    if-eq p1, v0, :cond_0

    .line 1044
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mAllowIndicatorAnimation:Z

    .line 1045
    invoke-direct {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->completeAnimatingIndicator()V

    .line 1047
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 1490
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    packed-switch v0, :pswitch_data_0

    .line 1500
    :goto_0
    return-void

    .line 1492
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1493
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 1497
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    .line 1490
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

    .line 1508
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1509
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1518
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDragMode:I

    packed-switch v0, :pswitch_data_0

    .line 1528
    :goto_0
    return-void

    .line 1520
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1521
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1525
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1518
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
    .line 1312
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawOverlay:Z

    .line 1313
    return-void
.end method

.method public setDrawerIndicator(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1397
    if-eqz p1, :cond_0

    .line 1398
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDrawerIndicatorEnabled(Z)V

    .line 1405
    :goto_0
    return-void

    .line 1401
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDrawerIndicatorEnabled(Z)V

    .line 1402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setSlideDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-nez v0, :cond_0

    .line 1384
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setupUpIndicator(Activity) has not been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1387
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    .line 1388
    if-eqz p1, :cond_2

    .line 1389
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1394
    :goto_1
    return-void

    .line 1389
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0

    .line 1392
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
    .line 1531
    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    if-eq p1, v1, :cond_1

    .line 1532
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    .line 1533
    .local v0, "oldState":I
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerState:I

    .line 1534
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerStateChange(II)V

    .line 1535
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    invoke-interface {v1, v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;->onDrawerStateChange(II)V

    .line 1539
    .end local v0    # "oldState":I
    :cond_1
    return-void
.end method

.method public setDropShadow(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1248
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setDropShadow(Landroid/graphics/drawable/Drawable;)V

    .line 1249
    return-void
.end method

.method public setDropShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 1239
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1240
    return-void
.end method

.method public setDropShadowColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getDropShadowOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v1

    .line 1223
    .local v1, "orientation":Landroid/graphics/drawable/GradientDrawable$Orientation;
    const v2, 0xffffff

    and-int v0, p1, v2

    .line 1224
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

    .line 1229
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1230
    return-void
.end method

.method public setDropShadowEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1194
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowEnabled:Z

    .line 1195
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1196
    return-void
.end method

.method public setDropShadowSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1264
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    .line 1265
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->invalidate()V

    .line 1266
    return-void
.end method

.method public setEnableMenuDrawer(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1419
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mEnableMenuDrawer:Z

    .line 1420
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
    .line 571
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 572
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;

    invoke-direct {v4, p2}, Lcom/zte/mifavor/widget/overlaydrawer/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 573
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 586
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 576
    sget v3, Lcom/zte/extres/R$id;->md__background:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 577
    .local v2, "tv":Landroid/widget/LinearLayout;
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 578
    sget v3, Lcom/zte/extres/R$id;->md__splitbackground:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 580
    .local v0, "mSplitBackground":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSplitActionbarHeight:I

    invoke-static {p1, v4}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 582
    .local v1, "mSplitLinearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
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

    .line 589
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 590
    if-eqz p2, :cond_1

    .line 591
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    .line 596
    :goto_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarTabHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    .line 598
    if-eqz p3, :cond_2

    .line 599
    iput v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSplitActionbarHeight:I

    .line 604
    :goto_1
    invoke-virtual {p0, p1, p4}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setIndicatorColor(Landroid/app/Activity;I)V

    .line 606
    :cond_0
    return-void

    .line 593
    :cond_1
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionbarHeight:I

    goto :goto_0

    .line 601
    :cond_2
    iput v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSplitActionbarHeight:I

    goto :goto_1
.end method

.method public setMaxAnimationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 1303
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMaxAnimationDuration:I

    .line 1304
    return-void
.end method

.method public abstract setMenuSize(I)V
.end method

.method public setMenuView(I)V
    .locals 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1450
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    .line 1451
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;)V

    .line 1452
    return-void
.end method

.method public setMenuView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 1460
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1461
    return-void
.end method

.method public setMenuView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuView:Landroid/view/View;

    .line 1471
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->removeAllViews()V

    .line 1472
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mMenuContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1473
    return-void
.end method

.method public abstract setOffsetMenuEnabled(Z)V
.end method

.method public setOnDrawerStateChangeArrowListener(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeArrowListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .line 1178
    return-void
.end method

.method public setOnDrawerStateChangeListener(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnDrawerStateChangeListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnDrawerStateChangeListener;

    .line 1174
    return-void
.end method

.method public setOnInterceptMoveEventListener(Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mOnInterceptMoveEventListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$OnInterceptMoveEventListener;

    .line 1186
    return-void
.end method

.method public setSlideDrawable(I)V
    .locals 1
    .param p1, "drawableRes"    # I

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->setSlideDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1339
    return-void
.end method

.method public setSlideDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1347
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    .line 1349
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setDisplayShowHomeAsUpEnabled(Z)V

    .line 1352
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 1353
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1357
    :cond_0
    return-void

    .line 1353
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
    .line 1365
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-nez v0, :cond_0

    .line 1366
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    .line 1367
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mThemeUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 1369
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 1370
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    iget-object v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mSlideDrawable:Lcom/zte/mifavor/widget/overlaydrawer/SlideDrawable;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 1374
    :cond_0
    return-void

    .line 1370
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0
.end method

.method public toggleMenu()V
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->toggleMenu(Z)V

    .line 943
    return-void
.end method

.method public abstract toggleMenu(Z)V
.end method

.method protected updateDropShadowRect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 793
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 822
    :goto_0
    return-void

    .line 795
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 796
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 797
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 798
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 802
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 803
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 804
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 805
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 809
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 810
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 811
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 812
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 816
    :pswitch_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 817
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 818
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v1}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 819
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDropShadowSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 793
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
    .line 861
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 864
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIsStatic:Z

    if-eqz v14, :cond_0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 866
    .local v10, "openRatio":F
    :goto_0
    const/high16 v14, 0x3f800000    # 1.0f

    sget-object v15, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v10

    invoke-interface/range {v15 .. v16}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    sub-float v7, v14, v15

    .line 868
    .local v7, "interpolatedRatio":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 869
    .local v5, "indicatorWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 871
    .local v4, "indicatorHeight":I
    int-to-float v14, v5

    mul-float/2addr v14, v7

    float-to-int v8, v14

    .line 872
    .local v8, "interpolatedWidth":I
    int-to-float v14, v4

    mul-float/2addr v14, v7

    float-to-int v6, v14

    .line 874
    .local v6, "interpolatedHeight":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorStartPos:I

    .line 876
    .local v12, "startPos":I
    const/4 v9, 0x0

    .line 877
    .local v9, "left":I
    const/4 v13, 0x0

    .line 878
    .local v13, "top":I
    const/4 v11, 0x0

    .line 879
    .local v11, "right":I
    const/4 v1, 0x0

    .line 880
    .local v1, "bottom":I
    sget-object v14, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v15}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 904
    :goto_1
    sget-object v14, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$3;->$SwitchMap$com$zte$mifavor$widget$overlaydrawer$Position:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mPosition:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v15}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_1

    .line 930
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v9, v14, Landroid/graphics/Rect;->left:I

    .line 931
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v13, v14, Landroid/graphics/Rect;->top:I

    .line 933
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v11, v14, Landroid/graphics/Rect;->right:I

    .line 934
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

    .line 935
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorClipRect:Landroid/graphics/Rect;

    iput v1, v14, Landroid/graphics/Rect;->bottom:I

    .line 936
    return-void

    .line 864
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

    .line 883
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

    .line 884
    .local v3, "finalTop":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    if-eqz v14, :cond_1

    .line 885
    int-to-float v14, v12

    sub-int v15, v3, v12

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v13, v14

    .line 889
    :goto_3
    add-int v1, v13, v4

    .line 890
    goto/16 :goto_1

    .line 887
    :cond_1
    move v13, v3

    goto :goto_3

    .line 894
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

    .line 895
    .local v2, "finalLeft":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorAnimating:Z

    if-eqz v14, :cond_2

    .line 896
    int-to-float v14, v12

    sub-int v15, v2, v12

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mIndicatorOffset:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-int v9, v14

    .line 900
    :goto_4
    add-int v11, v9, v5

    goto/16 :goto_1

    .line 898
    :cond_2
    move v9, v2

    goto :goto_4

    .line 906
    .end local v2    # "finalLeft":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getLeft(Landroid/view/View;)I

    move-result v11

    .line 907
    sub-int v9, v11, v8

    .line 908
    goto/16 :goto_2

    .line 912
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getTop(Landroid/view/View;)I

    move-result v1

    .line 913
    sub-int v13, v1, v6

    .line 914
    goto/16 :goto_2

    .line 918
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getRight(Landroid/view/View;)I

    move-result v9

    .line 919
    add-int v11, v9, v8

    .line 920
    goto/16 :goto_2

    .line 924
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mContentContainer:Lcom/zte/mifavor/widget/overlaydrawer/BuildLayerFrameLayout;

    invoke-static {v14}, Lcom/zte/mifavor/widget/overlaydrawer/ViewHelper;->getBottom(Landroid/view/View;)I

    move-result v13

    .line 925
    add-int v1, v13, v6

    goto/16 :goto_2

    .line 880
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 904
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
    .line 1108
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1109
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchBezelSize:I

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchSize:I

    .line 1115
    :goto_0
    return-void

    .line 1110
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1111
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchSize:I

    goto :goto_0

    .line 1113
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mTouchSize:I

    goto :goto_0
.end method

.method protected updateUpContentDescription()V
    .locals 2

    .prologue
    .line 1325
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->isMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerOpenContentDesc:I

    .line 1326
    .local v0, "upContentDesc":I
    :goto_0
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerIndicatorEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mCurrentUpContentDesc:I

    if-eq v0, v1, :cond_0

    .line 1327
    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mCurrentUpContentDesc:I

    .line 1328
    iget-object v1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mActionBarHelper:Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/overlaydrawer/ActionBarHelper;->setActionBarDescription(I)V

    .line 1330
    :cond_0
    return-void

    .line 1325
    .end local v0    # "upContentDesc":I
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;->mDrawerClosedContentDesc:I

    goto :goto_0
.end method
