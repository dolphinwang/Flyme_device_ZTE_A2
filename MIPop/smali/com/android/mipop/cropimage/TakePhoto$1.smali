.class Lcom/android/mipop/cropimage/TakePhoto$1;
.super Ljava/lang/Thread;
.source "TakePhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/cropimage/TakePhoto;->Save(Landroid/content/Context;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/cropimage/TakePhoto;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/TakePhoto;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/mipop/cropimage/TakePhoto$1;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/mipop/cropimage/TakePhoto$1;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    iget-object v2, p0, Lcom/android/mipop/cropimage/TakePhoto$1;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto$1;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mipop/cropimage/TakePhoto;->access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/TakePhoto$1;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mSaveBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/mipop/cropimage/TakePhoto;->access$300(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mipop/cropimage/TakePhoto;->save(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/android/mipop/cropimage/TakePhoto;->uri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/mipop/cropimage/TakePhoto;->access$202(Lcom/android/mipop/cropimage/TakePhoto;Landroid/net/Uri;)Landroid/net/Uri;

    .line 441
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 442
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x12c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 443
    iget-object v1, p0, Lcom/android/mipop/cropimage/TakePhoto$1;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mipop/cropimage/TakePhoto;->access$400(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 444
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 445
    return-void
.end method
