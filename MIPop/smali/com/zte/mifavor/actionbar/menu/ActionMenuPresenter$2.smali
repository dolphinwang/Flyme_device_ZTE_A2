.class Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$2;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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
    .line 111
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$2;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$2;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$2;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$300(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 120
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$2;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$400(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 121
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$2;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$500(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 122
    return-void
.end method
