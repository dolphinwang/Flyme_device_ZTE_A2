.class Lcom/zte/mifavor/actionbar/menu/ActionMenuView$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuBuilderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuView;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuView;Lcom/zte/mifavor/actionbar/menu/ActionMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuView;
    .param p2, "x1"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuView$1;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView$MenuBuilderCallback;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->mOnMenuItemClickListener:Lcom/zte/mifavor/actionbar/menu/ActionMenuView$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->access$200(Lcom/zte/mifavor/actionbar/menu/ActionMenuView;)Lcom/zte/mifavor/actionbar/menu/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->mOnMenuItemClickListener:Lcom/zte/mifavor/actionbar/menu/ActionMenuView$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->access$200(Lcom/zte/mifavor/actionbar/menu/ActionMenuView;)Lcom/zte/mifavor/actionbar/menu/ActionMenuView$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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
    .line 766
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->mMenuBuilderCallback:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->access$300(Lcom/zte/mifavor/actionbar/menu/ActionMenuView;)Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuView$MenuBuilderCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->mMenuBuilderCallback:Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->access$300(Lcom/zte/mifavor/actionbar/menu/ActionMenuView;)Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V

    .line 769
    :cond_0
    return-void
.end method
