.class Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->runItemAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

.field final synthetic val$menuItemLayoutInfoPre:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$4;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iput-object p2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$4;->val$menuItemLayoutInfoPre:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 375
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$4;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$700(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$4;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$700(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;

    iget-object v1, v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    if-ne v1, p1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$4;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    # getter for: Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->access$700(Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$4;->this$0:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter;->mMenuView:Lcom/zte/mifavor/actionbar/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$4;->val$menuItemLayoutInfoPre:Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v2, v2, Lcom/zte/mifavor/actionbar/menu/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 382
    return-void

    .line 375
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
