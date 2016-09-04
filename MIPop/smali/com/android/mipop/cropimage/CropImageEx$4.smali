.class Lcom/android/mipop/cropimage/CropImageEx$4;
.super Ljava/lang/Object;
.source "CropImageEx.java"

# interfaces
.implements Lcom/android/mipop/cropimage/CropView$OnSingleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/cropimage/CropImageEx;->onCreate(Landroid/os/Bundle;)V
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
    .line 293
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropImageEx$4;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$4;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->menuContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$200(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$4;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->menuContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$200(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$4;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->bottomBtns:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$300(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$4;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->menuContent:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$200(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$4;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->bottomBtns:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$300(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
