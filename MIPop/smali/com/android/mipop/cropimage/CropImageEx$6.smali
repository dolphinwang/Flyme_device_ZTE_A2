.class Lcom/android/mipop/cropimage/CropImageEx$6;
.super Landroid/os/Handler;
.source "CropImageEx.java"


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
    .line 324
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropImageEx$6;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 327
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 329
    :pswitch_0
    const-string v1, ""

    const-string v2, "lxg EVT_SCROLL_SCREENSHOT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 331
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "com.zte.screenshotstart"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx$6;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-virtual {v1, v0}, Lcom/android/mipop/cropimage/CropImageEx;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
