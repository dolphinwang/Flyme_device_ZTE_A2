.class Lcom/android/mipop/cropimage/CropImageEx$8;
.super Ljava/lang/Object;
.source "CropImageEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/cropimage/CropImageEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/cropimage/CropImageEx;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/CropImageEx;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->lastShape:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$800(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 397
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->lastShape:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$800(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 398
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    # setter for: Lcom/android/mipop/cropimage/CropImageEx;->lastShape:Landroid/widget/Button;
    invoke-static {v1, v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$802(Lcom/android/mipop/cropimage/CropImageEx;Landroid/widget/Button;)Landroid/widget/Button;

    .line 399
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->lastShape:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$800(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->lastShape:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$800(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$400(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/CropView;->postInvalidate()V

    .line 419
    return-void

    .line 403
    :pswitch_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$400(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mCropRect:Lcom/android/mipop/cropimage/CropRect;
    invoke-static {v1}, Lcom/android/mipop/cropimage/CropImageEx;->access$900(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropRect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/cropimage/CropView;->setCropType(Lcom/android/mipop/cropimage/ICrop;)V

    .line 404
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$400(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/CropView;->changeToFull()V

    goto :goto_0

    .line 408
    :pswitch_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$400(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mCropOval:Lcom/android/mipop/cropimage/CropOval;
    invoke-static {v1}, Lcom/android/mipop/cropimage/CropImageEx;->access$1000(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropOval;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/cropimage/CropView;->setCropType(Lcom/android/mipop/cropimage/ICrop;)V

    .line 409
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$400(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/CropView;->changeToFull()V

    goto :goto_0

    .line 412
    :pswitch_2
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$400(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx$8;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mCropPath:Lcom/android/mipop/cropimage/CropPath;
    invoke-static {v1}, Lcom/android/mipop/cropimage/CropImageEx;->access$1100(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mipop/cropimage/CropView;->setCropType(Lcom/android/mipop/cropimage/ICrop;)V

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600d4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
