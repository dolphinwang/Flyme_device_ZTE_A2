.class public Lcom/zte/mifavor/actionbar/ActionBarContextView;
.super Lcom/zte/mifavor/actionbar/AbsActionBarView;
.source "ActionBarContextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/actionbar/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    sget-object v1, Lcom/zte/extres/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_acb:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    sget v1, Lcom/zte/extres/R$styleable;->ActionMode_android_titleTextStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleStyleRes:I

    .line 83
    sget v1, Lcom/zte/extres/R$styleable;->ActionMode_android_subtitleTextStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSubtitleStyleRes:I

    .line 86
    sget v1, Lcom/zte/extres/R$styleable;->ActionMode_android_height:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mContentHeight:I

    .line 89
    sget v1, Lcom/zte/extres/R$styleable;->ActionMode_android_backgroundSplit:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 92
    sget v1, Lcom/zte/extres/R$layout;->action_mode_close_item:I

    iput v1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCloseItemLayout:I

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method

.method private initTitle()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 177
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 179
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/zte/extres/R$layout;->action_bar_title_item:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 180
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 181
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/zte/extres/R$id;->action_bar_title:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 182
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v7, Lcom/zte/extres/R$id;->action_bar_subtitle:I

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 183
    iget v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget v7, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 186
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget v7, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 191
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v4

    .line 195
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v4

    .line 196
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_4

    .line 199
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 201
    :cond_4
    return-void

    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_5
    move v1, v5

    .line 194
    goto :goto_0

    .restart local v1    # "hasTitle":Z
    :cond_6
    move v0, v5

    .line 195
    goto :goto_1

    .restart local v0    # "hasSubtitle":Z
    :cond_7
    move v3, v6

    .line 196
    goto :goto_2
.end method


# virtual methods
.method public closeMode()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->killMode()V

    .line 255
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 294
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 299
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 8
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 204
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v4, :cond_2

    .line 205
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 206
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCloseItemLayout:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    .line 207
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 212
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    sget v5, Lcom/zte/extres/R$id;->action_mode_close_button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "closeButton":Landroid/view/View;
    new-instance v4, Lcom/zte/mifavor/actionbar/ActionBarContextView$1;

    invoke-direct {v4, p0, p1}, Lcom/zte/mifavor/actionbar/ActionBarContextView$1;-><init>(Lcom/zte/mifavor/actionbar/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 220
    .local v3, "menu":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v4}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 223
    :cond_1
    new-instance v4, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .line 224
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v4, v7}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 226
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 228
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_3

    .line 229
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->addMenuPresenter(Lcom/zte/mifavor/actionbar/menu/MenuPresenter;Landroid/content/Context;)V

    .line 230
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/zte/mifavor/actionbar/menu/MenuView;

    move-result-object v4

    check-cast v4, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iput-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    .line 231
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {p0, v4, v2}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :goto_1
    return-void

    .line 208
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "menu":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    :cond_2
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 209
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 235
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "menu":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    :cond_3
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5, v7}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 238
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 240
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 241
    iget v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mContentHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 242
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->addMenuPresenter(Lcom/zte/mifavor/actionbar/menu/MenuPresenter;Landroid/content/Context;)V

    .line 243
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/zte/mifavor/actionbar/menu/MenuView;

    move-result-object v4

    check-cast v4, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iput-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    .line 244
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public killMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->removeAllViews()V

    .line 259
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 262
    :cond_0
    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 263
    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    .line 264
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->onDetachedFromWindow()V

    .line 100
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 102
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 104
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 422
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 424
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 425
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->isLayoutRtl()Z

    move-result v5

    .line 386
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_4

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    .line 387
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 388
    .local v3, "y":I
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getPaddingBottom()I

    move-result v1

    sub-int v4, v0, v1

    .line 390
    .local v4, "contentHeight":I
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 392
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_5

    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 393
    .local v14, "startMargin":I
    :goto_1
    if-eqz v5, :cond_6

    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 394
    .local v12, "endMargin":I
    :goto_2
    invoke-static {v2, v14, v5}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 395
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 396
    invoke-static {v2, v12, v5}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 400
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 405
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 408
    :cond_2
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    .line 410
    :goto_3
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v0, :cond_3

    .line 411
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-nez v5, :cond_8

    const/4 v11, 0x1

    :goto_4
    move-object v6, p0

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 413
    :cond_3
    return-void

    .line 386
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_4
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getPaddingLeft()I

    move-result v2

    goto/16 :goto_0

    .line 392
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 393
    .restart local v14    # "startMargin":I
    :cond_6
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    .line 408
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_7
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getPaddingRight()I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_3

    .line 411
    :cond_8
    const/4 v11, 0x0

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 304
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 305
    .local v23, "widthMode":I
    const/high16 v24, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 306
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 310
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 311
    .local v12, "heightMode":I
    if-nez v12, :cond_1

    .line 312
    new-instance v24, Ljava/lang/IllegalStateException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " can only be used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 316
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 318
    .local v5, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mContentHeight:I

    .line 321
    .local v15, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getPaddingTop()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getPaddingBottom()I

    move-result v25

    add-int v22, v24, v25

    .line 322
    .local v22, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getPaddingLeft()I

    move-result v24

    sub-int v24, v5, v24

    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getPaddingRight()I

    move-result v25

    sub-int v3, v24, v25

    .line 323
    .local v3, "availableWidth":I
    sub-int v11, v15, v22

    .line 324
    .local v11, "height":I
    const/high16 v24, -0x80000000

    move/from16 v0, v24

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 326
    .local v4, "childSpecHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mClose:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 329
    .local v14, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v24, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v25, v0

    add-int v24, v24, v25

    sub-int v3, v3, v24

    .line 332
    .end local v14    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    .line 337
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 338
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleOptional:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 339
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v20

    .line 341
    .local v20, "titleWidthSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v19

    .line 343
    .local v19, "titleWidth":I
    move/from16 v0, v19

    if-gt v0, v3, :cond_9

    const/16 v18, 0x1

    .line 344
    .local v18, "titleFits":Z
    :goto_1
    if-eqz v18, :cond_4

    .line 345
    sub-int v3, v3, v19

    .line 347
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    if-eqz v18, :cond_a

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 355
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/high16 v10, 0x40000000    # 2.0f

    .line 357
    .local v10, "customWidthMode":I
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    if-ltz v24, :cond_d

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 359
    .local v9, "customWidth":I
    :goto_5
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_e

    const/high16 v8, 0x40000000    # 2.0f

    .line 361
    .local v8, "customHeightMode":I
    :goto_6
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    if-ltz v24, :cond_f

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 363
    .local v7, "customHeight":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/view/View;->measure(II)V

    .line 367
    .end local v7    # "customHeight":I
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mContentHeight:I

    move/from16 v24, v0

    if-gtz v24, :cond_11

    .line 368
    const/16 v16, 0x0

    .line 369
    .local v16, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getChildCount()I

    move-result v6

    .line 370
    .local v6, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8
    if-ge v13, v6, :cond_10

    .line 371
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 372
    .local v21, "v":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    add-int v17, v24, v22

    .line 373
    .local v17, "paddedViewHeight":I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 374
    move/from16 v16, v17

    .line 370
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 318
    .end local v3    # "availableWidth":I
    .end local v4    # "childSpecHeight":I
    .end local v6    # "count":I
    .end local v11    # "height":I
    .end local v13    # "i":I
    .end local v15    # "maxHeight":I
    .end local v16    # "measuredHeight":I
    .end local v17    # "paddedViewHeight":I
    .end local v21    # "v":Landroid/view/View;
    .end local v22    # "verticalPadding":I
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    goto/16 :goto_0

    .line 343
    .restart local v3    # "availableWidth":I
    .restart local v4    # "childSpecHeight":I
    .restart local v11    # "height":I
    .restart local v15    # "maxHeight":I
    .restart local v19    # "titleWidth":I
    .restart local v20    # "titleWidthSpec":I
    .restart local v22    # "verticalPadding":I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 347
    .restart local v18    # "titleFits":Z
    :cond_a
    const/16 v24, 0x8

    goto/16 :goto_2

    .line 349
    .end local v18    # "titleFits":Z
    .end local v19    # "titleWidth":I
    .end local v20    # "titleWidthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v3

    goto/16 :goto_3

    .line 355
    .restart local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    const/high16 v10, -0x80000000

    goto/16 :goto_4

    .restart local v10    # "customWidthMode":I
    :cond_d
    move v9, v3

    .line 357
    goto :goto_5

    .line 359
    .restart local v9    # "customWidth":I
    :cond_e
    const/high16 v8, -0x80000000

    goto :goto_6

    .restart local v8    # "customHeightMode":I
    :cond_f
    move v7, v11

    .line 361
    goto :goto_7

    .line 377
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "count":I
    .restart local v13    # "i":I
    .restart local v16    # "measuredHeight":I
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->setMeasuredDimension(II)V

    .line 381
    .end local v6    # "count":I
    .end local v13    # "i":I
    .end local v16    # "measuredHeight":I
    :goto_9
    return-void

    .line 379
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->setMeasuredDimension(II)V

    goto :goto_9
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mContentHeight:I

    .line 141
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 148
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 152
    :cond_1
    if-eqz p1, :cond_2

    .line 153
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->requestLayout()V

    .line 156
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 6
    .param p1, "split"    # Z

    .prologue
    const/4 v5, -0x1

    .line 108
    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_2

    .line 109
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v2, :cond_1

    .line 111
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 113
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    .line 114
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/zte/mifavor/actionbar/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    .line 115
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 117
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->setSplitToolbar(Z)V

    .line 137
    :cond_2
    return-void

    .line 121
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 124
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 126
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    iget v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mContentHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v2, p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/zte/mifavor/actionbar/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    .line 129
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 131
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    :cond_4
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 165
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->initTitle()V

    .line 166
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 160
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->initTitle()V

    .line 161
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->requestLayout()V

    .line 437
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mTitleOptional:Z

    .line 438
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarContextView;->mActionMenuPresenter:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
