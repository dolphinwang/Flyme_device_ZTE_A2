.class Lcom/zte/mifavor/actionbar/menu/ActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuView;)V
    .locals 0

    .prologue
    .line 772
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuView$ActionMenuPresenterCallback;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuView;Lcom/zte/mifavor/actionbar/menu/ActionMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuView;
    .param p2, "x1"    # Lcom/zte/mifavor/actionbar/menu/ActionMenuView$1;

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView$ActionMenuPresenterCallback;-><init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 775
    return-void
.end method

.method public onOpenSubMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    .line 779
    const/4 v0, 0x0

    return v0
.end method
