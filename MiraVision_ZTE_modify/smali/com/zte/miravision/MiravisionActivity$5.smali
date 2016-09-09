.class Lcom/zte/miravision/MiravisionActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiravisionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/miravision/MiravisionActivity;->quitUserDefFade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/miravision/MiravisionActivity;


# direct methods
.method constructor <init>(Lcom/zte/miravision/MiravisionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/miravision/MiravisionActivity$5;->this$0:Lcom/zte/miravision/MiravisionActivity;

    .line 698
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$5;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->userLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$20(Lcom/zte/miravision/MiravisionActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$5;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->defautLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$19(Lcom/zte/miravision/MiravisionActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 703
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$5;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->defautLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$19(Lcom/zte/miravision/MiravisionActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$5;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->defautLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$19(Lcom/zte/miravision/MiravisionActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 706
    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$5;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mShortAnimationDuration:I
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$21(Lcom/zte/miravision/MiravisionActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 707
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 708
    return-void
.end method
