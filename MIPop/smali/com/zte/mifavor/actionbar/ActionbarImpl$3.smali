.class Lcom/zte/mifavor/actionbar/ActionbarImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionbarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/ActionbarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/ActionbarImpl;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContentAnimations:Z
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$300(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->setTranslationY(F)V

    .line 501
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$200(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionbarContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->setTranslationY(F)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$200(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionbarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    const/4 v1, 0x0

    # setter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$002(Lcom/zte/mifavor/actionbar/ActionbarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 507
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->completeDeferredDestroyActionMode()V

    .line 508
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$400(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$3;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mOverLayout:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$400(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 511
    :cond_1
    return-void
.end method
