.class Lcom/zte/zgesture/setting/CloseAppDemoActivity$3;
.super Ljava/lang/Object;
.source "CloseAppDemoActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/CloseAppDemoActivity;->closeAppAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$3;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$3;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    const/4 v1, 0x0

    # setter for: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->closeAnimating:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$402(Lcom/zte/zgesture/setting/CloseAppDemoActivity;Z)Z

    .line 238
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 232
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$3;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    const/4 v1, 0x1

    # setter for: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->closeAnimating:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$402(Lcom/zte/zgesture/setting/CloseAppDemoActivity;Z)Z

    .line 227
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$3;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$600(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$3;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->tipText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$500(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 228
    return-void
.end method
