.class Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton$1;
.super Lcom/zte/mifavor/actionbar/menu/ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-direct {p0, p2}, Lcom/zte/mifavor/actionbar/menu/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$800(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 853
    const/4 v0, 0x0

    .line 856
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$800(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;->getPopup()Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    move-result-object v0

    goto :goto_0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 862
    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$900(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    const/4 v0, 0x0

    .line 875
    :goto_0
    return v0

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 875
    const/4 v0, 0x1

    goto :goto_0
.end method
