.class Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
.super Ljava/lang/Thread;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VsimIoThread"
.end annotation


# static fields
.field private static final MAX_DATA_LENGTH:I = 0x5000


# instance fields
.field private mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

.field private mInput:Ljava/io/DataInputStream;

.field private mName:Ljava/lang/String;

.field private mOutput:Ljava/io/DataOutputStream;

.field private mServerName:Ljava/lang/String;

.field private mSocket:Landroid/net/LocalSocket;

.field private readBuffer:[B

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;
    .param p5, "eventHandler"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .prologue
    const/4 v1, 0x0

    .line 604
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 590
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    .line 592
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    .line 593
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    .line 594
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 595
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    .line 598
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readBuffer:[B

    .line 605
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    .line 606
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    .line 607
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    .line 608
    iput-object p5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 609
    const-string v0, "VsimIoThread constructor is called."

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "serverName"    # Ljava/lang/String;
    .param p4, "eventHandler"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .prologue
    const/4 v1, 0x0

    .line 612
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 590
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    .line 592
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    .line 593
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    .line 594
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 595
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    .line 598
    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readBuffer:[B

    .line 613
    iput-object p3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->createClientSocket(Ljava/lang/String;)V

    .line 615
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    .line 616
    iput-object p4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 617
    const-string v0, "VsimIoThread constructor with creating socket is called."

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method private createClientSocket(Ljava/lang/String;)V
    .locals 8
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 621
    const/4 v4, 0x0

    .line 622
    .local v4, "retryCount":I
    const-string v5, "createClientSocket() - start"

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 623
    :cond_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    .line 625
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createClientSocket() - before, serverName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 627
    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    iput-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 628
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 631
    .local v0, "addr":Landroid/net/LocalSocketAddress;
    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 633
    new-instance v5, Ljava/io/DataInputStream;

    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    .line 634
    new-instance v5, Ljava/io/DataOutputStream;

    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    .line 636
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createClientSocket() - after, mSocket:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v0    # "addr":Landroid/net/LocalSocketAddress;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 657
    const-string v5, "createClientSocket connected!"

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 661
    :cond_2
    const-string v5, "createClientSocket() - end"

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 662
    return-void

    .line 637
    :catch_0
    move-exception v1

    .line 638
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "createClientSocket catch IOException"

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 641
    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 642
    add-int/lit8 v4, v4, 0x1

    .line 644
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V

    .line 645
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 646
    const-wide/16 v6, 0xfa0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 652
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createClientSocket retry later, retry count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :catch_1
    move-exception v2

    .line 648
    .local v2, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 649
    .end local v2    # "e1":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v3

    .line 650
    .local v3, "e2":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private dumpEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpEvent: transaction_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slot_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data_len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 844
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 847
    const-string v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-void
.end method

.method private readEvent()Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    const-string v8, "readEvent Enter"

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 807
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v7

    .line 808
    .local v7, "transaction_id":I
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v3

    .line 809
    .local v3, "msg_id":I
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v6

    .line 810
    .local v6, "slot_id":I
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readInt()I

    move-result v1

    .line 811
    .local v1, "data_len":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readEvent transaction_id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", msgId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", slot_id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", len: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 814
    new-array v8, v1, [B

    iput-object v8, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readBuffer:[B

    .line 816
    const/4 v4, 0x0

    .line 817
    .local v4, "offset":I
    move v5, v1

    .line 820
    .local v5, "remaining":I
    :cond_0
    iget-object v8, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    iget-object v9, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readBuffer:[B

    invoke-virtual {v8, v9, v4, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 822
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 823
    const-string v8, "readEvent(), fail to read and throw exception"

    invoke-direct {p0, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 824
    new-instance v8, Ljava/io/IOException;

    const-string v9, "fail to read"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 827
    :cond_1
    add-int/2addr v4, v0

    .line 828
    sub-int/2addr v5, v0

    .line 829
    if-gtz v5, :cond_0

    .line 831
    new-instance v2, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-direct {v2, v7, v3, v1, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 832
    .local v2, "event":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    iget-object v8, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readBuffer:[B

    invoke-virtual {v2, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putBytes([B)I

    .line 834
    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->dumpEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 835
    return-object v2
.end method

.method private readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 791
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 792
    .local v1, "tempBuf":[B
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mInput:Ljava/io/DataInputStream;

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 793
    .local v0, "readCount":I
    if-gez v0, :cond_0

    .line 794
    const-string v2, "readInt(), fail to read and throw exception"

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 795
    new-instance v2, Ljava/io/IOException;

    const-string v3, "fail to read"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 798
    :cond_0
    const/4 v2, 0x3

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, v1, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    return v2
.end method

.method private writeBytes([BI)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 746
    return-void
.end method

.method private writeInt(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_0
    return-void
.end method


# virtual methods
.method public closeSocket()V
    .locals 2

    .prologue
    .line 666
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 668
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 669
    const-string v1, "closeSocket."

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "closeSocket IOException."

    invoke-direct {p0, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 678
    const-string v6, "VsimIoThread running."

    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 682
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->readEvent()Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    move-result-object v3

    .line 684
    .local v3, "event":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    if-eqz v3, :cond_0

    .line 685
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 686
    .local v5, "msg":Landroid/os/Message;
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 687
    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    invoke-virtual {v6, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 692
    .end local v3    # "event":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    .end local v5    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "VsimIoThread IOException."

    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 699
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v6, :cond_1

    .line 700
    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V

    .line 701
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mSocket:Landroid/net/LocalSocket;

    .line 704
    :cond_1
    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 705
    iget-object v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mServerName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->createClientSocket(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 733
    :catch_1
    move-exception v1

    .line 734
    .local v1, "e2":Ljava/io/IOException;
    const-string v6, "VsimIoThread IOException 2."

    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 708
    .end local v1    # "e2":Ljava/io/IOException;
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 709
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v6, "gsm.external.sim.inserted"

    const-string v7, "0"

    invoke-static {v4, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "enabled":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "0"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 718
    const-string v6, "gsm.external.sim.enabled"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v6, "gsm.external.sim.inserted"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    .line 725
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccController;->resetRadioForVsim()V

    .line 727
    const-string v6, "Disable VSIM and reset modem since socket disconnected."

    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 728
    return-void

    .line 708
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 731
    .end local v2    # "enabled":Ljava/lang/String;
    :cond_4
    const-string v6, "Socket disconnected and vsim is disabled."

    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 737
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "i":I
    :catch_2
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "VsimIoThread Exception."

    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I
    .locals 1
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 755
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;Z)I

    move-result v0

    return v0
.end method

.method public writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;Z)I
    .locals 4
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    .param p2, "isBigEndian"    # Z

    .prologue
    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeEvent Enter, isBigEndian:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 760
    const/4 v1, -0x1

    .line 762
    .local v1, "ret":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_0

    .line 764
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->dumpEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 766
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 767
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 769
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 770
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeInt(I)V

    .line 771
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getDataLen()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeBytes([BI)V

    .line 772
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->mOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 773
    const/4 v1, 0x0

    .line 777
    :goto_0
    monitor-exit p0

    move v2, v1

    .line 784
    :goto_1
    return v2

    .line 775
    :cond_0
    const-string v2, "mOut is null, socket is not setup"

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "writeEvent Exception"

    invoke-direct {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->log(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 781
    const/4 v2, -0x1

    goto :goto_1
.end method
