.class public Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field private mSubMenuArrowView:Landroid/widget/ImageView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    sget v0, Lcom/zte/extres/R$attr;->listMenuViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    sget-object v1, Lcom/zte/extres/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/zte/extres/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    sget v1, Lcom/zte/extres/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTextAppearance:I

    .line 72
    sget v1, Lcom/zte/extres/R$styleable;->MenuView_preserveIconSpacing:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 74
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 75
    sget v1, Lcom/zte/extres/R$styleable;->MenuView_subMenuArrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 273
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/zte/extres/R$layout;->list_menu_item_checkbox:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 276
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 277
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 258
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/zte/extres/R$layout;->list_menu_item_icon:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 260
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 261
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 265
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/zte/extres/R$layout;->list_menu_item_radio:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 268
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 269
    return-void
.end method

.method private setSubMenuArrowVisible(Z)V
    .locals 2
    .param p1, "hasSubmenu"    # Z

    .prologue
    .line 200
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    :cond_0
    return-void

    .line 201
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public getItemData()Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 108
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .line 109
    iput p2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mMenuType:I

    .line 111
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->setVisibility(I)V

    .line 113
    invoke-virtual {p1, p0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getTitleForItemView(Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->setCheckable(Z)V

    .line 115
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 116
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->setEnabled(Z)V

    .line 118
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 119
    return-void

    .line 111
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 92
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    sget v0, Lcom/zte/extres/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 95
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 100
    :cond_0
    sget v0, Lcom/zte/extres/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/zte/extres/R$id;->submenuarrow:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 298
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 301
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 245
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 248
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 249
    .local v0, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 250
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 253
    .end local v0    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 254
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 5
    .param p1, "checkable"    # Z

    .prologue
    const/16 v3, 0x8

    .line 140
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 150
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->insertRadioButton()V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 154
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 163
    .local v2, "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_7

    .line 164
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 166
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 167
    .local v1, "newVisibility":I
    :goto_2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 172
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 173
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    .line 156
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v1    # "newVisibility":I
    .end local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_4
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_5

    .line 157
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->insertCheckBox()V

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 160
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_1

    :cond_6
    move v1, v3

    .line 166
    goto :goto_2

    .line 176
    :cond_7
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 177
    :cond_8
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 184
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->insertRadioButton()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 196
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 197
    return-void

    .line 190
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->insertCheckBox()V

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 123
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 220
    .local v0, "showIcon":Z
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    .line 241
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    .end local v0    # "showIcon":Z
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v0, v1

    .line 219
    goto :goto_0

    .line 224
    .restart local v0    # "showIcon":Z
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    .line 229
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->insertIconView()V

    .line 232
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    .line 233
    :cond_6
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 233
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 239
    :cond_8
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 206
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 209
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 214
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :cond_1
    return-void

    .line 206
    .end local v0    # "newVisibility":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 126
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
