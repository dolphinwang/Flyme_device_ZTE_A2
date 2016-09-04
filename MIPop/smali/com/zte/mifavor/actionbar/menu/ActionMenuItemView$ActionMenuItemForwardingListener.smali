.class Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Lcom/zte/mifavor/actionbar/menu/ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;

    .line 318
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;-><init>(Landroid/view/View;)V

    .line 319
    return-void
.end method


# virtual methods
.method public getPopup()Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mPopupCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->access$000(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;)Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mPopupCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->access$000(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;)Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;->getPopup()Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemInvoker:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->access$100(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;)Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemInvoker:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->access$100(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;)Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->mItemData:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    invoke-static {v3}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;->access$200(Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView;)Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;

    move-result-object v0

    .line 334
    .local v0, "popup":Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 336
    .end local v0    # "popup":Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;
    :cond_0
    return v1
.end method
