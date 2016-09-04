.class Lcom/zte/mifavor/actionbar/ActionbarImpl$1;
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
    .line 82
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$1;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$1;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    const/4 v1, 0x0

    # setter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$002(Lcom/zte/mifavor/actionbar/ActionbarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 86
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$1;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContextView:Lcom/zte/mifavor/actionbar/ActionBarContextView;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$100(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionBarContextView;->requestLayout()V

    .line 87
    return-void
.end method
