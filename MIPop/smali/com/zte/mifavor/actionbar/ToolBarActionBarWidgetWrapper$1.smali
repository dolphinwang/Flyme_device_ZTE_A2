.class Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$1;
.super Ljava/lang/Object;
.source "ToolBarActionBarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;-><init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mNavItem:Lcom/zte/mifavor/actionbar/menu/ActionMenuItem;

.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 177
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$1;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItem;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$1;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->access$000(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x102002c

    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$1;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->access$100(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)Ljava/lang/CharSequence;

    move-result-object v6

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$1;->mNavItem:Lcom/zte/mifavor/actionbar/menu/ActionMenuItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$1;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->access$200(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$1;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mMenuPrepared:Z
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->access$300(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$1;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->access$200(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$1;->mNavItem:Lcom/zte/mifavor/actionbar/menu/ActionMenuItem;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 187
    :cond_0
    return-void
.end method
