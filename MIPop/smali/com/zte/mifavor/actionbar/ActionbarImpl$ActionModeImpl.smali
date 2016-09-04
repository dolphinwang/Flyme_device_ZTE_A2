.class public Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;
.super Landroid/view/ActionMode;
.source "ActionbarImpl.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/ActionbarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/actionbar/ActionbarImpl;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 748
    iput-object p2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    .line 749
    iput-object p3, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 750
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-direct {v0, p2}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 752
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->setCallback(Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;)V

    .line 753
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 818
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eq v0, p0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 784
    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 785
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->animateToMode(Z)V

    .line 788
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->closeMode()V

    .line 789
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActionbarView:Lcom/zte/mifavor/actionbar/ToolBarActionBar;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$500(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->sendAccessibilityEvent(I)V

    .line 793
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    iput-object v2, v0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 757
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActionbarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eq v0, p0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 883
    return-void
.end method

.method public onCloseSubMenu(Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    .prologue
    .line 899
    return-void
.end method

.method public onMenuItemSelected(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 878
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    .line 902
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 907
    :goto_0
    return-void

    .line 905
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->invalidate()V

    .line 906
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    .prologue
    const/4 v0, 0x1

    .line 886
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v1, :cond_1

    .line 887
    const/4 v0, 0x0

    .line 895
    :cond_0
    :goto_0
    return v0

    .line 890
    :cond_1
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    new-instance v1, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    invoke-virtual {v2}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 825
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 826
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 845
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$600(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 846
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 831
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 840
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$600(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 841
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 836
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 860
    invoke-super {p0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 861
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$ActionModeImpl;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->setTitleOptional(Z)V

    .line 862
    return-void
.end method
