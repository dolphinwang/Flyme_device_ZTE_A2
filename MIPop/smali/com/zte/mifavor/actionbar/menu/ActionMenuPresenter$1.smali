.class Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    # invokes: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$100(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Z)V

    .line 105
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 106
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$1;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # invokes: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->runItemAnimations()V
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$200(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method
