.class Lcom/android/fmradio/FmEmActivity$5;
.super Ljava/lang/Thread;
.source "FmEmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fmradio/FmEmActivity;->readTickEvent()V
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
    iput-object p1, p0, Lcom/android/fmradio/FmEmActivity$5;->this$0:Lcom/android/fmradio/FmEmActivity;

    .line 990
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 992
    const-string v5, "FmRx/EM"

    const-string v6, ">>> tick envent Thread run()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :goto_0
    iget-object v5, p0, Lcom/android/fmradio/FmEmActivity$5;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mIsTickEventExit:Z
    invoke-static {v5}, Lcom/android/fmradio/FmEmActivity;->access$65(Lcom/android/fmradio/FmEmActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1022
    const-string v5, "FmRx/EM"

    const-string v6, "<<< tick envent Thread run()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return-void

    .line 998
    :cond_0
    iget-object v5, p0, Lcom/android/fmradio/FmEmActivity$5;->this$0:Lcom/android/fmradio/FmEmActivity;

    # invokes: Lcom/android/fmradio/FmEmActivity;->isDeviceOpen()Z
    invoke-static {v5}, Lcom/android/fmradio/FmEmActivity;->access$42(Lcom/android/fmradio/FmEmActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 999
    new-instance v0, Landroid/os/Bundle;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 1000
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "RDS_BLER_STRING"

    const-string v6, "%d%%"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/fmradio/FmEmActivity$5;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-virtual {v8}, Lcom/android/fmradio/FmEmActivity;->readRdsBler()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v5, "RDS_RSSI_STRING"

    const-string v6, "%d"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/fmradio/FmEmActivity$5;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-virtual {v8}, Lcom/android/fmradio/FmEmActivity;->readRssi()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v6, "RDS_STEREMONO_STRING"

    iget-object v5, p0, Lcom/android/fmradio/FmEmActivity$5;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-virtual {v5}, Lcom/android/fmradio/FmEmActivity;->getStereoMono()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Stereo"

    :goto_1
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v1, "N/A"

    .line 1004
    .local v1, "capStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/fmradio/FmEmActivity$5;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mRdAntennaL:Landroid/widget/RadioButton;
    invoke-static {v5}, Lcom/android/fmradio/FmEmActivity;->access$66(Lcom/android/fmradio/FmEmActivity;)Landroid/widget/RadioButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1005
    iget-object v5, p0, Lcom/android/fmradio/FmEmActivity$5;->this$0:Lcom/android/fmradio/FmEmActivity;

    iget-object v6, p0, Lcom/android/fmradio/FmEmActivity$5;->this$0:Lcom/android/fmradio/FmEmActivity;

    invoke-virtual {v6}, Lcom/android/fmradio/FmEmActivity;->readCapArray()I

    move-result v6

    # invokes: Lcom/android/fmradio/FmEmActivity;->formatCapArray(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/fmradio/FmEmActivity;->access$67(Lcom/android/fmradio/FmEmActivity;I)Ljava/lang/String;

    move-result-object v1

    .line 1007
    :cond_1
    const-string v5, "RDS_CAPARRAY_STRING"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v5, p0, Lcom/android/fmradio/FmEmActivity$5;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/fmradio/FmEmActivity;->access$36(Lcom/android/fmradio/FmEmActivity;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1009
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1010
    iget-object v5, p0, Lcom/android/fmradio/FmEmActivity$5;->this$0:Lcom/android/fmradio/FmEmActivity;

    # getter for: Lcom/android/fmradio/FmEmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/fmradio/FmEmActivity;->access$36(Lcom/android/fmradio/FmEmActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1015
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "capStr":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_2
    const/16 v3, 0x3e8

    .line 1016
    .local v3, "hundredMillisecond":I
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :goto_2
    const-string v5, "FmRx/EM"

    const-string v6, "get tick information"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1002
    .end local v3    # "hundredMillisecond":I
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    const-string v5, "Mono"

    goto :goto_1

    .line 1017
    .end local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "hundredMillisecond":I
    :catch_0
    move-exception v2

    .line 1018
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
