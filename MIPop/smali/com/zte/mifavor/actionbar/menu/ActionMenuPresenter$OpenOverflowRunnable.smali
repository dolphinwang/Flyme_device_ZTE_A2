.class Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .param p2, "popup"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    iput-object p2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    .line 1002
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1005
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 1006
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->changeMenuMode()V

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v0, v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v0, Landroid/view/View;

    .line 1009
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1010
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    # setter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v1, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$802(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    const/4 v2, 0x0

    # setter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v1, v2}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$902(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 1013
    return-void
.end method
