.class Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "TabButtonBar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/TabButtonBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/zte/mifavor/widget/TabButtonBar;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/widget/TabButtonBar;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/widget/TabButtonBar;Lcom/zte/mifavor/widget/TabButtonBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/widget/TabButtonBar;
    .param p2, "x1"    # Lcom/zte/mifavor/widget/TabButtonBar$1;

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;-><init>(Lcom/zte/mifavor/widget/TabButtonBar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v2, 0x0

    .line 1079
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v0, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v0, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v1, v1, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/TabButtonBar;->removeView(Landroid/view/View;)V

    .line 1084
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    # getter for: Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/zte/mifavor/widget/TabButtonBar;->access$300(Lcom/zte/mifavor/widget/TabButtonBar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/TabButtonBar;->removeView(Landroid/view/View;)V

    .line 1085
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iput-object v2, v0, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    .line 1088
    iput-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1089
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/TabButtonBar;->requestLayout()V

    .line 1090
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1092
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 1050
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    # invokes: Lcom/zte/mifavor/widget/TabButtonBar;->ensureCollapseButtonView()V
    invoke-static {v1}, Lcom/zte/mifavor/widget/TabButtonBar;->access$200(Lcom/zte/mifavor/widget/TabButtonBar;)V

    .line 1051
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    # getter for: Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/zte/mifavor/widget/TabButtonBar;->access$300(Lcom/zte/mifavor/widget/TabButtonBar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    if-eq v1, v2, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    # getter for: Lcom/zte/mifavor/widget/TabButtonBar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/zte/mifavor/widget/TabButtonBar;->access$300(Lcom/zte/mifavor/widget/TabButtonBar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/TabButtonBar;->addView(Landroid/view/View;)V

    .line 1054
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    .line 1055
    iput-object p2, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1056
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v1, v1, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    if-eq v1, v2, :cond_1

    .line 1057
    new-instance v0, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;

    invoke-direct {v0, v3, v3}, Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;-><init>(II)V

    .line 1060
    .local v0, "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v1, v1, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1061
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v2, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v2, v2, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/TabButtonBar;->addView(Landroid/view/View;)V

    .line 1065
    .end local v0    # "lp":Lcom/zte/mifavor/widget/TabButtonBar$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/TabButtonBar;->requestLayout()V

    .line 1066
    invoke-virtual {p2, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1068
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v1, v1, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_2

    .line 1069
    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/widget/TabButtonBar;

    iget-object v1, v1, Lcom/zte/mifavor/widget/TabButtonBar;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1072
    :cond_2
    return v4
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1045
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1097
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1003
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 995
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 998
    :cond_0
    iput-object p2, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 999
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1041
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1107
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1036
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1032
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 1009
    iget-object v4, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1010
    const/4 v1, 0x0

    .line 1012
    .local v1, "found":Z
    iget-object v4, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1013
    iget-object v4, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1014
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1015
    iget-object v4, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1016
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1017
    const/4 v1, 0x1

    .line 1023
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1025
    iget-object v4, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcom/zte/mifavor/widget/TabButtonBar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1028
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 1014
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
