.class Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
    .param p2, "x1"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;

    .prologue
    .line 974
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V
    .locals 3
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 987
    instance-of v1, p1, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    if-eqz v1, :cond_0

    .line 988
    invoke-virtual {p1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->getRootMenu()Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->close(Z)V

    .line 990
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->getCallback()Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 991
    .local v0, "cb":Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    .line 992
    invoke-interface {v0, p1, p2}, Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V

    .line 994
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 978
    if-nez p1, :cond_0

    .line 982
    :goto_0
    return v2

    .line 980
    :cond_0
    iget-object v3, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    move-object v1, p1

    check-cast v1, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v3, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 981
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->getCallback()Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 982
    .local v0, "cb":Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)Z

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
