.class Lcom/android/mipop/cropimage/CropImageEx$7;
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
    .line 340
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 346
    :sswitch_0
    const-string v2, ""

    const-string v3, "lxg btn_cancel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$100(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-virtual {v2}, Lcom/android/mipop/cropimage/CropImageEx;->finish()V

    goto :goto_0

    .line 351
    :sswitch_1
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$100(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # invokes: Lcom/android/mipop/cropimage/CropImageEx;->onSaveClicked()V
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$000(Lcom/android/mipop/cropimage/CropImageEx;)V

    goto :goto_0

    .line 357
    :sswitch_2
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$100(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->cropView:Lcom/android/mipop/cropimage/CropView;
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$400(Lcom/android/mipop/cropimage/CropImageEx;)Lcom/android/mipop/cropimage/CropView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mipop/cropimage/CropView;->crop()Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/mipop/cropimage/CropImageEx;->bitmapForPaint:Landroid/graphics/Bitmap;

    .line 359
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    const-class v3, Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 363
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-virtual {v2, v0}, Lcom/android/mipop/cropimage/CropImageEx;->startActivity(Landroid/content/Intent;)V

    .line 364
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-virtual {v2}, Lcom/android/mipop/cropimage/CropImageEx;->finish()V

    goto :goto_0

    .line 367
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$100(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # invokes: Lcom/android/mipop/cropimage/CropImageEx;->onShareClicked()V
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$500(Lcom/android/mipop/cropimage/CropImageEx;)V

    goto :goto_0

    .line 372
    :sswitch_4
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$100(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mCancleHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$600(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mScrollHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$700(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mScrollHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$700(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 381
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 382
    .local v1, "m":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 383
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mCancleHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mipop/cropimage/CropImageEx;->access$600(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 384
    iget-object v2, p0, Lcom/android/mipop/cropimage/CropImageEx$7;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-virtual {v2}, Lcom/android/mipop/cropimage/CropImageEx;->finish()V

    goto/16 :goto_0

    .line 344
    :sswitch_data_0
    .sparse-switch
        0x7f0600ce -> :sswitch_0
        0x7f0600cf -> :sswitch_1
        0x7f0600d0 -> :sswitch_2
        0x7f0600d1 -> :sswitch_3
        0x7f0600d9 -> :sswitch_4
    .end sparse-switch
.end method
