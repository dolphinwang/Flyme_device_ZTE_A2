.class Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


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
    .line 99
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$1;->this$0:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$1;->this$0:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->access$002(Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 109
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$1;->this$0:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->mAnimatingForFling:Z
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->access$102(Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;Z)Z

    .line 110
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$1;->this$0:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->access$002(Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 103
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout$1;->this$0:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->mAnimatingForFling:Z
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->access$102(Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;Z)Z

    .line 104
    return-void
.end method
