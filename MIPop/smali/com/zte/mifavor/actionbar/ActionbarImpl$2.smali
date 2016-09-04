.class Lcom/zte/mifavor/actionbar/ActionbarImpl$2;
.super Ljava/lang/Object;
.source "ActionbarImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 489
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$2;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 492
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActionbarImpl$2;->this$0:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    # getter for: Lcom/zte/mifavor/actionbar/ActionbarImpl;->mContainer:Lcom/zte/mifavor/actionbar/ActionbarContainer;
    invoke-static {v1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->access$200(Lcom/zte/mifavor/actionbar/ActionbarImpl;)Lcom/zte/mifavor/actionbar/ActionbarContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ActionbarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 493
    .local v0, "parent":Landroid/view/ViewParent;
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 494
    return-void
.end method
