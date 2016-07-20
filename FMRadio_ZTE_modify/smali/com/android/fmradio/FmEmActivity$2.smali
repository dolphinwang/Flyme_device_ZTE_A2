.class Lcom/android/fmradio/FmEmActivity$2;
.super Ljava/lang/Object;
.source "FmEmActivity.java"

# interfaces
.implements Lcom/android/fmradio/FmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/FmEmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmEmActivity;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmEmActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmEmActivity$2;->this$0:Lcom/android/fmradio/FmEmActivity;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$2;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$36(Lcom/android/fmradio/FmEmActivity;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "callback_flag"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 380
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 381
    iget-object v1, p0, Lcom/android/fmradio/FmEmActivity$2;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/fmradio/FmEmActivity;->access$36(Lcom/android/fmradio/FmEmActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    return-void
.end method
