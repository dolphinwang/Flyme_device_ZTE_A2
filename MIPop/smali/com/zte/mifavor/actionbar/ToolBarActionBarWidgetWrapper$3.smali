.class Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolBarActionBarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$3;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper$3;->this$0:Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;

    # getter for: Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->mToolBarActionBar:Lcom/zte/mifavor/actionbar/ToolBarActionBar;
    invoke-static {v0}, Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;->access$000(Lcom/zte/mifavor/actionbar/ToolBarActionBarWidgetWrapper;)Lcom/zte/mifavor/actionbar/ToolBarActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ToolBarActionBar;->setVisibility(I)V

    .line 593
    return-void
.end method
