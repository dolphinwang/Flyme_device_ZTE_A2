.class Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ToolBarActionBar.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/ToolBarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

.field mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)V
    .locals 0

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;Lcom/zte/mifavor/actionbar/ToolBarActionBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/actionbar/ToolBarActionBar;
    .param p2, "x1"    # Lcom/zte/mifavor/actionbar/ToolBarActionBar$1;

    .prologue
    .line 2251
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "item"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .prologue
    const/4 v2, 0x0

    .line 2342
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 2343
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2346
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v1, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeView(Landroid/view/View;)V

    .line 2347
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->access$300(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeView(Landroid/view/View;)V

    .line 2348
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iput-object v2, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    .line 2350
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addChildrenForExpandedActionView()V

    .line 2351
    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .line 2352
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->requestLayout()V

    .line 2353
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2355
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "item"    # Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x1

    .line 2313
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    # invokes: Lcom/zte/mifavor/actionbar/ToolBarActionBar;->ensureCollapseButtonView()V
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->access$200(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)V

    .line 2314
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->access$300(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    if-eq v1, v2, :cond_0

    .line 2315
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mCollapseButtonView:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->access$300(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addView(Landroid/view/View;)V

    .line 2317
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {p2}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    .line 2318
    iput-object p2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .line 2319
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v1, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    if-eq v1, v2, :cond_1

    .line 2320
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->generateDefaultLayoutParams()Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;

    move-result-object v0

    .line 2321
    .local v0, "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    const v1, 0x800003

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mButtonGravity:I
    invoke-static {v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->access$400(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->gravity:I

    .line 2322
    const/4 v1, 0x2

    iput v1, v0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;->mViewType:I

    .line 2323
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v1, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2324
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v2, v2, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->addView(Landroid/view/View;)V

    .line 2327
    .end local v0    # "lp":Lcom/zte/mifavor/actionbar/ToolBarActionBar$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->removeChildrenForExpandedActionView()V

    .line 2328
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->requestLayout()V

    .line 2329
    invoke-virtual {p2, v3}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2331
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v1, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_2

    .line 2332
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iget-object v1, v1, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2335
    :cond_2
    return v3
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 2308
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 2360
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/zte/mifavor/actionbar/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 2266
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->collapseItemActionView(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z

    .line 2261
    :cond_0
    iput-object p2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 2262
    return-void
.end method

.method public onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 2304
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2370
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2365
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    .prologue
    .line 2299
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    .prologue
    .line 2295
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 2272
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 2273
    const/4 v1, 0x0

    .line 2275
    .local v1, "found":Z
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 2276
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->size()I

    move-result v0

    .line 2277
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2278
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2279
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 2280
    const/4 v1, 0x1

    .line 2286
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 2288
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z

    .line 2291
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 2277
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
