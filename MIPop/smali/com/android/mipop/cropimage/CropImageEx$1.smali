.class Lcom/android/mipop/cropimage/CropImageEx$1;
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
    .line 84
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropImageEx$1;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$1;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-virtual {v0}, Lcom/android/mipop/cropimage/CropImageEx;->finish()V

    .line 90
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropImageEx$1;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # invokes: Lcom/android/mipop/cropimage/CropImageEx;->onSaveClicked()V
    invoke-static {v0}, Lcom/android/mipop/cropimage/CropImageEx;->access$000(Lcom/android/mipop/cropimage/CropImageEx;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
