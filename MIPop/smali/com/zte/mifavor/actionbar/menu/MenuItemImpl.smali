.class public final Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sLanguage:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "showAsAction"    # I

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIconResId:I

    .line 73
    const/16 v1, 0x10

    iput v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    .line 81
    iput v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShowAsAction:I

    .line 86
    iput-boolean v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 119
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "lang":Ljava/lang/String;
    sget-object v1, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->sLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    :cond_0
    sput-object v0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->sLanguage:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$string;->prepend_shortcut_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$string;->menu_enter_shortcut_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$string;->menu_delete_shortcut_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$string;->menu_space_shortcut_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    .line 133
    :cond_1
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 134
    iput p3, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mId:I

    .line 135
    iput p2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mGroup:I

    .line 136
    iput p4, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mCategoryOrder:I

    .line 137
    iput p5, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mOrdering:I

    .line 138
    iput-object p6, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 139
    iput p7, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShowAsAction:I

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)V

    .line 513
    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 634
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 639
    const/4 v0, 0x1

    goto :goto_0

    .line 642
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->collapseItemActionView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 620
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->expandItemActionView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 587
    :goto_0
    return-object v0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 585
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    goto :goto_0

    .line 587
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 230
    iget-char v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 384
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 395
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIconResId:I

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 390
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIconResId:I

    .line 391
    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 395
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 200
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 244
    iget-char v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    .line 281
    .local v1, "shortcut":C
    if-nez v1, :cond_0

    .line 282
    const-string v2, ""

    .line 305
    :goto_0
    return-object v2

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "sb":Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_0

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 289
    :sswitch_0
    sget-object v2, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 293
    :sswitch_1
    sget-object v2, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 297
    :sswitch_2
    sget-object v2, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mSubMenu:Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "itemView"    # Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;

    .prologue
    .line 345
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 657
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v1, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 663
    :cond_1
    return v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mSubMenu:Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 148
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v2, v3, p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 417
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 439
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 463
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    iget v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v2}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 464
    goto :goto_0

    .line 466
    :cond_2
    iget v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public requestsActionButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 527
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 2

    .prologue
    .line 531
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->reset()V

    .line 599
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 600
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 601
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 602
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    new-instance v1, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl$1;-><init>(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 609
    :cond_1
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 574
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 575
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 576
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 577
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    .line 566
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 567
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)V

    .line 570
    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    .line 668
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 669
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C

    .prologue
    .line 234
    iget-char v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 240
    :goto_0
    return-object p0

    .line 236
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 238
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 226
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .param p1, "checkable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 421
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    .line 422
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    .line 423
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 427
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    .line 422
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 443
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 451
    :goto_0
    return-object p0

    .line 448
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 455
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    .line 456
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    .line 457
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 460
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 456
    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 191
    return-object p0

    .line 186
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .param p1, "exclusive"    # Z

    .prologue
    .line 431
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    .line 432
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 408
    iput p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIconResId:I

    .line 411
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 413
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 399
    iput v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIconResId:I

    .line 400
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 401
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 403
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 217
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1
    .param p1, "isActionButton"    # Z

    .prologue
    .line 535
    if-eqz p1, :cond_0

    .line 536
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    .line 540
    :goto_0
    return-void

    .line 538
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 505
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C

    .prologue
    .line 248
    iget-char v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 254
    :goto_0
    return-object p0

    .line 250
    :cond_0
    iput-char p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 252
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 653
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "clickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 495
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 258
    iput-char p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 259
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 261
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 263
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 547
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :pswitch_0
    iput p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShowAsAction:I

    .line 560
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)V

    .line 561
    return-void

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setShowAsAction(I)V

    .line 615
    return-object p0
.end method

.method setSubMenu(Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;)V
    .locals 1
    .param p1, "subMenu"    # Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mSubMenu:Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    .line 329
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 330
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 353
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 355
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mSubMenu:Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mSubMenu:Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 359
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 374
    if-nez p1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 380
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemVisibleChanged(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)V

    .line 490
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 479
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    .line 480
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    .line 481
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 480
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showsTextAsAction()Z
    .locals 2

    .prologue
    .line 543
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
