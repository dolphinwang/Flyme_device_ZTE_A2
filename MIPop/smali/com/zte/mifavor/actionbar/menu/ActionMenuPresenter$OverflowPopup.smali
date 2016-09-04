.class Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;
.super Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    .prologue
    .line 933
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .line 934
    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 936
    const v0, 0x800005

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;->setGravity(I)V

    .line 937
    iget-object v0, p1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;->setPresenterCallback(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V

    .line 938
    return-void
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->close()V

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$802(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowPopup;

    .line 947
    invoke-super {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->onDismiss()V

    .line 948
    return-void
.end method
