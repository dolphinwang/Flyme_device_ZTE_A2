.class Lcom/android/mipop/paintpad/activities/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/paintpad/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/paintpad/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$3;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    .line 399
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 416
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$3;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # invokes: Lcom/android/mipop/paintpad/activities/MainActivity;->hideMenu()V
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$000(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    .line 417
    return v3

    .line 401
    :pswitch_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$3;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->tempX:F
    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$102(Lcom/android/mipop/paintpad/activities/MainActivity;F)F

    .line 402
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$3;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->tempY:F
    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$202(Lcom/android/mipop/paintpad/activities/MainActivity;F)F

    goto :goto_0

    .line 405
    :pswitch_2
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$3;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->tempX:F
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$100(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$3;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->tempY:F
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$200(Lcom/android/mipop/paintpad/activities/MainActivity;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$3;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->isChanged:Z
    invoke-static {v0, v4}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$302(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    .line 408
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$3;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnUndo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$400(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$3;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnUndo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$400(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x828283

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 410
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$3;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnRedo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$500(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$3;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->btnRedo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$500(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, -0x3d3d3e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
