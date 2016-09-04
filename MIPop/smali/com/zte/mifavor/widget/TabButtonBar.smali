.class public Lcom/zte/mifavor/widget/TabButtonBar;
.super Landroid/view/ViewGroup;
.source "TabButtonBar.java"

# interfaces
.implements Lcom/zte/mifavor/widget/onMenuEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;,
        Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;,
        Lcom/zte/mifavor/widget/TabButtonBar$SavedState;,
        Lcom/zte/mifavor/widget/TabButtonBar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TabButtonBar"


# instance fields
.field private mActionColor:I

.field private mActionFlag:I

.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mCurrentMode:I

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroid/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonStyle:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mNavColor:I

.field private mOnMenuItemClickListener:Lcom/zte/mifavor/widget/TabButtonBar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mSelelctButtonView:Landroid/widget/ImageButton;

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleColor:I

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/TabButtonBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 287
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/TabButtonBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    iput v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mActionFlag:I

    .line 81
    iput v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mActionColor:I

    .line 82
    iput v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCurrentMode:I

    .line 111
    const v1, 0x800013

    iput v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mGravity:I

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTempViews:Ljava/util/ArrayList;

    .line 126
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTempMargins:[I

    .line 130
    new-instance v1, Lcom/zte/mifavor/widget/TabButtonBar$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/TabButtonBar$1;-><init>(Lcom/zte/mifavor/widget/TabButtonBar;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 149
    new-instance v1, Lcom/zte/mifavor/widget/TabButtonBar$2;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/TabButtonBar$2;-><init>(Lcom/zte/mifavor/widget/TabButtonBar;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 295
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$color;->mfv_common_acb_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/TabButtonBar;->setActionMenuColor(I)V

    .line 296
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$color;->mfv_common_acb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/TabButtonBar;->setBackgroundColor(I)V

    .line 297
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$dimen;->actionbar_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 298
    .local v0, "elevation":I
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/TabButtonBar;->setElevation(F)V

    .line 299
    instance-of v1, p1, Lcom/zte/mifavor/widget/MenuRigister;

    if-eqz v1, :cond_0

    .line 301
    check-cast p1, Lcom/zte/mifavor/widget/MenuRigister;

    .end local p1    # "context":Landroid/content/Context;
    invoke-interface {p1, p0}, Lcom/zte/mifavor/widget/MenuRigister;->registerMenuEvent(Lcom/zte/mifavor/widget/onMenuEvent;)V

    .line 304
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/TabButtonBar;)Lcom/zte/mifavor/widget/TabButtonBar$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TabButtonBar;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mOnMenuItemClickListener:Lcom/zte/mifavor/widget/TabButtonBar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/TabButtonBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TabButtonBar;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/TabButtonBar;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/TabButtonBar;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private addSystemView(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 576
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const-string v1, "TabButtonBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vlp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    return-void
.end method

.method private ensureCollapseButtonView()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 549
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 550
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonStyle:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 551
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    new-instance v0, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    invoke-direct {v0, v6, v6}, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;-><init>(II)V

    .line 555
    .local v0, "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Lcom/zte/mifavor/widget/TabButtonBar$3;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/TabButtonBar$3;-><init>(Lcom/zte/mifavor/widget/TabButtonBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    .end local v0    # "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->ensureMenuView()V

    .line 422
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 425
    .local v0, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 426
    new-instance v1, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;-><init>(Lcom/zte/mifavor/widget/TabButtonBar;Lcom/zte/mifavor/widget/TabButtonBar$1;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 429
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 431
    .end local v0    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 434
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v1, :cond_0

    .line 435
    new-instance v1, Landroid/widget/ActionMenuView;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    .line 436
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    iget v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    .line 437
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 438
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iget-object v3, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 439
    new-instance v0, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    invoke-direct {v0, v4, v4}, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;-><init>(II)V

    .line 440
    .local v0, "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    iget v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->gravity:I

    .line 442
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/TabButtonBar;->addSystemView(Landroid/view/View;)V

    .line 445
    .end local v0    # "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 4

    .prologue
    .line 216
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 217
    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 218
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    sget v3, Lcom/zte/extres/R$drawable;->ic_ab_back_material:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 219
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 220
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 222
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->generateDefaultLayoutParams()Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    move-result-object v1

    .line 223
    .local v1, "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    const v2, 0x800003

    iget v3, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mButtonGravity:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, v1, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->gravity:I

    .line 224
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/TabButtonBar;->addSystemView(Landroid/view/View;)V

    .line 237
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/TabButtonBar;->addSystemView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private ensureSelectButtonView()V
    .locals 4

    .prologue
    .line 258
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 259
    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    .line 260
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    sget v3, Lcom/zte/extres/R$drawable;->done_all:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 261
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 262
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 263
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 264
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->generateDefaultLayoutParams()Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    move-result-object v1

    .line 265
    .local v1, "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    const v2, 0x800003

    iget v3, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mButtonGravity:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, v1, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->gravity:I

    .line 266
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/TabButtonBar;->addSystemView(Landroid/view/View;)V

    .line 271
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/TabButtonBar;->addSystemView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private ensureTitleView()V
    .locals 4

    .prologue
    .line 239
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    .line 242
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 244
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    const v3, 0x1030222

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 245
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_acb_txt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleColor:I

    .line 246
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 248
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->generateDefaultLayoutParams()Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    move-result-object v1

    .line 249
    .local v1, "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/TabButtonBar;->addSystemView(Landroid/view/View;)V

    .line 256
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_acb_txt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleColor:I

    .line 253
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/zte/mifavor/widget/TabButtonBar;->addSystemView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .prologue
    const/4 v9, 0x0

    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    .line 486
    .local v3, "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 487
    .local v1, "childHeight":I
    if-lez p2, :cond_1

    sub-int v10, v1, p2

    div-int/lit8 v0, v10, 0x2

    .line 488
    .local v0, "alignmentOffset":I
    :goto_0
    iget v10, v3, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->gravity:I

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/TabButtonBar;->getChildVerticalGravity(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 498
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getPaddingTop()I

    move-result v5

    .line 499
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getPaddingBottom()I

    move-result v4

    .line 500
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getHeight()I

    move-result v2

    .line 501
    .local v2, "height":I
    sub-int v10, v2, v5

    sub-int v6, v10, v4

    .line 502
    .local v6, "space":I
    sub-int v10, v6, v1

    div-int/lit8 v7, v10, 0x2

    .line 503
    .local v7, "spaceAbove":I
    iget v10, v3, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->topMargin:I

    if-ge v7, v10, :cond_2

    .line 504
    iget v7, v3, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->topMargin:I

    .line 512
    :cond_0
    :goto_1
    add-int v9, v5, v7

    .end local v2    # "height":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    .end local v6    # "space":I
    .end local v7    # "spaceAbove":I
    :goto_2
    return v9

    .end local v0    # "alignmentOffset":I
    :cond_1
    move v0, v9

    .line 487
    goto :goto_0

    .line 490
    .restart local v0    # "alignmentOffset":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v9, v0

    goto :goto_2

    .line 493
    :sswitch_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iget v10, v3, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    goto :goto_2

    .line 506
    .restart local v2    # "height":I
    .restart local v4    # "paddingBottom":I
    .restart local v5    # "paddingTop":I
    .restart local v6    # "space":I
    .restart local v7    # "spaceAbove":I
    :cond_2
    sub-int v10, v2, v4

    sub-int/2addr v10, v1

    sub-int/2addr v10, v7

    sub-int v8, v10, v5

    .line 508
    .local v8, "spaceBelow":I
    iget v10, v3, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->bottomMargin:I

    if-ge v8, v10, :cond_0

    .line 509
    iget v10, v3, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v8

    sub-int v10, v7, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    .line 488
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 474
    and-int/lit8 v0, p1, 0x70

    .line 475
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    .line 481
    iget v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mGravity:I

    and-int/lit8 v0, v1, 0x70

    .end local v0    # "vgrav":I
    :sswitch_0
    return v0

    .line 475
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 821
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 822
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 516
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 826
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 827
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    .line 449
    .local v2, "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    iget v4, v2, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->leftMargin:I

    aget v5, p3, v6

    sub-int v1, v4, v5

    .line 450
    .local v1, "l":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr p2, v4

    .line 451
    neg-int v4, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v6

    .line 452
    invoke-direct {p0, p1, p4}, Lcom/zte/mifavor/widget/TabButtonBar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 453
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 454
    .local v0, "childWidth":I
    add-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 455
    iget v4, v2, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr p2, v4

    .line 456
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    .line 462
    .local v1, "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    iget v4, v1, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->rightMargin:I

    aget v5, p3, v7

    sub-int v2, v4, v5

    .line 463
    .local v2, "r":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 464
    neg-int v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v7

    .line 465
    invoke-direct {p0, p1, p4}, Lcom/zte/mifavor/widget/TabButtonBar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 466
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 467
    .local v0, "childWidth":I
    const-string v4, "guojingdong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "right - childWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "top="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "right="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "top + child.getMeasuredHeight()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sub-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 470
    iget v4, v1, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    sub-int/2addr p2, v4

    .line 471
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .prologue
    .line 801
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 803
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x0

    aget v9, p6, v9

    sub-int v3, v8, v9

    .line 804
    .local v3, "leftDiff":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v9, 0x1

    aget v9, p6, v9

    sub-int v6, v8, v9

    .line 805
    .local v6, "rightDiff":I
    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 806
    .local v4, "leftMargin":I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 807
    .local v7, "rightMargin":I
    add-int v2, v4, v7

    .line 808
    .local v2, "hMargins":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    neg-int v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 809
    const/4 v8, 0x1

    const/4 v9, 0x0

    neg-int v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 811
    iget v8, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPaddingLeft:I

    iget v9, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPaddingRight:I

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    add-int/2addr v8, p3

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v8, v9}, Lcom/zte/mifavor/widget/TabButtonBar;->getChildMeasureSpec(III)I

    move-result v1

    .line 813
    .local v1, "childWidthMeasureSpec":I
    iget v8, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPaddingTop:I

    iget v9, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int v8, v8, p5

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v8, v9}, Lcom/zte/mifavor/widget/TabButtonBar;->getChildMeasureSpec(III)I

    move-result v0

    .line 817
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 818
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 780
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 782
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPaddingLeft:I

    iget v6, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v5, v6}, Lcom/zte/mifavor/widget/TabButtonBar;->getChildMeasureSpec(III)I

    move-result v2

    .line 785
    .local v2, "childWidthSpec":I
    iget v5, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPaddingTop:I

    iget v6, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v5, v6}, Lcom/zte/mifavor/widget/TabButtonBar;->getChildMeasureSpec(III)I

    move-result v1

    .line 789
    .local v1, "childHeightSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 790
    .local v0, "childHeightMode":I
    if-eq v0, v7, :cond_0

    if-ltz p6, :cond_0

    .line 791
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 794
    .local v4, "size":I
    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 796
    .end local v4    # "size":I
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 797
    return-void

    :cond_1
    move v4, p6

    .line 791
    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 613
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->post(Ljava/lang/Runnable;)Z

    .line 614
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 766
    iget-boolean v4, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapsible:Z

    if-nez v4, :cond_1

    .line 776
    :cond_0
    :goto_0
    return v3

    .line 768
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getChildCount()I

    move-result v1

    .line 769
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 770
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/TabButtonBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 771
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-gtz v4, :cond_0

    .line 769
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 776
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 904
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 911
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 399
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 401
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 404
    :cond_0
    return-void

    .line 399
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public collapseActionViewBack()Z
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->collapseActionView()V

    .line 409
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 381
    :cond_0
    return-void
.end method

.method public dispatchMenuEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->showOverflowMenu()Z

    .line 1244
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->generateDefaultLayoutParams()Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 279
    new-instance v0, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->ensureMenu()V

    .line 417
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPopupTheme:I

    return v0
.end method

.method public getSelectAllButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getTabBar()Lcom/zte/mifavor/widget/PagerSecond;
    .locals 4

    .prologue
    .line 750
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    if-nez v1, :cond_0

    .line 751
    new-instance v1, Lcom/zte/mifavor/widget/PagerSecond;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zte/mifavor/widget/PagerSecond;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    .line 752
    new-instance v0, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfc

    invoke-static {v1, v2}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;-><init>(II)V

    .line 755
    .local v0, "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/widget/PagerSecond;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/PagerSecond;->setTextSize(I)V

    .line 757
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/TabButtonBar;->addSystemView(Landroid/view/View;)V

    .line 762
    .end local v0    # "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    return-object v1

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/TabButtonBar;->addSystemView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 529
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 618
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 619
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 620
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getWidth()I

    move-result v9

    .line 833
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getHeight()I

    move-result v2

    .line 834
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getPaddingLeft()I

    move-result v5

    .line 835
    .local v5, "paddingLeft":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getPaddingRight()I

    move-result v6

    .line 836
    .local v6, "paddingRight":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getPaddingTop()I

    move-result v7

    .line 837
    .local v7, "paddingTop":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getPaddingBottom()I

    move-result v4

    .line 838
    .local v4, "paddingBottom":I
    move v3, v5

    .line 839
    .local v3, "left":I
    sub-int v8, v9, v6

    .line 840
    .local v8, "right":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getMinimumHeight()I

    move-result v0

    .line 841
    .local v0, "alignmentHeight":I
    const/4 v10, 0x2

    new-array v1, v10, [I

    .line 842
    .local v1, "collapsingMargins":[I
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v1, v11

    aput v12, v1, v10

    .line 843
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/TabButtonBar;->shouldLayout(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 844
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    .line 845
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v10, v3, v1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    .line 849
    :cond_0
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/TabButtonBar;->shouldLayout(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 850
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x48

    invoke-static {v10, v11}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v3

    .line 851
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v10, v3, v1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    .line 855
    :cond_1
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/TabButtonBar;->shouldLayout(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 857
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v10, v8, v1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v8

    .line 862
    :cond_2
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/TabButtonBar;->shouldLayout(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 864
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v10, v3, v1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    .line 869
    :cond_3
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/TabButtonBar;->shouldLayout(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 871
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->setMenuColor()V

    .line 872
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {p0, v10, v8, v1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v8

    .line 881
    :cond_4
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    if-eqz v10, :cond_5

    .line 882
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/zte/mifavor/widget/PagerSecond;->setVisibility(I)V

    .line 883
    :cond_5
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/TabButtonBar;->shouldLayout(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 885
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {p0, v10, v3, v1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    .line 887
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/zte/mifavor/widget/PagerSecond;->setVisibility(I)V

    .line 890
    :cond_6
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-direct {p0, v10}, Lcom/zte/mifavor/widget/TabButtonBar;->shouldLayout(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 892
    iget-object v10, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-direct {p0, v10, v3, v1, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    .line 896
    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 708
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 709
    .local v13, "measureWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 710
    .local v12, "measureHeigth":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/zte/mifavor/widget/TabButtonBar;->setMeasuredDimension(II)V

    .line 712
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getChildCount()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 713
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zte/mifavor/widget/TabButtonBar;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 714
    .local v15, "v":Landroid/view/View;
    const-string v1, "TabButtonBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "measureWidth is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "measureHeight is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/16 v16, 0x0

    .line 716
    .local v16, "widthSpec":I
    const/4 v10, 0x0

    .line 717
    .local v10, "heightSpec":I
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    .line 718
    .local v14, "params":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    iget v1, v14, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->width:I

    if-lez v1, :cond_2

    .line 719
    iget v1, v14, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 725
    :cond_0
    :goto_1
    iget v1, v14, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->height:I

    if-lez v1, :cond_4

    .line 726
    iget v1, v14, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 732
    :cond_1
    :goto_2
    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Landroid/view/View;->measure(II)V

    .line 712
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 720
    :cond_2
    iget v1, v14, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 721
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v13, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    goto :goto_1

    .line 722
    :cond_3
    iget v1, v14, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 723
    const/high16 v1, -0x80000000

    invoke-static {v13, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    goto :goto_1

    .line 727
    :cond_4
    iget v1, v14, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 728
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v12, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_2

    .line 729
    :cond_5
    iget v1, v14, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 730
    const/high16 v1, -0x80000000

    invoke-static {v13, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_2

    .line 734
    .end local v10    # "heightSpec":I
    .end local v14    # "params":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    .end local v15    # "v":Landroid/view/View;
    .end local v16    # "widthSpec":I
    :cond_6
    const/4 v4, 0x0

    .line 735
    .local v4, "width":I
    const/4 v9, 0x0

    .line 736
    .local v9, "height":I
    const/4 v8, 0x0

    .line 737
    .local v8, "childState":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mTempMargins:[I

    .line 738
    .local v7, "collapsingMargins":[I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v7, v2

    aput v3, v7, v1

    .line 739
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/TabButtonBar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/zte/mifavor/widget/TabButtonBar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v1

    add-int/2addr v4, v1

    .line 742
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/zte/mifavor/widget/TabButtonBar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 744
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Lcom/zte/mifavor/widget/TabButtonBar;->combineMeasuredStates(II)I

    move-result v8

    .line 747
    :cond_7
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 595
    move-object v2, p1

    check-cast v2, Lcom/zte/mifavor/widget/TabButtonBar$SavedState;

    .line 596
    .local v2, "ss":Lcom/zte/mifavor/widget/TabButtonBar$SavedState;
    invoke-virtual {v2}, Lcom/zte/mifavor/widget/TabButtonBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 598
    iget-object v3, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    .line 599
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v3, v2, Lcom/zte/mifavor/widget/TabButtonBar$SavedState;->expandedMenuItemId:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 600
    iget v3, v2, Lcom/zte/mifavor/widget/TabButtonBar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 601
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 606
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v3, v2, Lcom/zte/mifavor/widget/TabButtonBar$SavedState;->isOverflowOpen:Z

    if-eqz v3, :cond_1

    .line 607
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->postShowOverflowMenu()V

    .line 609
    :cond_1
    return-void

    .line 598
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 582
    new-instance v0, Lcom/zte/mifavor/widget/TabButtonBar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/TabButtonBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 584
    .local v0, "state":Lcom/zte/mifavor/widget/TabButtonBar$SavedState;
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/zte/mifavor/widget/TabButtonBar$SavedState;->expandedMenuItemId:I

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/mifavor/widget/TabButtonBar$SavedState;->isOverflowOpen:Z

    .line 590
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 630
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 631
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mEatingTouch:Z

    .line 634
    :cond_0
    iget-boolean v2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mEatingTouch:Z

    if-nez v2, :cond_1

    .line 635
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 636
    .local v1, "handled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 637
    iput-boolean v3, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mEatingTouch:Z

    .line 641
    .end local v1    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 642
    :cond_2
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mEatingTouch:Z

    .line 645
    :cond_3
    return v3
.end method

.method public setActionMenuColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1157
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mActionFlag:I

    .line 1158
    iput p1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mActionColor:I

    .line 1205
    return-void
.end method

.method public setActionModeColor(II)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavColor:I

    .line 205
    iput p2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleColor:I

    .line 208
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .prologue
    .line 923
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapsible:Z

    .line 924
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->requestLayout()V

    .line 925
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 156
    iput p1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCurrentMode:I

    .line 157
    iget v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 158
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->ensureNavButtonView()V

    .line 159
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->ensureTitleView()V

    .line 160
    invoke-direct {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->ensureSelectButtonView()V

    .line 161
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerSecond;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTabBar:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->removeView(Landroid/view/View;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_3
    :goto_0
    return-void

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->removeView(Landroid/view/View;)V

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->removeView(Landroid/view/View;)V

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 185
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mSelelctButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TabButtonBar;->removeView(Landroid/view/View;)V

    .line 187
    :cond_7
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TabButtonBar;->getTabBar()Lcom/zte/mifavor/widget/PagerSecond;

    .line 188
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 190
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    .line 192
    :cond_8
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 196
    :cond_9
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 933
    iput-object p2, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 934
    return-void
.end method

.method setMenuColor()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1207
    const-string v4, "guojingdong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setActionMenuColor  mActionFlag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mActionFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget v4, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mActionFlag:I

    if-nez v4, :cond_0

    .line 1240
    :goto_0
    return-void

    .line 1212
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1213
    iget-object v4, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1214
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 1218
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1219
    .local v0, "dras":[Landroid/graphics/drawable/Drawable;
    aget-object v4, v0, v7

    if-eqz v4, :cond_1

    .line 1221
    aget-object v4, v0, v7

    iget v5, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mActionColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object v4, v3

    .line 1223
    check-cast v4, Landroid/widget/TextView;

    aget-object v5, v0, v7

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1226
    .end local v0    # "dras":[Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 1227
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1229
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 1231
    iget v4, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mActionColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1233
    check-cast v3, Landroid/widget/ImageView;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1212
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1239
    :cond_3
    iput v7, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mActionFlag:I

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Lcom/zte/mifavor/widget/TabButtonBar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/widget/TabButtonBar$OnMenuItemClickListener;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mOnMenuItemClickListener:Lcom/zte/mifavor/widget/TabButtonBar$OnMenuItemClickListener;

    .line 541
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 314
    iget v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 315
    iput p1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPopupTheme:I

    .line 316
    if-nez p1, :cond_1

    .line 317
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPopupContext:Landroid/content/Context;

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
