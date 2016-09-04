.class public Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;
.super Lcom/zte/mifavor/actionbar/menu/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x15

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 135
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 136
    .local v0, "config":Landroid/content/res/Configuration;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 138
    iput v4, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 139
    iput v5, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iput v5, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 142
    iput v4, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 152
    return-void
.end method

.method public bridge synthetic hasFocus()Z
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->isFocused()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 178
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

    if-eqz v9, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 183
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v9, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v9, :cond_3

    move-object v1, v0

    .line 184
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 185
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 186
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    .line 193
    .end local v1    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v5, "menuAdapter":Lcom/zte/mifavor/actionbar/menu/MenuAdapter;
    :goto_0
    const/4 v6, 0x0

    .line 194
    .local v6, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v8

    .line 196
    .local v8, "position":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 197
    sub-int v3, v8, v2

    .line 198
    .local v3, "itemPosition":I
    if-ltz v3, :cond_0

    invoke-virtual {v5}, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 199
    invoke-virtual {v5, v3}, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->getItem(I)Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    move-result-object v6

    .line 204
    .end local v3    # "itemPosition":I
    .end local v8    # "position":I
    :cond_0
    iget-object v7, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 205
    .local v7, "oldMenuItem":Landroid/view/MenuItem;
    if-eq v7, v6, :cond_2

    .line 206
    invoke-virtual {v5}, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->getAdapterMenu()Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    move-result-object v4

    .line 207
    .local v4, "menu":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    if-eqz v7, :cond_1

    .line 208
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

    invoke-interface {v9, v4, v7}, Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;->onItemHoverExit(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 211
    :cond_1
    iput-object v6, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 213
    if-eqz v6, :cond_2

    .line 214
    iget-object v9, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

    invoke-interface {v9, v4, v6}, Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;->onItemHoverEnter(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 219
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "headersCount":I
    .end local v4    # "menu":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .end local v5    # "menuAdapter":Lcom/zte/mifavor/actionbar/menu/MenuAdapter;
    .end local v6    # "menuItem":Landroid/view/MenuItem;
    .end local v7    # "oldMenuItem":Landroid/view/MenuItem;
    :cond_2
    invoke-super {p0, p1}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 188
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "headersCount":I
    move-object v5, v0

    .line 189
    check-cast v5, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    .restart local v5    # "menuAdapter":Lcom/zte/mifavor/actionbar/menu/MenuAdapter;
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;

    .line 157
    .local v0, "selectedItem":Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v1, :cond_1

    .line 158
    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->getItemData()Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v4

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    move v1, v2

    .line 172
    :goto_0
    return v1

    .line 165
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v1, :cond_2

    .line 166
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 169
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->getAdapterMenu()Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->close(Z)V

    move v1, v2

    .line 170
    goto :goto_0

    .line 172
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setHoverListener(Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;)V
    .locals 0
    .param p1, "hoverListener"    # Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/zte/mifavor/actionbar/menu/MenuItemHoverListener;

    .line 148
    return-void
.end method
