.class Lcom/zte/zgesture/setting/SwitchAppDemoActivity$3;
.super Ljava/lang/Object;
.source "SwitchAppDemoActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->switchAppAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$3;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$3;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    const/4 v1, 0x0

    # setter for: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->outAnimating:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$302(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;Z)Z

    .line 246
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 240
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$3;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    const/4 v1, 0x1

    # setter for: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->outAnimating:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$302(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;Z)Z

    .line 235
    iget-object v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$3;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$500(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$3;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->tipText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$400(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 236
    return-void
.end method
