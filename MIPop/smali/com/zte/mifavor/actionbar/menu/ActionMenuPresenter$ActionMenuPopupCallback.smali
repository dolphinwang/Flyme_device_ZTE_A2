.class Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;
.super Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-direct {p0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
    .param p2, "x1"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;

    .prologue
    .line 1016
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/zte/mifavor/actionbar/menu/ShowableListMenu;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$1100(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$1100(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Lcom/zte/mifavor/actionbar/menu/MenuPopup;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
