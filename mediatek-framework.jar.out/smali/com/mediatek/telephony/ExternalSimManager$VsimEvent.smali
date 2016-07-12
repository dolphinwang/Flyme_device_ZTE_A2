.class public Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VsimEvent"
.end annotation


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0x5000


# instance fields
.field private mData:[B

.field private mDataLen:I

.field private mEventMaxDataLen:I

.field private mMessageId:I

.field private mReadOffset:I

.field private mSlotId:I

.field private mTransactionId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 372
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 382
    const/16 v0, 0x5000

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 383
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "length"    # I
    .param p4, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    const/16 v0, 0x5000

    iput v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 394
    iput p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mTransactionId:I

    .line 395
    iput p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mMessageId:I

    .line 396
    iput p4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mSlotId:I

    .line 397
    iput p3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 398
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    .line 399
    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 400
    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 401
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 3

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "ret":I
    monitor-enter p0

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 555
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 556
    monitor-exit p0

    .line 557
    return v0

    .line 556
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(I)[B
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 561
    monitor-enter p0

    .line 562
    :try_start_0
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_0

    .line 563
    const/4 v1, 0x0

    monitor-exit p0

    .line 572
    :goto_0
    return-object v1

    .line 566
    :cond_0
    new-array v1, p1, [B

    .line 568
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 569
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 570
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 572
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 573
    .end local v0    # "i":I
    .end local v1    # "ret":[B
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getData()[B
    .locals 5

    .prologue
    .line 481
    monitor-enter p0

    .line 482
    :try_start_0
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    new-array v0, v1, [B

    .line 483
    .local v0, "tempData":[B
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 484
    monitor-exit p0

    return-object v0

    .line 485
    .end local v0    # "tempData":[B
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDataLen()I
    .locals 1

    .prologue
    .line 489
    monitor-enter p0

    .line 490
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    monitor-exit p0

    return v0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFirstSlotId()I
    .locals 5

    .prologue
    .line 512
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 513
    .local v1, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 515
    const-string v2, "ExternalSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFirstSlotId, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slot bit mapping = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 513
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getInt()I
    .locals 4

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "ret":I
    monitor-enter p0

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    array-length v1, v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 531
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 535
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 537
    :cond_0
    monitor-exit p0

    .line 538
    return v0

    .line 537
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mMessageId:I

    return v0
.end method

.method public getShort()I
    .locals 4

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "ret":I
    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 545
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 546
    monitor-exit p0

    .line 547
    return v0

    .line 546
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSlotBitMask()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mSlotId:I

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 577
    new-array v0, p1, [B

    .line 579
    .local v0, "buf":[B
    monitor-enter p0

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 581
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 582
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 582
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mTransactionId:I

    return v0
.end method

.method public putByte(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 432
    monitor-enter p0

    .line 433
    :try_start_0
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 434
    const/4 v0, -0x1

    monitor-exit p0

    .line 440
    :goto_0
    return v0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 438
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 439
    monitor-exit p0

    .line 440
    const/4 v0, 0x0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putBytes([B)I
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v1, 0x0

    .line 467
    monitor-enter p0

    .line 468
    :try_start_0
    array-length v0, p1

    .line 470
    .local v0, "len":I
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    if-le v0, v2, :cond_0

    .line 471
    const/4 v1, -0x1

    monitor-exit p0

    .line 477
    :goto_0
    return v1

    .line 474
    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-static {p1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 475
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 476
    monitor-exit p0

    goto :goto_0

    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putInt(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v2, v2, -0x4

    if-le v1, v2, :cond_0

    .line 406
    const/4 v1, -0x1

    monitor-exit p0

    .line 414
    :goto_0
    return v1

    .line 409
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 411
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    :cond_1
    monitor-exit p0

    .line 414
    const/4 v1, 0x0

    goto :goto_0

    .line 413
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putShort(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v2, v2, -0x2

    if-le v1, v2, :cond_0

    .line 420
    const/4 v1, -0x1

    monitor-exit p0

    .line 428
    :goto_0
    return v1

    .line 423
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 425
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_1
    monitor-exit p0

    .line 428
    const/4 v1, 0x0

    goto :goto_0

    .line 427
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putString(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 444
    monitor-enter p0

    .line 445
    :try_start_0
    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    sub-int/2addr v5, p2

    if-le v4, v5, :cond_0

    .line 446
    const/4 v3, -0x1

    monitor-exit p0

    .line 463
    :goto_0
    return v3

    .line 449
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 450
    .local v2, "s":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_2

    .line 451
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-static {v2, v4, v5, v6, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 452
    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 462
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v2    # "s":[B
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 454
    .restart local v2    # "s":[B
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, p2, v4

    .line 455
    .local v1, "remain":I
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v6, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 456
    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 457
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 458
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v5, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    .line 459
    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
