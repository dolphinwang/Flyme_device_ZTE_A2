.class Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    .line 953
    const/4 v4, 0x0

    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 956
    invoke-virtual {p3}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;

    .line 957
    .local v6, "item":Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;
    invoke-virtual {v6}, Lcom/zte/mifavor/actionbar/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;
    invoke-static {p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$1000(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 962
    :cond_0
    iget-object v0, p1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;->setPresenterCallback(Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V

    .line 963
    return-void

    .line 959
    :cond_1
    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOverflowButton:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;
    invoke-static {p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$1000(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onDismiss()V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$1102(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 968
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 970
    invoke-super {p0}, Lcom/zte/mifavor/actionbar/menu/MenuPopupHelper;->onDismiss()V

    .line 971
    return-void
.end method
