.class public Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
.super Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;,
        Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;,
        Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;,
        Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;,
        Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final ACTIONBAR_ANIMATIONS_ENABLED:Z = false

.field private static final ITEM_ANIMATION_DURATION:I = 0x96


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mExpandedActionViewsExclusive:Z

.field private mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

.field private mOverflowPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mPreLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mRunningItemAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    sget v0, Lcom/zte/extres/R$layout;->action_menu_layout:I

    sget v1, Lcom/zte/extres/R$layout;->action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 82
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 90
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    .line 100
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 110
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$2;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$2;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 129
    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->runItemAnimations()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    return-object v0
.end method

.method static synthetic access$802(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$900(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object v0
.end method

.method static synthetic access$902(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
    .param p1, "x1"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method private computeMenuItemAnimationInfo(Z)V
    .locals 8
    .param p1, "preLayout"    # Z

    .prologue
    .line 278
    iget-object v6, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v6, Landroid/view/ViewGroup;

    .line 279
    .local v6, "menuView":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 280
    .local v1, "count":I
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    .line 281
    .local v5, "items":Landroid/util/SparseArray;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 282
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    .line 284
    .local v3, "id":I
    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    if-eqz v7, :cond_0

    .line 285
    new-instance v4, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;

    invoke-direct {v4, v0, p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;-><init>(Landroid/view/View;Z)V

    .line 286
    .local v4, "info":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    .end local v4    # "info":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v5    # "items":Landroid/util/SparseArray;
    :cond_1
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    goto :goto_0

    .line 289
    .restart local v2    # "i":I
    .restart local v5    # "items":Landroid/util/SparseArray;
    :cond_2
    return-void
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 530
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 531
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 541
    :cond_0
    :goto_0
    return-object v0

    .line 533
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 534
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 535
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 536
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;

    invoke-interface {v4}, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;->getItemData()Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 534
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 541
    goto :goto_0
.end method

.method private runItemAnimations()V
    .locals 20

    .prologue
    .line 300
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v3, v15, :cond_b

    .line 301
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 302
    .local v4, "id":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 303
    .local v9, "menuItemLayoutInfoPre":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    .line 304
    .local v12, "postLayoutIndex":I
    if-ltz v12, :cond_8

    .line 306
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 308
    .local v8, "menuItemLayoutInfoPost":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v13, 0x0

    .line 309
    .local v13, "pvhX":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x0

    .line 310
    .local v14, "pvhY":Landroid/animation/PropertyValuesHolder;
    iget v15, v9, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v0, v8, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 311
    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v9, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v18, v0

    iget v0, v8, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 314
    :cond_0
    iget v15, v9, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v0, v8, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 315
    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v9, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v18, v0

    iget v0, v8, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 318
    :cond_1
    if-nez v13, :cond_2

    if-eqz v14, :cond_5

    .line 319
    :cond_2
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;

    .line 321
    .local v11, "oldInfo":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_3

    iget v15, v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-nez v15, :cond_3

    .line 322
    iget-object v15, v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 319
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 326
    .end local v11    # "oldInfo":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    :cond_4
    if-eqz v13, :cond_7

    .line 327
    if-eqz v14, :cond_6

    .line 328
    iget-object v15, v8, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 336
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    :goto_2
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 337
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 338
    new-instance v5, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x0

    invoke-direct {v5, v4, v8, v2, v15}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 340
    .local v5, "info":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v15, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$3;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 300
    .end local v8    # "menuItemLayoutInfoPost":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 331
    .restart local v6    # "j":I
    .restart local v8    # "menuItemLayoutInfoPost":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;
    .restart local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :cond_6
    iget-object v15, v8, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 334
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    iget-object v15, v8, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 356
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v6    # "j":I
    .end local v8    # "menuItemLayoutInfoPost":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v13    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "pvhY":Landroid/animation/PropertyValuesHolder;
    :cond_8
    const/high16 v10, 0x3f800000    # 1.0f

    .line 357
    .local v10, "oldAlpha":F
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_a

    .line 358
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;

    .line 359
    .restart local v11    # "oldInfo":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_9

    iget v15, v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 360
    iget-object v15, v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v15, v15, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v10

    .line 361
    iget-object v15, v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 357
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 364
    .end local v11    # "oldInfo":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    :cond_a
    iget-object v15, v9, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 367
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v15

    iget-object v0, v9, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 368
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 369
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 370
    new-instance v5, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x2

    invoke-direct {v5, v4, v9, v2, v15}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 371
    .restart local v5    # "info":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v15, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$4;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_3

    .line 386
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v4    # "id":I
    .end local v5    # "info":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    .end local v9    # "menuItemLayoutInfoPre":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v10    # "oldAlpha":F
    .end local v12    # "postLayoutIndex":I
    :cond_b
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v3, v15, :cond_f

    .line 387
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 388
    .restart local v4    # "id":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    .line 389
    .restart local v12    # "postLayoutIndex":I
    if-ltz v12, :cond_e

    .line 391
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 393
    .local v7, "menuItemLayoutInfo":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v10, 0x0

    .line 394
    .restart local v10    # "oldAlpha":F
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_d

    .line 395
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;

    .line 396
    .restart local v11    # "oldInfo":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    iget v15, v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v15, v4, :cond_c

    iget v15, v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 397
    iget-object v15, v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v15, v15, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v10

    .line 398
    iget-object v15, v11, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v15}, Landroid/animation/Animator;->cancel()V

    .line 394
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 401
    .end local v11    # "oldInfo":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    :cond_d
    iget-object v15, v7, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v16, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    const/high16 v19, 0x3f800000    # 1.0f

    aput v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 403
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 404
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 405
    new-instance v5, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;

    const/4 v15, 0x1

    invoke-direct {v5, v4, v7, v2, v15}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 406
    .restart local v5    # "info":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v15, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$5;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V

    invoke-virtual {v2, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;
    .end local v6    # "j":I
    .end local v7    # "menuItemLayoutInfo":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v10    # "oldAlpha":F
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 420
    .end local v4    # "id":I
    .end local v12    # "postLayoutIndex":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 421
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V

    .line 422
    return-void
.end method

.method private setupItemAnimations()V
    .locals 2

    .prologue
    .line 429
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    .line 430
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 432
    return-void
.end method


# virtual methods
.method public bindItemView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;)V
    .locals 4
    .param p1, "item"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;

    .prologue
    .line 252
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;->initialize(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;I)V

    .line 254
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    .local v1, "menuView":Lcom/zte/mifavor/actionbar/menu/ActionMenuView;
    move-object v0, p2

    .line 255
    check-cast v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;

    .line 256
    .local v0, "actionItemView":Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setItemInvoker(Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;)V

    .line 258
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPopupCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 259
    new-instance v2, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;)V

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPopupCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPopupCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setPopupCallback(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;)V

    .line 262
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 591
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 592
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 489
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 490
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 631
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 637
    .local v15, "itemsSize":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 638
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 639
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 640
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 642
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 643
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 644
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 645
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 646
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v15, :cond_4

    .line 647
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .line 648
    .local v14, "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 649
    add-int/lit8 v22, v22, 0x1

    .line 655
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual {v14}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 658
    const/16 v17, 0x0

    .line 646
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 633
    .end local v8    # "firstActionWidth":I
    .end local v10    # "hasOverflow":Z
    .end local v11    # "i":I
    .end local v14    # "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .end local v15    # "itemsSize":I
    .end local v17    # "maxActions":I
    .end local v19    # "parent":Landroid/view/ViewGroup;
    .end local v20    # "querySpec":I
    .end local v21    # "requestedItems":I
    .end local v22    # "requiredItems":I
    .end local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    .end local v26    # "widthLimit":I
    :cond_1
    const/16 v25, 0x0

    .line 634
    .restart local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    const/4 v15, 0x0

    .restart local v15    # "itemsSize":I
    goto :goto_0

    .line 650
    .restart local v8    # "firstActionWidth":I
    .restart local v10    # "hasOverflow":Z
    .restart local v11    # "i":I
    .restart local v14    # "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .restart local v17    # "maxActions":I
    .restart local v19    # "parent":Landroid/view/ViewGroup;
    .restart local v20    # "querySpec":I
    .restart local v21    # "requestedItems":I
    .restart local v22    # "requiredItems":I
    .restart local v26    # "widthLimit":I
    :cond_2
    invoke-virtual {v14}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 651
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 653
    :cond_3
    const/4 v10, 0x1

    goto :goto_2

    .line 663
    .end local v14    # "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    if-nez v10, :cond_5

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 665
    :cond_5
    add-int/lit8 v17, v17, -0x1

    .line 667
    :cond_6
    sub-int v17, v17, v22

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 670
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 672
    const/4 v4, 0x0

    .line 673
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 674
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 675
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 677
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 681
    .end local v5    # "cellSizeRemaining":I
    :cond_7
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_1c

    .line 682
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .line 684
    .restart local v14    # "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    invoke-virtual {v14}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 685
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->getItemView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 686
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 687
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 692
    :goto_4
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 693
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 694
    if-nez v8, :cond_8

    .line 695
    move/from16 v8, v18

    .line 697
    :cond_8
    invoke-virtual {v14}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 698
    .local v9, "groupId":I
    if-eqz v9, :cond_9

    .line 699
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 701
    :cond_9
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 681
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 690
    .restart local v24    # "v":Landroid/view/View;
    :cond_a
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 702
    .end local v24    # "v":Landroid/view/View;
    :cond_b
    invoke-virtual {v14}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 705
    invoke-virtual {v14}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getGroupId()I

    move-result v9

    .line 706
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 707
    .local v12, "inGroup":Z
    if-gtz v17, :cond_c

    if-eqz v12, :cond_13

    :cond_c
    if-lez v26, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    if-lez v7, :cond_13

    :cond_d
    const/4 v13, 0x1

    .line 710
    .local v13, "isAction":Z
    :goto_6
    if-eqz v13, :cond_10

    .line 711
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->getItemView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 712
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_14

    .line 713
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 715
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 716
    if-nez v6, :cond_e

    .line 717
    const/4 v13, 0x0

    .line 722
    .end local v6    # "cells":I
    :cond_e
    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 723
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 724
    if-nez v8, :cond_f

    .line 725
    move/from16 v8, v18

    .line 728
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 729
    if-ltz v26, :cond_15

    const/16 v27, 0x1

    :goto_8
    and-int v13, v13, v27

    .line 736
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_10
    :goto_9
    if-eqz v13, :cond_18

    if-eqz v9, :cond_18

    .line 737
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 751
    :cond_11
    if-eqz v13, :cond_12

    add-int/lit8 v17, v17, -0x1

    .line 753
    :cond_12
    invoke-virtual {v14, v13}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto :goto_5

    .line 707
    .end local v13    # "isAction":Z
    :cond_13
    const/4 v13, 0x0

    goto :goto_6

    .line 720
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_14
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 729
    .restart local v18    # "measuredWidth":I
    :cond_15
    const/16 v27, 0x0

    goto :goto_8

    .line 732
    :cond_16
    add-int v27, v26, v8

    if-lez v27, :cond_17

    const/16 v27, 0x1

    :goto_a
    and-int v13, v13, v27

    goto :goto_9

    :cond_17
    const/16 v27, 0x0

    goto :goto_a

    .line 738
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_18
    if-eqz v12, :cond_11

    .line 740
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 741
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v11, :cond_11

    .line 742
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .line 743
    .local v3, "areYouMyGroupie":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1a

    .line 745
    invoke-virtual {v3}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_19

    add-int/lit8 v17, v17, 0x1

    .line 746
    :cond_19
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 741
    :cond_1a
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 756
    .end local v3    # "areYouMyGroupie":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1b
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 759
    .end local v14    # "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    :cond_1c
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->getItemView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 242
    check-cast v2, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    .line 243
    .local v2, "menuParent":Lcom/zte/mifavor/actionbar/menu/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 244
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 245
    invoke-virtual {v2, v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/zte/mifavor/actionbar/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :cond_2
    return-object v0

    .line 240
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Lcom/zte/mifavor/actionbar/menu/ActionMenuView;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/zte/mifavor/actionbar/menu/MenuView;
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    .line 223
    .local v0, "oldMenuView":Lcom/zte/mifavor/actionbar/menu/MenuView;
    invoke-super {p0, p1}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/zte/mifavor/actionbar/menu/MenuView;

    move-result-object v1

    .line 224
    .local v1, "result":Lcom/zte/mifavor/actionbar/menu/MenuView;
    if-eq v0, v1, :cond_1

    move-object v2, v1

    .line 225
    check-cast v2, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v2, p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setPresenter(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V

    .line 226
    if-eqz v0, :cond_0

    .line 227
    check-cast v0, Landroid/view/View;

    .end local v0    # "oldMenuView":Lcom/zte/mifavor/actionbar/menu/MenuView;
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    move-object v2, v1

    .line 229
    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 231
    :cond_1
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 571
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 573
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 582
    :goto_0
    return v1

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    .line 578
    .local v0, "popup":Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 580
    goto :goto_0

    .line 582
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 603
    const/4 v0, 0x1

    .line 605
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 133
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 137
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 138
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 142
    :cond_0
    iget-boolean v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_1

    .line 143
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 147
    :cond_1
    iget-boolean v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_2

    .line 148
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMaxItems:I

    .line 151
    :cond_2
    iget v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 152
    .local v3, "width":I
    iget-boolean v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_5

    .line 153
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez v4, :cond_4

    .line 154
    new-instance v4, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    .line 155
    iget-boolean v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v4, :cond_3

    .line 156
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iput-object v7, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 158
    iput-boolean v6, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 160
    :cond_3
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 161
    .local v2, "spec":I
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4, v2, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 163
    .end local v2    # "spec":I
    :cond_4
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 168
    :goto_0
    iput v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 170
    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMinCellSize:I

    .line 171
    return-void

    .line 165
    :cond_5
    iput-object v7, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 765
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V

    .line 766
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMaxItems:I

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 180
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 777
    move-object v1, p1

    check-cast v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$SavedState;

    .line 778
    .local v1, "saved":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$SavedState;
    iget v3, v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 779
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    iget v4, v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 780
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 781
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    .line 782
    .local v2, "subMenu":Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;)Z

    .line 785
    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 770
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 771
    .local v0, "state":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$SavedState;
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 772
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;)Z
    .locals 9
    .param p1, "subMenu"    # Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    .prologue
    const/4 v6, 0x0

    .line 494
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v7

    if-nez v7, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v6

    .line 496
    :cond_1
    move-object v5, p1

    .line 497
    .local v5, "topSubMenu":Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;
    :goto_1
    invoke-virtual {v5}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eq v7, v8, :cond_2

    .line 498
    invoke-virtual {v5}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v5

    .end local v5    # "topSubMenu":Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;
    check-cast v5, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    .restart local v5    # "topSubMenu":Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;
    goto :goto_1

    .line 500
    :cond_2
    invoke-virtual {v5}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 501
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    iput v6, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 511
    const/4 v4, 0x0

    .line 512
    .local v4, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->size()I

    move-result v2

    .line 513
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 514
    invoke-virtual {p1, v3}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 515
    .local v1, "childItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 516
    const/4 v4, 0x1

    .line 521
    .end local v1    # "childItem":Landroid/view/MenuItem;
    :cond_3
    new-instance v6, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, p1, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v6, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 522
    iget-object v6, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v6, v4}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 523
    iget-object v6, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v6}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 525
    invoke-super {p0, p1}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;)Z

    .line 526
    const/4 v6, 0x1

    goto :goto_0

    .line 513
    .restart local v1    # "childItem":Landroid/view/MenuItem;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 789
    if-eqz p1, :cond_1

    .line 791
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;)Z

    .line 795
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 200
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMaxItems:I

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 196
    return-void
.end method

.method public setMenuView(Lcom/zte/mifavor/actionbar/menu/ActionMenuView;)V
    .locals 2
    .param p1, "menuView"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    if-eq p1, v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 802
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    .line 803
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->initialize(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V

    .line 804
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 806
    :cond_1
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 207
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 191
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 183
    iput p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 184
    iput-boolean p2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 186
    return-void
.end method

.method public shouldIncludeItem(ILcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .prologue
    .line 266
    invoke-virtual {p2}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 549
    iget-boolean v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 552
    .local v0, "popup":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 554
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 558
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;)Z

    .line 562
    .end local v0    # "popup":Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 12
    .param p1, "cleared"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 436
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 437
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 440
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 442
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 444
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eqz v9, :cond_2

    .line 445
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 446
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 447
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 448
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v9}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v8

    .line 449
    .local v8, "provider":Landroid/view/ActionProvider;
    if-eqz v8, :cond_1

    .line 450
    invoke-virtual {v8, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 447
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Landroid/view/ActionProvider;
    :cond_2
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 458
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 459
    .local v2, "hasOverflow":Z
    iget-boolean v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v9, :cond_3

    if-eqz v6, :cond_3

    .line 460
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 461
    .restart local v1    # "count":I
    if-ne v1, v10, :cond_9

    .line 462
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v9}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v9

    if-nez v9, :cond_8

    move v2, v10

    .line 468
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_b

    .line 469
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez v9, :cond_4

    .line 470
    new-instance v9, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v10, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    .line 472
    :cond_4
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v9}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 473
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    if-eq v7, v9, :cond_6

    .line 474
    if-eqz v7, :cond_5

    .line 475
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 477
    :cond_5
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v4, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    .line 478
    .local v4, "menuView":Lcom/zte/mifavor/actionbar/menu/ActionMenuView;
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/zte/mifavor/actionbar/menu/ActionMenuView$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    .end local v4    # "menuView":Lcom/zte/mifavor/actionbar/menu/ActionMenuView;
    .end local v7    # "parent":Landroid/view/ViewGroup;
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v9, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iget-boolean v10, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v9, v10}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setOverflowReserved(Z)V

    .line 485
    return-void

    .line 455
    .end local v2    # "hasOverflow":Z
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :cond_8
    move v2, v11

    .line 462
    goto :goto_2

    .line 464
    :cond_9
    if-lez v1, :cond_a

    move v2, v10

    :goto_4
    goto :goto_2

    :cond_a
    move v2, v11

    goto :goto_4

    .line 480
    .end local v1    # "count":I
    :cond_b
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v9}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    iget-object v10, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    if-ne v9, v10, :cond_6

    .line 481
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3
.end method
