.class public abstract Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/MenuPresenter;


# instance fields
.field private mCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 58
    iput p2, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 59
    iput p3, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 60
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 133
    return-void
.end method

.method public abstract bindItemView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "item"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "item"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 142
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 176
    instance-of v1, p2, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 177
    check-cast v0, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;

    .line 181
    .local v0, "itemView":Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->bindItemView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;)V

    .line 182
    check-cast v0, Landroid/view/View;

    .end local v0    # "itemView":Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;
    return-object v0

    .line 179
    :cond_0
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;

    move-result-object v0

    .restart local v0    # "itemView":Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/zte/mifavor/actionbar/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/actionbar/menu/MenuView;

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    .line 73
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuView;->initialize(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    iput-object p2, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 67
    return-void
.end method

.method public onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V

    .line 208
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)Z

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mCallback:Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    .line 148
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mId:I

    .line 235
    return-void
.end method

.method public shouldIncludeItem(ILcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10
    .param p1, "cleared"    # Z

    .prologue
    .line 84
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 85
    .local v7, "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_1

    .line 119
    :cond_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    .line 88
    .local v0, "childIndex":I
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eqz v9, :cond_6

    .line 89
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->flagActionItems()V

    .line 90
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v9}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 91
    .local v8, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 93
    .local v4, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 94
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .line 95
    .local v3, "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    invoke-virtual {p0, v0, v3}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 96
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "convertView":Landroid/view/View;
    instance-of v9, v1, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;

    if-eqz v9, :cond_5

    move-object v9, v1

    check-cast v9, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;

    invoke-interface {v9}, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;->getItemData()Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    move-result-object v6

    .line 99
    .local v6, "oldItem":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    :goto_1
    invoke-virtual {p0, v3, v1, v7}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->getItemView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 100
    .local v5, "itemView":Landroid/view/View;
    if-eq v3, v6, :cond_2

    .line 102
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 103
    invoke-virtual {v5}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 105
    :cond_2
    if-eq v5, v1, :cond_3

    .line 106
    invoke-virtual {p0, v5, v0}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 108
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 93
    .end local v1    # "convertView":Landroid/view/View;
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "oldItem":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .restart local v1    # "convertView":Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 114
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .end local v4    # "itemCount":I
    .end local v8    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 115
    invoke-virtual {p0, v7, v0}, Lcom/zte/mifavor/actionbar/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
