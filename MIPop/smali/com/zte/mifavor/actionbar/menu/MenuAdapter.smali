.class public Lcom/zte/mifavor/actionbar/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# static fields
.field static final ITEM_LAYOUT:I


# instance fields
.field mAdapterMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

.field private mExpandedIndex:I

.field private mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mOverflowOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/zte/extres/R$layout;->popup_menu_item_layout:I

    sput v0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "overflowOnly"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mExpandedIndex:I

    .line 39
    iput-boolean p3, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mOverflowOnly:Z

    .line 40
    iput-object p2, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mAdapterMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->findExpandedIndex()V

    .line 43
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 95
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mAdapterMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getExpandedItem()Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    move-result-object v1

    .line 96
    .local v1, "expandedItem":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 97
    iget-object v5, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mAdapterMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 98
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 99
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 100
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .line 101
    .local v3, "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 102
    iput v2, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mExpandedIndex:I

    .line 108
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 99
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getAdapterMenu()Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mAdapterMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 54
    iget-boolean v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mAdapterMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 59
    :goto_1
    return v1

    .line 54
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mAdapterMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 59
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getForceShowIcon()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mForceShowIcon:Z

    return v0
.end method

.method public getItem(I)Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    iget-boolean v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mAdapterMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 70
    add-int/lit8 p1, p1, 0x1

    .line 72
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    return-object v1

    .line 67
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mAdapterMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->getItem(I)Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 82
    if-nez p2, :cond_0

    .line 83
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->ITEM_LAYOUT:I

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 86
    check-cast v0, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;

    .line 87
    .local v0, "itemView":Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;
    iget-boolean v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 88
    check-cast v1, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->getItem(I)Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/zte/mifavor/actionbar/menu/MenuView$ItemView;->initialize(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;I)V

    .line 91
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->findExpandedIndex()V

    .line 113
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 114
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuAdapter;->mForceShowIcon:Z

    .line 51
    return-void
.end method
