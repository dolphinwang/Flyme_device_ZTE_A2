.class public Lcom/zte/mifavor/actionbar/ToolBarActionBar;
.super Landroid/view/ViewGroup;
.source "ToolBarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;,
        Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;,
        Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;,
        Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCallBack:Lcom/zte/mifavor/actionbar/ActionBarCallBack;

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private final mContentInsets:Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;

.field private mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

.field private final mMenuViewItemClickListener:Lcom/zte/mifavor/actionbar/menu/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonStyle:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

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

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 230
    const v0, 0x10104aa

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 238
    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 171
    new-instance v20, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

    invoke-direct/range {v20 .. v20}, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsets:Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

    .line 175
    const v20, 0x800013

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mGravity:I

    .line 186
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    .line 189
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mHiddenViews:Ljava/util/ArrayList;

    .line 191
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempMargins:[I

    .line 195
    new-instance v20, Lcom/zte/mifavor/actionbar/ToolBarActionBar$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$1;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuViewItemClickListener:Lcom/zte/mifavor/actionbar/menu/ActionMenuView$OnMenuItemClickListener;

    .line 214
    new-instance v20, Lcom/zte/mifavor/actionbar/ToolBarActionBar$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$2;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 240
    sget-object v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 243
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_titleTextAppearance:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextAppearance:I

    .line 244
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_subtitleTextAppearance:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextAppearance:I

    .line 245
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_navigationButtonStyle:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonStyle:I

    .line 246
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_gravity:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mGravity:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mGravity:I

    .line 247
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_buttonGravity:I

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mButtonGravity:I

    .line 248
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginBottom:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginTop:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginEnd:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginStart:I

    .line 250
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_titleMarginStart:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    .line 251
    .local v14, "marginStart":I
    if-ltz v14, :cond_0

    .line 252
    move-object/from16 v0, p0

    iput v14, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginStart:I

    .line 255
    :cond_0
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_titleMarginEnd:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    .line 256
    .local v13, "marginEnd":I
    if-ltz v13, :cond_1

    .line 257
    move-object/from16 v0, p0

    iput v13, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginEnd:I

    .line 260
    :cond_1
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_titleMarginTop:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    .line 261
    .local v15, "marginTop":I
    if-ltz v15, :cond_2

    .line 262
    move-object/from16 v0, p0

    iput v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginTop:I

    .line 265
    :cond_2
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_titleMarginBottom:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 267
    .local v12, "marginBottom":I
    if-ltz v12, :cond_3

    .line 268
    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginBottom:I

    .line 271
    :cond_3
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_maxButtonHeight:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMaxButtonHeight:I

    .line 273
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_contentInsetStart:I

    const/high16 v21, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 276
    .local v9, "contentInsetStart":I
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_contentInsetEnd:I

    const/high16 v21, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 279
    .local v6, "contentInsetEnd":I
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_contentInsetLeft:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 281
    .local v7, "contentInsetLeft":I
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_contentInsetRight:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 284
    .local v8, "contentInsetRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsets:Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->setAbsolute(II)V

    .line 286
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v9, v0, :cond_4

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-eq v6, v0, :cond_5

    .line 288
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsets:Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v6}, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->setRelative(II)V

    .line 291
    :cond_5
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetStartWithNavigation:I

    .line 292
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetEndWithActions:I

    .line 294
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_collapseIcon:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 295
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_collapseContentDescription:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 297
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_title:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 298
    .local v19, "title":Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 299
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 302
    :cond_6
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_subtitle:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 303
    .local v18, "subtitle":Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 308
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupContext:Landroid/content/Context;

    .line 309
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_popupTheme:I

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setPopupTheme(I)V

    .line 311
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_navigationIcon:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 312
    .local v17, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_8

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :cond_8
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_navigationContentDescription:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 318
    .local v16, "navDesc":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 322
    :cond_9
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_logo:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 323
    .local v10, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_a

    .line 324
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :cond_a
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_logoDescription:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 328
    .local v11, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 329
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 332
    :cond_b
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_titleTextColor:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 333
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_titleTextColor:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setTitleTextColor(I)V

    .line 336
    :cond_c
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_subtitleTextColor:I

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 337
    sget v20, Lcom/zte/extres/R$styleable;->ToolBarActionBar_android_subtitleTextColor:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setSubtitleTextColor(I)V

    .line 339
    :cond_d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mOnMenuItemClickListener:Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    .prologue
    .line 137
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mButtonGravity:I

    return v0
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x1

    .line 1997
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getLayoutDirection()I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 1998
    .local v4, "isRtl":Z
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildCount()I

    move-result v2

    .line 1999
    .local v2, "childCount":I
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getLayoutDirection()I

    move-result v6

    invoke-static {p2, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 2001
    .local v0, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2003
    if-eqz v4, :cond_2

    .line 2004
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 2005
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2006
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 2007
    .local v5, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    iget v6, v5, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 2009
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2004
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1997
    .end local v0    # "absGrav":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "isRtl":Z
    .end local v5    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2013
    .restart local v0    # "absGrav":I
    .restart local v2    # "childCount":I
    .restart local v4    # "isRtl":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 2014
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2015
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 2016
    .restart local v5    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    iget v6, v5, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 2018
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2013
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2022
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .prologue
    .line 1385
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1387
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->generateDefaultLayoutParams()Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    move-result-object v0

    .line 1394
    .local v0, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput v2, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    .line 1396
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1397
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1398
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    :goto_1
    return-void

    .line 1389
    .end local v0    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1390
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    move-result-object v0

    .restart local v0    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_1
    move-object v0, v1

    .line 1392
    check-cast v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .restart local v0    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    goto :goto_0

    .line 1400
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private ensureCollapseButtonView()V
    .locals 6

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 1368
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonStyle:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1369
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1370
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1371
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->generateDefaultLayoutParams()Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    move-result-object v0

    .line 1372
    .local v0, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->gravity:I

    .line 1373
    const/4 v1, 0x2

    iput v1, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    .line 1374
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1375
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar$3;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$3;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1382
    .end local v0    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    .line 679
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .prologue
    .line 1032
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureMenuView()V

    .line 1033
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->peekMenu()Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 1036
    .local v0, "menu":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 1037
    new-instance v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;Lcom/zte/mifavor/actionbar/ToolBarActionBar$1;)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    .line 1039
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1040
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->addMenuPresenter(Lcom/zte/mifavor/actionbar/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1042
    .end local v0    # "menu":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 4

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-nez v1, :cond_0

    .line 1046
    new-instance v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    .line 1047
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iget v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setPopupTheme(I)V

    .line 1048
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuViewItemClickListener:Lcom/zte/mifavor/actionbar/menu/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setOnMenuItemClickListener(Lcom/zte/mifavor/actionbar/menu/ActionMenuView$OnMenuItemClickListener;)V

    .line 1049
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mActionMenuPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuBuilderCallback:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;

    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setMenuCallbacks(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;)V

    .line 1050
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->generateDefaultLayoutParams()Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    move-result-object v0

    .line 1051
    .local v0, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->gravity:I

    .line 1052
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addSystemView(Landroid/view/View;Z)V

    .line 1055
    .end local v0    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 6

    .prologue
    .line 1358
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 1359
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonStyle:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1360
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->generateDefaultLayoutParams()Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    move-result-object v0

    .line 1361
    .local v0, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->gravity:I

    .line 1362
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1364
    .end local v0    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getLayoutDirection()I

    move-result v2

    .line 2026
    .local v2, "ld":I
    invoke-static {p1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 2027
    .local v0, "absGrav":I
    and-int/lit8 v1, v0, 0x7

    .line 2028
    .local v1, "hGrav":I
    packed-switch v1, :pswitch_data_0

    .line 2034
    :pswitch_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x5

    :goto_0
    move v1, v3

    .end local v1    # "hGrav":I
    :pswitch_1
    return v1

    .restart local v1    # "hGrav":I
    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    .line 2028
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .prologue
    const/4 v9, 0x0

    .line 1946
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1947
    .local v3, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1948
    .local v1, "childHeight":I
    if-lez p2, :cond_1

    sub-int v10, v1, p2

    div-int/lit8 v0, v10, 0x2

    .line 1949
    .local v0, "alignmentOffset":I
    :goto_0
    iget v10, v3, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->gravity:I

    invoke-direct {p0, v10}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildVerticalGravity(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 1959
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingTop()I

    move-result v5

    .line 1960
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingBottom()I

    move-result v4

    .line 1961
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getHeight()I

    move-result v2

    .line 1962
    .local v2, "height":I
    sub-int v10, v2, v5

    sub-int v6, v10, v4

    .line 1963
    .local v6, "space":I
    sub-int v10, v6, v1

    div-int/lit8 v7, v10, 0x2

    .line 1964
    .local v7, "spaceAbove":I
    iget v10, v3, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->topMargin:I

    if-ge v7, v10, :cond_2

    .line 1965
    iget v7, v3, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->topMargin:I

    .line 1973
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

    .line 1948
    goto :goto_0

    .line 1951
    .restart local v0    # "alignmentOffset":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v9, v0

    goto :goto_2

    .line 1954
    :sswitch_1
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iget v10, v3, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    goto :goto_2

    .line 1967
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

    .line 1969
    .local v8, "spaceBelow":I
    iget v10, v3, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    if-ge v8, v10, :cond_0

    .line 1970
    iget v10, v3, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v8

    sub-int v10, v7, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    .line 1949
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
    .line 1978
    and-int/lit8 v0, p1, 0x70

    .line 1979
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    .line 1985
    iget v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mGravity:I

    and-int/lit8 v0, v1, 0x70

    .end local v0    # "vgrav":I
    :sswitch_0
    return v0

    .line 1979
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
    .line 2043
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2044
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
    .line 1058
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2048
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2049
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v12, 0x0

    .line 1901
    aget v0, p2, v12

    .line 1902
    .local v0, "collapseLeft":I
    const/4 v11, 0x1

    aget v1, p2, v11

    .line 1903
    .local v1, "collapseRight":I
    const/4 v10, 0x0

    .line 1904
    .local v10, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1905
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1906
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1907
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1908
    .local v6, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    iget v11, v6, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->leftMargin:I

    sub-int v4, v11, v0

    .line 1909
    .local v4, "l":I
    iget v11, v6, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->rightMargin:I

    sub-int v7, v11, v1

    .line 1910
    .local v7, "r":I
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1911
    .local v5, "leftMargin":I
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1912
    .local v8, "rightMargin":I
    neg-int v11, v4

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1913
    neg-int v11, v7

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1914
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v11, v8

    add-int/2addr v10, v11

    .line 1905
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1916
    .end local v4    # "l":I
    .end local v5    # "leftMargin":I
    .end local v6    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .end local v7    # "r":I
    .end local v8    # "rightMargin":I
    .end local v9    # "v":Landroid/view/View;
    :cond_0
    return v10
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2109
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method private static isCustomView(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 2081
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 1921
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1922
    .local v2, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    iget v4, v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->leftMargin:I

    aget v5, p3, v6

    sub-int v1, v4, v5

    .line 1923
    .local v1, "l":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr p2, v4

    .line 1924
    neg-int v4, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v6

    .line 1925
    invoke-direct {p0, p1, p4}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 1926
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1927
    .local v0, "childWidth":I
    add-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1928
    iget v4, v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr p2, v4

    .line 1929
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

    .line 1934
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1935
    .local v1, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    iget v4, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->rightMargin:I

    aget v5, p3, v7

    sub-int v2, v4, v5

    .line 1936
    .local v2, "r":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 1937
    neg-int v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v7

    .line 1938
    invoke-direct {p0, p1, p4}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 1939
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1940
    .local v0, "childWidth":I
    sub-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1941
    iget v4, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    sub-int/2addr p2, v4

    .line 1942
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
    .line 1517
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1519
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x0

    aget v9, p6, v9

    sub-int v3, v8, v9

    .line 1520
    .local v3, "leftDiff":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v9, 0x1

    aget v9, p6, v9

    sub-int v6, v8, v9

    .line 1521
    .local v6, "rightDiff":I
    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1522
    .local v4, "leftMargin":I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1523
    .local v7, "rightMargin":I
    add-int v2, v4, v7

    .line 1524
    .local v2, "hMargins":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    neg-int v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1525
    const/4 v8, 0x1

    const/4 v9, 0x0

    neg-int v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1527
    iget v8, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPaddingLeft:I

    iget v9, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPaddingRight:I

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    add-int/2addr v8, p3

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v8, v9}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1529
    .local v1, "childWidthMeasureSpec":I
    iget v8, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPaddingTop:I

    iget v9, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int v8, v8, p5

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v8, v9}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1533
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1534
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

    .line 1492
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1494
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPaddingLeft:I

    iget v6, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v5, v6}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1497
    .local v2, "childWidthSpec":I
    iget v5, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPaddingTop:I

    iget v6, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v5, v6}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1501
    .local v1, "childHeightSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1502
    .local v0, "childHeightMode":I
    if-eq v0, v7, :cond_0

    if-ltz p6, :cond_0

    .line 1503
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1506
    .local v4, "size":I
    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1508
    .end local v4    # "size":I
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1509
    return-void

    :cond_1
    move v4, p6

    .line 1503
    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1437
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->post(Ljava/lang/Runnable;)Z

    .line 1438
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1541
    iget-boolean v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapsible:Z

    if-nez v4, :cond_1

    .line 1551
    :cond_0
    :goto_0
    return v3

    .line 1543
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildCount()I

    move-result v1

    .line 1544
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1545
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1546
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1544
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1551
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2039
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
.method addChildrenForExpandedActionView()V
    .locals 3

    .prologue
    .line 2100
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2102
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2103
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addView(Landroid/view/View;)V

    .line 2102
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2105
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2106
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->isOverflowReserved()Z

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
    .line 2077
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

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
    .line 706
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 708
    .local v0, "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->collapseActionView()Z

    .line 711
    :cond_0
    return-void

    .line 706
    .end local v0    # "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->dismissPopupMenus()V

    .line 580
    :cond_0
    return-void
.end method

.method public dispatchMenuEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2374
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->showOverflowMenu()Z

    .line 2375
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->generateDefaultLayoutParams()Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 2072
    new-instance v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2054
    new-instance v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2059
    instance-of v0, p1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2060
    new-instance v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    check-cast p1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;)V

    .line 2066
    :goto_0
    return-object v0

    .line 2061
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2062
    new-instance v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    check-cast p1, Landroid/app/ActionBar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 2063
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2064
    new-instance v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 2066
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsets:Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->getEnd()I

    move-result v0

    return v0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .prologue
    .line 1265
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetEndWithActions:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContentInsetEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsets:Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsets:Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsets:Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->getStart()I

    move-result v0

    return v0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .prologue
    .line 1222
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetStartWithNavigation:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1317
    const/4 v0, 0x0

    .line 1318
    .local v0, "hasActions":Z
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v3, :cond_0

    .line 1319
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->peekMenu()Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    move-result-object v1

    .line 1320
    .local v1, "mb":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1322
    .end local v1    # "mb":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContentInsetEnd()I

    move-result v3

    iget v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetEndWithActions:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    return v2

    .restart local v1    # "mb":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    :cond_1
    move v0, v2

    .line 1320
    goto :goto_0

    .line 1322
    .end local v1    # "mb":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContentInsetEnd()I

    move-result v2

    goto :goto_1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 1

    .prologue
    .line 1337
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getCurrentContentInsetEnd()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetRight()I
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getCurrentContentInsetStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1006
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureMenu()V

    .line 1007
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method getOuterActionMenuPresenter()Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mOuterActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1027
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureMenu()V

    .line 1028
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginBottom:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginEnd:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginStart:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginTop:I

    return v0
.end method

.method public getWrapper()Lcom/zte/mifavor/actionbar/DecorToolbar;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mWrapper:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;Z)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mWrapper:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mWrapper:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

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
    .line 533
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->hideOverflowMenu()Z

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
    .line 1070
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1071
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->isOverflowMenuShowPending()Z

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
    .line 510
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 584
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v3

    .line 588
    :cond_1
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 589
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 593
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 594
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 595
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 596
    const/4 v3, 0x1

    goto :goto_0

    .line 594
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1442
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1443
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1444
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 51
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1684
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getLayoutDirection()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_e

    const/16 v18, 0x1

    .line 1685
    .local v18, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getWidth()I

    move-result v47

    .line 1686
    .local v47, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getHeight()I

    move-result v16

    .line 1687
    .local v16, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingLeft()I

    move-result v26

    .line 1688
    .local v26, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingRight()I

    move-result v27

    .line 1689
    .local v27, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingTop()I

    move-result v28

    .line 1690
    .local v28, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingBottom()I

    move-result v25

    .line 1691
    .local v25, "paddingBottom":I
    move/from16 v22, v26

    .line 1692
    .local v22, "left":I
    sub-int v31, v47, v27

    .line 1694
    .local v31, "right":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempMargins:[I

    .line 1695
    .local v12, "collapsingMargins":[I
    const/16 v48, 0x0

    const/16 v49, 0x1

    const/16 v50, 0x0

    aput v50, v12, v49

    aput v50, v12, v48

    .line 1698
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getMinimumHeight()I

    move-result v5

    .line 1700
    .local v5, "alignmentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 1701
    if-eqz v18, :cond_f

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    .line 1710
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v48

    if-eqz v48, :cond_1

    .line 1711
    if-eqz v18, :cond_10

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    .line 1720
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v48

    if-eqz v48, :cond_2

    .line 1721
    if-eqz v18, :cond_11

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    .line 1730
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getCurrentContentInsetLeft()I

    move-result v13

    .line 1731
    .local v13, "contentInsetLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getCurrentContentInsetRight()I

    move-result v14

    .line 1732
    .local v14, "contentInsetRight":I
    const/16 v48, 0x0

    const/16 v49, 0x0

    sub-int v50, v13, v22

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->max(II)I

    move-result v49

    aput v49, v12, v48

    .line 1733
    const/16 v48, 0x1

    const/16 v49, 0x0

    sub-int v50, v47, v27

    sub-int v50, v50, v31

    sub-int v50, v14, v50

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->max(II)I

    move-result v49

    aput v49, v12, v48

    .line 1734
    move/from16 v0, v22

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1735
    sub-int v48, v47, v27

    sub-int v48, v48, v14

    move/from16 v0, v31

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v48

    if-eqz v48, :cond_3

    .line 1738
    if-eqz v18, :cond_12

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    .line 1747
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v48

    if-eqz v48, :cond_4

    .line 1748
    if-eqz v18, :cond_13

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    .line 1757
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v20

    .line 1758
    .local v20, "layoutTitle":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v19

    .line 1759
    .local v19, "layoutSubtitle":Z
    const/16 v41, 0x0

    .line 1760
    .local v41, "titleHeight":I
    if-eqz v20, :cond_5

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1762
    .local v24, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->topMargin:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v49

    add-int v48, v48, v49

    move-object/from16 v0, v24

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    add-int v48, v48, v49

    add-int v41, v41, v48

    .line 1764
    .end local v24    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_5
    if-eqz v19, :cond_6

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1766
    .restart local v24    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->topMargin:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v49

    add-int v48, v48, v49

    move-object/from16 v0, v24

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    add-int v48, v48, v49

    add-int v41, v41, v48

    .line 1769
    .end local v24    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_6
    if-nez v20, :cond_7

    if-eqz v19, :cond_d

    .line 1771
    :cond_7
    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v45, v0

    .line 1772
    .local v45, "topChild":Landroid/view/View;
    :goto_6
    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1773
    .local v6, "bottomChild":Landroid/view/View;
    :goto_7
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v46

    check-cast v46, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1774
    .local v46, "toplp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1775
    .local v7, "bottomlp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v48

    if-gtz v48, :cond_9

    :cond_8
    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v48

    if-lez v48, :cond_16

    :cond_9
    const/16 v40, 0x1

    .line 1778
    .local v40, "titleHasWidth":Z
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mGravity:I

    move/from16 v48, v0

    and-int/lit8 v48, v48, 0x70

    sparse-switch v48, :sswitch_data_0

    .line 1784
    sub-int v48, v16, v28

    sub-int v33, v48, v25

    .line 1785
    .local v33, "space":I
    sub-int v48, v33, v41

    div-int/lit8 v34, v48, 0x2

    .line 1786
    .local v34, "spaceAbove":I
    move-object/from16 v0, v46

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->topMargin:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginTop:I

    move/from16 v49, v0

    add-int v48, v48, v49

    move/from16 v0, v34

    move/from16 v1, v48

    if-ge v0, v1, :cond_17

    .line 1787
    move-object/from16 v0, v46

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->topMargin:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginTop:I

    move/from16 v49, v0

    add-int v34, v48, v49

    .line 1796
    :cond_a
    :goto_9
    add-int v44, v28, v34

    .line 1803
    .end local v33    # "space":I
    .end local v34    # "spaceAbove":I
    .local v44, "titleTop":I
    :goto_a
    if-eqz v18, :cond_19

    .line 1804
    if-eqz v40, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginStart:I

    move/from16 v48, v0

    :goto_b
    const/16 v49, 0x1

    aget v49, v12, v49

    sub-int v30, v48, v49

    .line 1805
    .local v30, "rd":I
    const/16 v48, 0x0

    move/from16 v0, v48

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v48

    sub-int v31, v31, v48

    .line 1806
    const/16 v48, 0x1

    const/16 v49, 0x0

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v50, v0

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->max(II)I

    move-result v49

    aput v49, v12, v48

    .line 1807
    move/from16 v43, v31

    .line 1808
    .local v43, "titleRight":I
    move/from16 v38, v31

    .line 1810
    .local v38, "subtitleRight":I
    if-eqz v20, :cond_b

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1812
    .restart local v24    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v48

    sub-int v42, v43, v48

    .line 1813
    .local v42, "titleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v48

    add-int v39, v44, v48

    .line 1814
    .local v39, "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v42

    move/from16 v2, v44

    move/from16 v3, v43

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1815
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginEnd:I

    move/from16 v48, v0

    sub-int v43, v42, v48

    .line 1816
    move-object/from16 v0, v24

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    move/from16 v48, v0

    add-int v44, v39, v48

    .line 1818
    .end local v24    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .end local v39    # "titleBottom":I
    .end local v42    # "titleLeft":I
    :cond_b
    if-eqz v19, :cond_c

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1820
    .restart local v24    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->topMargin:I

    move/from16 v48, v0

    add-int v44, v44, v48

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v48

    sub-int v37, v38, v48

    .line 1822
    .local v37, "subtitleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v48

    add-int v36, v44, v48

    .line 1823
    .local v36, "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v37

    move/from16 v2, v44

    move/from16 v3, v38

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1824
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginEnd:I

    move/from16 v48, v0

    sub-int v38, v38, v48

    .line 1825
    move-object/from16 v0, v24

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    move/from16 v48, v0

    add-int v44, v36, v48

    .line 1827
    .end local v24    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .end local v36    # "subtitleBottom":I
    .end local v37    # "subtitleLeft":I
    :cond_c
    if-eqz v40, :cond_d

    .line 1828
    move/from16 v0, v43

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 1863
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .end local v30    # "rd":I
    .end local v38    # "subtitleRight":I
    .end local v40    # "titleHasWidth":Z
    .end local v43    # "titleRight":I
    .end local v44    # "titleTop":I
    .end local v45    # "topChild":Landroid/view/View;
    .end local v46    # "toplp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v49, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1865
    .local v23, "leftViewsCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_d
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_1d

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    .line 1865
    add-int/lit8 v17, v17, 0x1

    goto :goto_d

    .line 1684
    .end local v5    # "alignmentHeight":I
    .end local v12    # "collapsingMargins":[I
    .end local v13    # "contentInsetLeft":I
    .end local v14    # "contentInsetRight":I
    .end local v16    # "height":I
    .end local v17    # "i":I
    .end local v18    # "isRtl":Z
    .end local v19    # "layoutSubtitle":Z
    .end local v20    # "layoutTitle":Z
    .end local v22    # "left":I
    .end local v23    # "leftViewsCount":I
    .end local v25    # "paddingBottom":I
    .end local v26    # "paddingLeft":I
    .end local v27    # "paddingRight":I
    .end local v28    # "paddingTop":I
    .end local v31    # "right":I
    .end local v41    # "titleHeight":I
    .end local v47    # "width":I
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1705
    .restart local v5    # "alignmentHeight":I
    .restart local v12    # "collapsingMargins":[I
    .restart local v16    # "height":I
    .restart local v18    # "isRtl":Z
    .restart local v22    # "left":I
    .restart local v25    # "paddingBottom":I
    .restart local v26    # "paddingLeft":I
    .restart local v27    # "paddingRight":I
    .restart local v28    # "paddingTop":I
    .restart local v31    # "right":I
    .restart local v47    # "width":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_1

    .line 1715
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_2

    .line 1725
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    goto/16 :goto_3

    .line 1742
    .restart local v13    # "contentInsetLeft":I
    .restart local v14    # "contentInsetRight":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_4

    .line 1752
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_5

    .line 1771
    .restart local v19    # "layoutSubtitle":Z
    .restart local v20    # "layoutTitle":Z
    .restart local v41    # "titleHeight":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v45, v0

    goto/16 :goto_6

    .line 1772
    .restart local v45    # "topChild":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    goto/16 :goto_7

    .line 1775
    .restart local v6    # "bottomChild":Landroid/view/View;
    .restart local v7    # "bottomlp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .restart local v46    # "toplp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_16
    const/16 v40, 0x0

    goto/16 :goto_8

    .line 1780
    .restart local v40    # "titleHasWidth":Z
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingTop()I

    move-result v48

    move-object/from16 v0, v46

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    add-int v48, v48, v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginTop:I

    move/from16 v49, v0

    add-int v44, v48, v49

    .line 1781
    .restart local v44    # "titleTop":I
    goto/16 :goto_a

    .line 1789
    .end local v44    # "titleTop":I
    .restart local v33    # "space":I
    .restart local v34    # "spaceAbove":I
    :cond_17
    sub-int v48, v16, v25

    sub-int v48, v48, v41

    sub-int v48, v48, v34

    sub-int v35, v48, v28

    .line 1791
    .local v35, "spaceBelow":I
    move-object/from16 v0, v46

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginBottom:I

    move/from16 v49, v0

    add-int v48, v48, v49

    move/from16 v0, v35

    move/from16 v1, v48

    if-ge v0, v1, :cond_a

    .line 1792
    const/16 v48, 0x0

    iget v0, v7, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginBottom:I

    move/from16 v50, v0

    add-int v49, v49, v50

    sub-int v49, v49, v35

    sub-int v49, v34, v49

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->max(II)I

    move-result v34

    goto/16 :goto_9

    .line 1799
    .end local v33    # "space":I
    .end local v34    # "spaceAbove":I
    .end local v35    # "spaceBelow":I
    :sswitch_1
    sub-int v48, v16, v25

    iget v0, v7, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    sub-int v48, v48, v49

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginBottom:I

    move/from16 v49, v0

    sub-int v48, v48, v49

    sub-int v44, v48, v41

    .restart local v44    # "titleTop":I
    goto/16 :goto_a

    .line 1804
    :cond_18
    const/16 v48, 0x0

    goto/16 :goto_b

    .line 1831
    :cond_19
    if-eqz v40, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginStart:I

    move/from16 v48, v0

    :goto_e
    const/16 v49, 0x0

    aget v49, v12, v49

    sub-int v21, v48, v49

    .line 1832
    .local v21, "ld":I
    const/16 v48, 0x0

    move/from16 v0, v48

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v48

    add-int v22, v22, v48

    .line 1833
    const/16 v48, 0x0

    const/16 v49, 0x0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v50, v0

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->max(II)I

    move-result v49

    aput v49, v12, v48

    .line 1834
    move/from16 v42, v22

    .line 1835
    .restart local v42    # "titleLeft":I
    move/from16 v37, v22

    .line 1837
    .restart local v37    # "subtitleLeft":I
    if-eqz v20, :cond_1a

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1839
    .restart local v24    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v48

    add-int v43, v42, v48

    .line 1840
    .restart local v43    # "titleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v48

    add-int v39, v44, v48

    .line 1841
    .restart local v39    # "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v42

    move/from16 v2, v44

    move/from16 v3, v43

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1842
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginEnd:I

    move/from16 v48, v0

    add-int v42, v43, v48

    .line 1843
    move-object/from16 v0, v24

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    move/from16 v48, v0

    add-int v44, v39, v48

    .line 1845
    .end local v24    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .end local v39    # "titleBottom":I
    .end local v43    # "titleRight":I
    :cond_1a
    if-eqz v19, :cond_1b

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1847
    .restart local v24    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->topMargin:I

    move/from16 v48, v0

    add-int v44, v44, v48

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v48

    add-int v38, v37, v48

    .line 1849
    .restart local v38    # "subtitleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v48

    add-int v36, v44, v48

    .line 1850
    .restart local v36    # "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v37

    move/from16 v2, v44

    move/from16 v3, v38

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1851
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginEnd:I

    move/from16 v48, v0

    add-int v37, v38, v48

    .line 1852
    move-object/from16 v0, v24

    iget v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->bottomMargin:I

    move/from16 v48, v0

    add-int v44, v36, v48

    .line 1854
    .end local v24    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .end local v36    # "subtitleBottom":I
    .end local v38    # "subtitleRight":I
    :cond_1b
    if-eqz v40, :cond_d

    .line 1855
    move/from16 v0, v42

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_c

    .line 1831
    .end local v21    # "ld":I
    .end local v37    # "subtitleLeft":I
    .end local v42    # "titleLeft":I
    :cond_1c
    const/16 v48, 0x0

    goto/16 :goto_e

    .line 1870
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .end local v40    # "titleHasWidth":Z
    .end local v44    # "titleTop":I
    .end local v45    # "topChild":Landroid/view/View;
    .end local v46    # "toplp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .restart local v17    # "i":I
    .restart local v23    # "leftViewsCount":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v49, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 1872
    .local v32, "rightViewsCount":I
    const/16 v17, 0x0

    :goto_f
    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_1e

    .line 1873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v31

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v31

    .line 1872
    add-int/lit8 v17, v17, 0x1

    goto :goto_f

    .line 1879
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v12}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v11

    .line 1881
    .local v11, "centerViewsWidth":I
    sub-int v48, v47, v26

    sub-int v48, v48, v27

    div-int/lit8 v48, v48, 0x2

    add-int v29, v26, v48

    .line 1882
    .local v29, "parentCenter":I
    div-int/lit8 v15, v11, 0x2

    .line 1883
    .local v15, "halfCenterViewsWidth":I
    sub-int v8, v29, v15

    .line 1884
    .local v8, "centerLeft":I
    add-int v9, v8, v11

    .line 1885
    .local v9, "centerRight":I
    move/from16 v0, v22

    if-ge v8, v0, :cond_20

    .line 1886
    move/from16 v8, v22

    .line 1891
    :cond_1f
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1892
    .local v10, "centerViewsCount":I
    const/16 v17, 0x0

    :goto_11
    move/from16 v0, v17

    if-ge v0, v10, :cond_21

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v8, v12, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v8

    .line 1892
    add-int/lit8 v17, v17, 0x1

    goto :goto_11

    .line 1887
    .end local v10    # "centerViewsCount":I
    :cond_20
    move/from16 v0, v31

    if-le v9, v0, :cond_1f

    .line 1888
    sub-int v48, v9, v31

    sub-int v8, v8, v48

    goto :goto_10

    .line 1897
    .restart local v10    # "centerViewsCount":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->clear()V

    .line 1898
    return-void

    .line 1778
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 37
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1556
    const/4 v6, 0x0

    .line 1557
    .local v6, "width":I
    const/16 v25, 0x0

    .line 1558
    .local v25, "height":I
    const/16 v22, 0x0

    .line 1560
    .local v22, "childState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTempMargins:[I

    .line 1563
    .local v13, "collapsingMargins":[I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1564
    const/16 v29, 0x1

    .line 1565
    .local v29, "marginStartIndex":I
    const/16 v28, 0x0

    .line 1573
    .local v28, "marginEndIndex":I
    :goto_0
    const/16 v33, 0x0

    .line 1574
    .local v33, "navWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1575
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v33, v3, v5

    .line 1578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->combineMeasuredStates(II)I

    move-result v22

    .line 1583
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1584
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v33, v3, v5

    .line 1588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->combineMeasuredStates(II)I

    move-result v22

    .line 1593
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getCurrentContentInsetStart()I

    move-result v24

    .line 1594
    .local v24, "contentInsetStart":I
    move/from16 v0, v24

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1595
    const/4 v3, 0x0

    sub-int v5, v24, v33

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v29

    .line 1597
    const/16 v32, 0x0

    .line 1598
    .local v32, "menuWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v32, v3, v5

    .line 1602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->combineMeasuredStates(II)I

    move-result v22

    .line 1607
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getCurrentContentInsetEnd()I

    move-result v23

    .line 1608
    .local v23, "contentInsetEnd":I
    move/from16 v0, v23

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1609
    const/4 v3, 0x0

    sub-int v5, v23, v32

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v28

    .line 1611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->combineMeasuredStates(II)I

    move-result v22

    .line 1619
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1620
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->combineMeasuredStates(II)I

    move-result v22

    .line 1627
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildCount()I

    move-result v21

    .line 1628
    .local v21, "childCount":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 1629
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1630
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 1631
    .local v27, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    move-object/from16 v0, v27

    iget v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1628
    :cond_5
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 1567
    .end local v4    # "child":Landroid/view/View;
    .end local v21    # "childCount":I
    .end local v23    # "contentInsetEnd":I
    .end local v24    # "contentInsetStart":I
    .end local v26    # "i":I
    .end local v27    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .end local v28    # "marginEndIndex":I
    .end local v29    # "marginStartIndex":I
    .end local v32    # "menuWidth":I
    .end local v33    # "navWidth":I
    :cond_6
    const/16 v29, 0x0

    .line 1568
    .restart local v29    # "marginStartIndex":I
    const/16 v28, 0x1

    .restart local v28    # "marginEndIndex":I
    goto/16 :goto_0

    .line 1636
    .restart local v4    # "child":Landroid/view/View;
    .restart local v21    # "childCount":I
    .restart local v23    # "contentInsetEnd":I
    .restart local v24    # "contentInsetStart":I
    .restart local v26    # "i":I
    .restart local v27    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    .restart local v32    # "menuWidth":I
    .restart local v33    # "navWidth":I
    :cond_7
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1638
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1639
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->combineMeasuredStates(II)I

    move-result v22

    goto :goto_2

    .line 1642
    .end local v4    # "child":Landroid/view/View;
    .end local v27    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_8
    const/16 v36, 0x0

    .line 1643
    .local v36, "titleWidth":I
    const/16 v34, 0x0

    .line 1644
    .local v34, "titleHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginBottom:I

    add-int v12, v3, v5

    .line 1645
    .local v12, "titleVertMargins":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginStart:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginEnd:I

    add-int v35, v3, v5

    .line 1646
    .local v35, "titleHorizMargins":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1647
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    add-int v10, v6, v35

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v13}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v36

    .line 1650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v36, v3, v5

    .line 1651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int v34, v3, v5

    .line 1652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->combineMeasuredStates(II)I

    move-result v22

    .line 1654
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1655
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v17, v6, v35

    add-int v19, v34, v12

    move-object/from16 v14, p0

    move/from16 v16, p1

    move/from16 v18, p2

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int v34, v34, v3

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->combineMeasuredStates(II)I

    move-result v22

    .line 1664
    :cond_a
    add-int v6, v6, v36

    .line 1665
    move/from16 v0, v25

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 1669
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v6, v3

    .line 1670
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int v25, v25, v3

    .line 1672
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x1000000

    and-int v5, v5, v22

    move/from16 v0, p1

    invoke-static {v3, v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->resolveSizeAndState(III)I

    move-result v31

    .line 1675
    .local v31, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v22, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->resolveSizeAndState(III)I

    move-result v30

    .line 1679
    .local v30, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->shouldCollapse()Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v30, 0x0

    .end local v30    # "measuredHeight":I
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setMeasuredDimension(II)V

    .line 1680
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1419
    move-object v2, p1

    check-cast v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;

    .line 1420
    .local v2, "ss":Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;
    invoke-virtual {v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1422
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->peekMenu()Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    move-result-object v1

    .line 1423
    .local v1, "menu":Landroid/view/Menu;
    :goto_0
    iget v3, v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;->expandedMenuItemId:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1424
    iget v3, v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1425
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1426
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1430
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v3, v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;->isOverflowOpen:Z

    if-eqz v3, :cond_1

    .line 1431
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->postShowOverflowMenu()V

    .line 1433
    :cond_1
    return-void

    .line 1422
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v0, 0x1

    .line 481
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 482
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsets:Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->setDirection(Z)V

    .line 483
    return-void

    .line 482
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1406
    new-instance v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1408
    .local v0, "state":Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1409
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;->expandedMenuItemId:I

    .line 1412
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$SavedState;->isOverflowOpen:Z

    .line 1414
    return-object v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1485
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1486
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1488
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1454
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 1455
    iput-boolean v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mEatingTouch:Z

    .line 1458
    :cond_0
    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mEatingTouch:Z

    if-nez v2, :cond_1

    .line 1459
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1460
    .local v1, "handled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1461
    iput-boolean v3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mEatingTouch:Z

    .line 1465
    .end local v1    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1466
    :cond_2
    iput-boolean v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mEatingTouch:Z

    .line 1469
    :cond_3
    return v3
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    .prologue
    .line 2087
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildCount()I

    move-result v1

    .line 2089
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2090
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2091
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    .line 2092
    .local v3, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    iget v4, v3, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eq v0, v4, :cond_0

    .line 2093
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeViewAt(I)V

    .line 2094
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2089
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2097
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setActionBarCallBack(Lcom/zte/mifavor/actionbar/ActionBarCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcom/zte/mifavor/actionbar/ActionBarCallBack;

    .prologue
    .line 2377
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCallBack:Lcom/zte/mifavor/actionbar/ActionBarCallBack;

    .line 2378
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .prologue
    .line 2118
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapsible:Z

    .line 2119
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->requestLayout()V

    .line 2120
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1
    .param p1, "insetEndWithActions"    # I

    .prologue
    .line 1283
    if-gez p1, :cond_0

    .line 1284
    const/high16 p1, -0x80000000

    .line 1286
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_1

    .line 1287
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetEndWithActions:I

    .line 1288
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1289
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->requestLayout()V

    .line 1292
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1
    .param p1, "insetStartWithNavigation"    # I

    .prologue
    .line 1241
    if-gez p1, :cond_0

    .line 1242
    const/high16 p1, -0x80000000

    .line 1244
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_1

    .line 1245
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsetStartWithNavigation:I

    .line 1246
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1247
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->requestLayout()V

    .line 1250
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsets:Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->setAbsolute(II)V

    .line 1167
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContentInsets:Lcom/zte/mifavor/actionbar/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/RtlSpacingHelper;->setRelative(II)V

    .line 1105
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 496
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 612
    if-eqz p1, :cond_2

    .line 613
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureLogoView()V

    .line 614
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addSystemView(Landroid/view/View;Z)V

    .line 621
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    :cond_1
    return-void

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeView(Landroid/view/View;)V

    .line 619
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 647
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 658
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureLogoView()V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 664
    :cond_1
    return-void
.end method

.method public setMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 538
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-nez v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureMenuView()V

    .line 543
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->peekMenu()Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    move-result-object v0

    .line 544
    .local v0, "oldMenu":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    if-eq v0, p1, :cond_0

    .line 548
    if-eqz v0, :cond_2

    .line 549
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mOuterActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->removeMenuPresenter(Lcom/zte/mifavor/actionbar/menu/MenuPresenter;)V

    .line 550
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->removeMenuPresenter(Lcom/zte/mifavor/actionbar/menu/MenuPresenter;)V

    .line 553
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_3

    .line 554
    new-instance v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v4}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;Lcom/zte/mifavor/actionbar/ToolBarActionBar$1;)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    .line 557
    :cond_3
    invoke-virtual {p2, v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 558
    if-eqz p1, :cond_4

    .line 559
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->addMenuPresenter(Lcom/zte/mifavor/actionbar/menu/MenuPresenter;Landroid/content/Context;)V

    .line 560
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->addMenuPresenter(Lcom/zte/mifavor/actionbar/menu/MenuPresenter;Landroid/content/Context;)V

    .line 567
    :goto_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iget v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setPopupTheme(I)V

    .line 568
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v1, p2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setPresenter(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V

    .line 569
    iput-object p2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mOuterActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .line 570
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mOuterActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->updateMenuView(Z)V

    goto :goto_0

    .line 562
    :cond_4
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v4}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V

    .line 563
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V

    .line 564
    invoke-virtual {p2, v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 565
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedMenuPresenter:Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "pcb"    # Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;

    .prologue
    .line 2127
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mActionMenuPresenterCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    .line 2128
    iput-object p2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuBuilderCallback:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;

    .line 2129
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setMenuCallbacks(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;)V

    .line 2132
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 894
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 895
    return-void

    .line 894
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 908
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureNavButtonView()V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 914
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 932
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 949
    if-eqz p1, :cond_2

    .line 950
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureNavButtonView()V

    .line 951
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addSystemView(Landroid/view/View;Z)V

    .line 958
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 961
    :cond_1
    return-void

    .line 954
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeView(Landroid/view/View;)V

    .line 956
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureNavButtonView()V

    .line 986
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 987
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mOnMenuItemClickListener:Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;

    .line 1083
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureMenu()V

    .line 1017
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 350
    iget v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 351
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupTheme:I

    .line 352
    if-nez p1, :cond_1

    .line 353
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupContext:Landroid/content/Context;

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 787
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 797
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 798
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 799
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 800
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 801
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 802
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 803
    iget v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 806
    :cond_0
    iget v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    .line 807
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 810
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addSystemView(Landroid/view/View;Z)V

    .line 817
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 818
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    :cond_3
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 821
    return-void

    .line 813
    :cond_4
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 814
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeView(Landroid/view/View;)V

    .line 815
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 839
    iput p2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextAppearance:I

    .line 840
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 843
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 863
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextColor:I

    .line 864
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 867
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 732
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 743
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 744
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 745
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 746
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    .line 747
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 748
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 749
    iget v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 752
    :cond_0
    iget v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextColor:I

    if-eqz v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 756
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 757
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addSystemView(Landroid/view/View;Z)V

    .line 763
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 764
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    :cond_3
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleText:Ljava/lang/CharSequence;

    .line 767
    return-void

    .line 759
    :cond_4
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 760
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeView(Landroid/view/View;)V

    .line 761
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 383
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginStart:I

    .line 384
    iput p2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginTop:I

    .line 385
    iput p3, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginEnd:I

    .line 386
    iput p4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginBottom:I

    .line 388
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->requestLayout()V

    .line 389
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 474
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginBottom:I

    .line 476
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->requestLayout()V

    .line 477
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 452
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginEnd:I

    .line 454
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->requestLayout()V

    .line 455
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 408
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginStart:I

    .line 410
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->requestLayout()V

    .line 411
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 430
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleMarginTop:I

    .line 432
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->requestLayout()V

    .line 433
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 828
    iput p2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextAppearance:I

    .line 829
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 832
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 851
    iput p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextColor:I

    .line 852
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 855
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .locals 4
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x2

    .line 2380
    move-object v1, p0

    .line 2381
    .local v1, "mToolbar":Landroid/view/View;
    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    .line 2382
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2383
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2384
    new-instance v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar$4;

    invoke-direct {v2, p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$4;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2410
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :goto_0
    return-object v0

    .line 2399
    :cond_0
    if-nez p1, :cond_1

    .line 2400
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2401
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2402
    new-instance v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar$5;

    invoke-direct {v2, p0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$5;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 2410
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2382
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2400
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
