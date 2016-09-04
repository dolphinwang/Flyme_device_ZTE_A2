.class Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$3;
.super Ljava/lang/Object;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$3;->this$0:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$3;->this$0:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    # invokes: Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->access$300(Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;)V

    .line 130
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$3;->this$0:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$3;->this$0:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    # getter for: Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->mActionBarTop:Landroid/view/View;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->access$500(Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$3;->this$0:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    # getter for: Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->access$400(Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    # setter for: Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->access$002(Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 133
    return-void
.end method
