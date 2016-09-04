.class final Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActivityCommon.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/ActivityCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ActivityCommon;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/actionbar/ActivityCommon;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;->this$0:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/actionbar/ActivityCommon;Lcom/zte/mifavor/actionbar/ActivityCommon$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/actionbar/ActivityCommon;
    .param p2, "x1"    # Lcom/zte/mifavor/actionbar/ActivityCommon$1;

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;-><init>(Lcom/zte/mifavor/actionbar/ActivityCommon;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 322
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;->this$0:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 323
    return-void
.end method

.method public onOpenSubMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;->this$0:Lcom/zte/mifavor/actionbar/ActivityCommon;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;->this$0:Lcom/zte/mifavor/actionbar/ActivityCommon;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 315
    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
