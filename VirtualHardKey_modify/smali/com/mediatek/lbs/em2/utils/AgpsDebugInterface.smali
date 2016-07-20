.class public Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;
.super Ljava/lang/Object;
.source "AgpsDebugInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;
    }
.end annotation


# static fields
.field protected static final DEBUG_MGR_MESSAGE:I = 0x0

.field protected static final DEBUG_MGR_MESSAGE_DIALOG:I = 0x4

.field protected static final DEBUG_MGR_MESSAGE_TOAST:I = 0x1

.field protected static final DEBUG_MGR_MESSAGE_TOAST_VIEW:I = 0x3

.field protected static final DEBUG_MGR_MESSAGE_VIEW:I = 0x2

.field protected static final DEBUG_MGR_STATE:I = 0x1

.field protected static final SOCKET_ADDRESS:Ljava/lang/String; = "agpsd3"


# instance fields
.field protected client:Landroid/net/LocalSocket;

.field protected in:Ljava/io/DataInputStream;

.field protected messageHandler:Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;

.field protected out:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "listener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    new-instance v0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;

    invoke-direct {v0, p1}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;-><init>(Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->messageHandler:Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;

    .line 43
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->connect()V

    .line 45
    new-instance v0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$1;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$1;-><init>(Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;)V

    invoke-virtual {v0}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$1;->start()V

    .line 50
    return-void
.end method

.method protected static getTimeString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 233
    const-string v1, ""

    .line 234
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 235
    .local v0, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d/%02d/%02d [%02d:%02d:%02d.%03d] "

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x6

    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    return-object v1
.end method

.method protected static log(Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 225
    const-string v0, "LocationEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method protected static loge(Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 229
    const-string v0, "LocationEM [agps] ERR: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method protected static logw(Ljava/lang/Object;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 221
    const-string v0, "LocationEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[agps] WARNING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method protected static msleep(I)V
    .locals 3
    .param p0, "milliseconds"    # I

    .prologue
    .line 214
    int-to-long v1, p0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected channelCloseAction(ILjava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug port is closed reason=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->logw(Ljava/lang/Object;)V

    .line 167
    const/high16 v3, 0xff0000

    move-object v0, p0

    move v2, p1

    move v4, v1

    move-object v6, p2

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->sendMessage2Handler(IIIILjava/lang/String;Ljava/lang/String;[B)V

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v8

    .line 171
    .local v8, "e1":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected close()V
    .locals 2

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->client:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->client:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 189
    :cond_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->client:Landroid/net/LocalSocket;

    .line 190
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->client:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "agpsd3"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 197
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->out:Ljava/io/BufferedOutputStream;

    .line 198
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->in:Ljava/io/DataInputStream;

    .line 199
    return-void
.end method

.method protected readThread()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 123
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 124
    .local v1, "type":I
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v2

    .line 125
    .local v2, "data1":I
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v3

    .line 126
    .local v3, "data2":I
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    .line 127
    .local v4, "data3":I
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "msg1":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "msg2":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBinary(Ljava/io/DataInputStream;)[B

    move-result-object v7

    .local v7, "bin":[B
    move-object v0, p0

    .line 130
    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->sendMessage2Handler(IIIILjava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 131
    .end local v1    # "type":I
    .end local v2    # "data1":I
    .end local v3    # "data2":I
    .end local v4    # "data3":I
    .end local v5    # "msg1":Ljava/lang/String;
    .end local v6    # "msg2":Ljava/lang/String;
    .end local v7    # "bin":[B
    :catch_0
    move-exception v8

    .line 133
    .local v8, "e":Ljava/io/EOFException;
    const-string v0, "AGPSD Rebooting"

    invoke-virtual {p0, v9, v0}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->channelCloseAction(ILjava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->retryConnectToAgpsd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string v0, "Reconnecting Failure"

    invoke-virtual {p0, v9, v0}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->channelCloseAction(ILjava/lang/String;)V

    .line 143
    .end local v8    # "e":Ljava/io/EOFException;
    :goto_1
    return-void

    .line 139
    :catch_1
    move-exception v8

    .line 140
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    const/4 v0, 0x0

    const-string v9, "Application Request Close"

    invoke-virtual {p0, v0, v9}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->channelCloseAction(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->write(I)V

    .line 54
    return-void
.end method

.method protected retryConnectToAgpsd()Z
    .locals 4

    .prologue
    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 151
    const/16 v2, 0xc8

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->msleep(I)V

    .line 153
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " debug connecting.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->log(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->connect()V

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " debug connecting success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->log(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const/4 v2, 0x1

    .line 162
    :goto_1
    return v2

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e1":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " debug connecting failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->log(Ljava/lang/Object;)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected sendMessage2Handler(IIIILjava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "data1"    # I
    .param p3, "data2"    # I
    .param p4, "data3"    # I
    .param p5, "msg1"    # Ljava/lang/String;
    .param p6, "msg2"    # Ljava/lang/String;
    .param p7, "bin"    # [B

    .prologue
    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string v2, "data1"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v2, "data2"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string v2, "data3"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v2, "msg1"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "msg2"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "bin"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 114
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 115
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 116
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 117
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->messageHandler:Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    return-void
.end method

.method protected write(I)V
    .locals 2
    .param p1, "data"    # I

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 178
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
