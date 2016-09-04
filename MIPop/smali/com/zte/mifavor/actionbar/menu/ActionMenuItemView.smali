.class public Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;,
        Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mForwardingListener:Lcom/zte/mifavor/actionbar/menu/ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mPopupCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 76
    .local v2, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 77
    sget-object v3, Lcom/zte/extres/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/zte/extres/R$styleable;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mMinWidth:I

    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 84
    .local v1, "density":F
    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 86
    invoke-virtual {p0, p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0, p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 89
    const/4 v3, -0x1

    iput v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 90
    invoke-virtual {p0, v5}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setSaveEnabled(Z)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;)Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mPopupCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;)Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemInvoker:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;)Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    return-object v0
.end method

.method private shouldAllowTextWithIcon()Z
    .locals 5

    .prologue
    const/16 v4, 0x1e0

    .line 106
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 107
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 108
    .local v2, "width":I
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 109
    .local v1, "height":I
    if-ge v2, v4, :cond_1

    const/16 v3, 0x280

    if-lt v2, v3, :cond_0

    if-ge v1, v4, :cond_1

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 188
    .local v0, "visible":Z
    :goto_0
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 191
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v2

    .line 187
    goto :goto_0

    .line 191
    .restart local v0    # "visible":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getItemData()Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 125
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .line 127
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {p1, p0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getTitleForItemView(Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setId(I)V

    .line 131
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setVisibility(I)V

    .line 132
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 134
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mForwardingListener:Lcom/zte/mifavor/actionbar/menu/ForwardingListener;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mForwardingListener:Lcom/zte/mifavor/actionbar/menu/ForwardingListener;

    .line 139
    :cond_0
    return-void

    .line 131
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemInvoker:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemInvoker:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z

    .line 155
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 98
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 99
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 282
    :goto_0
    return v9

    .line 258
    :cond_0
    const/4 v11, 0x2

    new-array v6, v11, [I

    .line 259
    .local v6, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 260
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 261
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 263
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 264
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getWidth()I

    move-result v8

    .line 265
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    .line 266
    .local v3, "height":I
    aget v11, v6, v10

    div-int/lit8 v12, v3, 0x2

    add-int v4, v11, v12

    .line 267
    .local v4, "midy":I
    aget v11, v6, v9

    div-int/lit8 v12, v8, 0x2

    add-int v5, v11, v12

    .line 268
    .local v5, "referenceX":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v11

    if-nez v11, :cond_1

    .line 269
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 270
    .local v7, "screenWidth":I
    sub-int v5, v7, v5

    .line 272
    .end local v7    # "screenWidth":I
    :cond_1
    iget-object v11, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v11}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v1, v11, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 273
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 275
    const v9, 0x800035

    aget v11, v6, v10

    add-int/2addr v11, v3

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-virtual {v0, v9, v5, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 281
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v9, v10

    .line 282
    goto :goto_0

    .line 279
    :cond_2
    const/16 v11, 0x51

    invoke-virtual {v0, v11, v9, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 287
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    .line 288
    .local v3, "textVisible":Z
    if-eqz v3, :cond_0

    iget v7, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v7, :cond_0

    .line 289
    iget v7, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 293
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 295
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 296
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 297
    .local v6, "widthSize":I
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v1

    .line 298
    .local v1, "oldMeasuredWidth":I
    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_3

    iget v7, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 301
    .local v2, "targetWidth":I
    :goto_0
    if-eq v5, v11, :cond_1

    iget v7, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v7, :cond_1

    if-ge v1, v2, :cond_1

    .line 303
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 307
    :cond_1
    if-nez v3, :cond_2

    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 310
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    .line 311
    .local v4, "w":I
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 312
    .local v0, "dw":I
    sub-int v7, v4, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 314
    .end local v0    # "dw":I
    .end local v4    # "w":I
    :cond_2
    return-void

    .line 298
    .end local v2    # "targetWidth":I
    :cond_3
    iget v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 345
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mForwardingListener:Lcom/zte/mifavor/actionbar/menu/ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mForwardingListener:Lcom/zte/mifavor/actionbar/menu/ForwardingListener;

    invoke-virtual {v0, p0, p1}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 171
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 175
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 179
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 180
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->actionFormatChanged()V

    .line 184
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 195
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 196
    if-eqz p1, :cond_2

    .line 197
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 198
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 199
    .local v0, "height":I
    iget v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v2, v3, :cond_0

    .line 200
    iget v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 201
    .local v1, "scale":F
    iget v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 202
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 204
    .end local v1    # "scale":F
    :cond_0
    iget v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v0, v3, :cond_1

    .line 205
    iget v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 206
    .restart local v1    # "scale":F
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 207
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 209
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    invoke-virtual {p0, p1, v5, v5, v5}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 213
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 214
    return-void
.end method

.method public setItemInvoker(Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemInvoker:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;

    .line 159
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 117
    return-void
.end method

.method public setPopupCallback(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0
    .param p1, "popupCallback"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mPopupCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;

    .line 163
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 222
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 227
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 229
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method
