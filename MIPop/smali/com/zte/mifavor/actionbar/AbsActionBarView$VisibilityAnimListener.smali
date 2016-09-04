.class public Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/zte/mifavor/actionbar/AbsActionBarView;


# direct methods
.method protected constructor <init>(Lcom/zte/mifavor/actionbar/AbsActionBarView;)V
    .locals 1

    .prologue
    .line 333
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/zte/mifavor/actionbar/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 363
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/zte/mifavor/actionbar/AbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 354
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/zte/mifavor/actionbar/AbsActionBarView;

    iget v1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/zte/mifavor/actionbar/AbsActionBarView;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/zte/mifavor/actionbar/AbsActionBarView;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/zte/mifavor/actionbar/AbsActionBarView;

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mMenuView:Lcom/zte/mifavor/actionbar/menu/ActionMenuView;

    iget v1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/menu/ActionMenuView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 367
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/zte/mifavor/actionbar/AbsActionBarView;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/AbsActionBarView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/zte/mifavor/actionbar/AbsActionBarView;

    iput-object p1, v0, Lcom/zte/mifavor/actionbar/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 346
    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 347
    return-void
.end method

.method public withFinalVisibility(I)Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 338
    iput p1, p0, Lcom/zte/mifavor/actionbar/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 339
    return-object p0
.end method
