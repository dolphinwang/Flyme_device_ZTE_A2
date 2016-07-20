.class public Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;
.super Landroid/os/Handler;
.source "AgpsDebugInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MessageHandler"
.end annotation


# instance fields
.field protected listener:Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;


# direct methods
.method public constructor <init>(Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;->listener:Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;

    .line 61
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "b":Landroid/os/Bundle;
    const-string v8, "type"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 68
    .local v7, "type":I
    const-string v8, "data1"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 69
    .local v2, "data1":I
    const-string v8, "data2"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 70
    .local v3, "data2":I
    const-string v8, "data3"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 71
    .local v4, "data3":I
    const-string v8, "msg1"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "msg1":Ljava/lang/String;
    const-string v8, "msg2"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "msg2":Ljava/lang/String;
    const-string v8, "bin"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 75
    .local v1, "bin":[B
    packed-switch v7, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    and-int/lit8 v8, v2, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 78
    iget-object v8, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;->listener:Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;

    invoke-interface {v8, v6}, Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;->onToastMessageReceived(Ljava/lang/String;)V

    .line 80
    :cond_1
    and-int/lit8 v8, v2, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 81
    iget-object v8, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;->listener:Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;

    invoke-interface {v8, v3, v6}, Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;->onViewMessageReceived(ILjava/lang/String;)V

    .line 83
    :cond_2
    and-int/lit8 v8, v2, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 84
    iget-object v8, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;->listener:Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;

    invoke-interface {v8, v5, v6}, Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;->onDialogMessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " data1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " data2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " data3="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " msg1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " msg2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bin="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->log(Ljava/lang/Object;)V

    .line 92
    if-eqz v1, :cond_0

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bin.len="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->log(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
