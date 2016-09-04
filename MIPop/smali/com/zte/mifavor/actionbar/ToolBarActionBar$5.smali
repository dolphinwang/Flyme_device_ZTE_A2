.class Lcom/zte/mifavor/actionbar/ToolBarActionBar$5;
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
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

.field final synthetic val$mToolbar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBar;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2402
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$5;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    iput-object p2, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$5;->val$mToolbar:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBar$5;->val$mToolbar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2406
    return-void
.end method
