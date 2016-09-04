.class Lcom/zte/mifavor/actionbar/ToolBarActionBar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolBarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

.field final synthetic val$mToolbar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2384
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$4;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iput-object p2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$4;->val$mToolbar:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$4;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$4;->mCanceled:Z

    .line 2396
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2388
    iget-boolean v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$4;->mCanceled:Z

    if-nez v0, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$4;->val$mToolbar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2391
    :cond_0
    return-void
.end method
