.class Lcom/zte/mifavor/actionbar/ToolBarActionBar$1;
.super Ljava/lang/Object;
.source "ToolBarActionBar.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/ToolBarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$1;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$1;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mOnMenuItemClickListener:Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->access$000(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$1;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBar;->mOnMenuItemClickListener:Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->access$000(Lcom/zte/mifavor/actionbar/ToolBarActionBar;)Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
