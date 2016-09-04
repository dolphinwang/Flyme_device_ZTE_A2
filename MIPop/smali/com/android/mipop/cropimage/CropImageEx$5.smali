.class Lcom/android/mipop/cropimage/CropImageEx$5;
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
    .line 311
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropImageEx$5;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$5;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$100(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$5;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->menuContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$200(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$5;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->menuContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$200(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$5;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->menuContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$200(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
