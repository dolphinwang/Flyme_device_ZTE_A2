.class Lcom/android/mipop/cropimage/CropImageEx$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 106
    iput-object p1, p0, Lcom/android/mipop/cropimage/CropImageEx$3;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.cancel.3second"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/mipop/cropimage/CropImageEx$3;->this$0:Lcom/android/mipop/cropimage/CropImageEx;

    # getter for: Lcom/android/mipop/cropimage/CropImageEx;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mipop/cropimage/CropImageEx;->access$100(Lcom/android/mipop/cropimage/CropImageEx;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    :cond_0
    return-void
.end method
