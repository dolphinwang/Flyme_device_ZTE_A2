.class Lcom/android/mipop/cropimage/TakePhoto$MyHandler;
.super Landroid/os/Handler;
.source "TakePhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/cropimage/TakePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/cropimage/TakePhoto;


# direct methods
.method public constructor <init>(Lcom/android/mipop/cropimage/TakePhoto;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 81
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v5, 0x7f090570

    const/4 v6, 0x0

    .line 85
    const-string v3, "weixiaoli"

    const-string v4, "handler show dialog save"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 99
    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mipop/cropimage/TakePhoto;->access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09056f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->SaveName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mipop/cropimage/TakePhoto;->access$100(Lcom/android/mipop/cropimage/TakePhoto;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mipop/cropimage/TakePhoto;->access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 102
    const-string v3, "weixiaoli"

    const-string v4, "event save finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mipop/cropimage/TakePhoto;->access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 110
    .end local v2    # "ret":Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mipop/cropimage/TakePhoto;->access$200(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    .line 111
    const-string v3, "HouJiong"

    const-string v4, "onShareClicked save error!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mipop/cropimage/TakePhoto;->access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mipop/cropimage/TakePhoto;->access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 118
    :cond_1
    const-string v3, "HouJiong"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShareClicked uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->uri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/android/mipop/cropimage/TakePhoto;->access$200(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->uri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mipop/cropimage/TakePhoto;->access$200(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mipop/cropimage/TakePhoto;->access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090561

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, "chooseIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mipop/cropimage/TakePhoto;->access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mipop/cropimage/TakePhoto;->access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 130
    .end local v0    # "chooseIntent":Landroid/content/Intent;
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_2
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mipop/cropimage/TakePhoto;->access$200(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    .line 131
    const-string v3, "HouJiong"

    const-string v4, "onShareClicked save error!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v3, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mipop/cropimage/TakePhoto;->access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/TakePhoto$MyHandler;->this$0:Lcom/android/mipop/cropimage/TakePhoto;

    # getter for: Lcom/android/mipop/cropimage/TakePhoto;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mipop/cropimage/TakePhoto;->access$000(Lcom/android/mipop/cropimage/TakePhoto;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method
