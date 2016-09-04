.class Lcom/zte/mifavor/actionbar/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl$1;->this$0:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 605
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl$1;->this$0:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    # getter for: Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->access$000(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl$1;->this$0:Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->onItemVisibleChanged(Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;)V

    .line 606
    return-void
.end method
