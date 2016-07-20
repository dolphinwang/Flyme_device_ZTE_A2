.class Lcom/zte/zgesture/setting/CloseAppDemoActivity$4;
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
    .line 257
    iput-object p1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 270
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    .local v0, "tipParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 272
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 273
    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->screenHeight:I
    invoke-static {v1}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$800(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 274
    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$600(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->tipText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$500(Lcom/zte/zgesture/setting/CloseAppDemoActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v1, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    # setter for: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->inAnimating:Z
    invoke-static {v1, v3}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$702(Lcom/zte/zgesture/setting/CloseAppDemoActivity;Z)Z

    .line 276
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 265
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/zte/zgesture/setting/CloseAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/CloseAppDemoActivity;

    const/4 v1, 0x1

    # setter for: Lcom/zte/zgesture/setting/CloseAppDemoActivity;->inAnimating:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/setting/CloseAppDemoActivity;->access$702(Lcom/zte/zgesture/setting/CloseAppDemoActivity;Z)Z

    .line 261
    return-void
.end method
