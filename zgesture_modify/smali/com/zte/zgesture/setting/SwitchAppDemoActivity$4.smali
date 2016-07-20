.class Lcom/zte/zgesture/setting/SwitchAppDemoActivity$4;
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
    .line 270
    iput-object p1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

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

    .line 283
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    .local v0, "tipParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 285
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    iget-object v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->screenHeight:I
    invoke-static {v1}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$700(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 287
    iget-object v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->backGround:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$500(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    # getter for: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->tipText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$400(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object v1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    # setter for: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->inAnimating:Z
    invoke-static {v1, v3}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$602(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;Z)Z

    .line 289
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 278
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$4;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    const/4 v1, 0x1

    # setter for: Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->inAnimating:Z
    invoke-static {v0, v1}, Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->access$602(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;Z)Z

    .line 274
    return-void
.end method
