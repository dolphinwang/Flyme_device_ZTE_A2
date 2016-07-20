.class public Lcom/mediatek/lbs/em2/utils/DataCoder;
.super Ljava/lang/Object;
.source "DataCoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinary(Ljava/io/DataInputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 118
    .local v1, "len":I
    new-array v0, v1, [B

    .line 119
    .local v0, "buff":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 120
    return-object v0
.end method

.method public static getBoolean(Ljava/io/DataInputStream;)Z
    .locals 1
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getByte(Ljava/io/DataInputStream;)B
    .locals 1
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public static getDouble(Ljava/io/DataInputStream;)D
    .locals 4
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getLong(Ljava/io/DataInputStream;)J

    move-result-wide v0

    .line 102
    .local v0, "ret":J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static getFloat(Ljava/io/DataInputStream;)F
    .locals 2
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v0

    .line 97
    .local v0, "ret":I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static getInt(Ljava/io/DataInputStream;)I
    .locals 3
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "ret":I
    invoke-static {p0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getShort(Ljava/io/DataInputStream;)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 84
    invoke-static {p0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getShort(Ljava/io/DataInputStream;)S

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 85
    return v0
.end method

.method public static getLong(Ljava/io/DataInputStream;)J
    .locals 6
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    .line 90
    .local v0, "ret":J
    invoke-static {p0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 91
    invoke-static {p0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 92
    return-wide v0
.end method

.method public static getShort(Ljava/io/DataInputStream;)S
    .locals 2
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "ret":S
    invoke-static {p0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 77
    invoke-static {p0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    int-to-short v0, v1

    .line 78
    return v0
.end method

.method public static getString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B

    move-result v2

    if-nez v2, :cond_0

    .line 107
    const/4 v2, 0x0

    .line 112
    :goto_0
    return-object v2

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 110
    .local v1, "len":I
    new-array v0, v1, [B

    .line 111
    .local v0, "buff":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 112
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static putBinary(Ljava/io/BufferedOutputStream;[B)V
    .locals 1
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 63
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 64
    return-void
.end method

.method public static putBoolean(Ljava/io/BufferedOutputStream;Z)V
    .locals 1
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 11
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {p0, v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 12
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putByte(Ljava/io/BufferedOutputStream;B)V
    .locals 0
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 17
    return-void
.end method

.method public static putDouble(Ljava/io/BufferedOutputStream;D)V
    .locals 2
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putLong(Ljava/io/BufferedOutputStream;J)V

    .line 45
    return-void
.end method

.method public static putFloat(Ljava/io/BufferedOutputStream;F)V
    .locals 1
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 40
    return-void
.end method

.method public static putInt(Ljava/io/BufferedOutputStream;I)V
    .locals 2
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xffff

    .line 27
    and-int v0, p1, v1

    int-to-short v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 28
    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v1

    int-to-short v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 29
    return-void
.end method

.method public static putLong(Ljava/io/BufferedOutputStream;J)V
    .locals 4
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 33
    and-long v0, p1, v2

    long-to-int v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 34
    const/16 v0, 0x20

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 35
    return-void
.end method

.method public static putShort(Ljava/io/BufferedOutputStream;S)V
    .locals 1
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 22
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 23
    return-void
.end method

.method public static putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 3
    .param p0, "out"    # Ljava/io/BufferedOutputStream;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 49
    if-nez p1, :cond_0

    .line 50
    invoke-static {p0, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 54
    .local v0, "output":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 55
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 56
    invoke-static {p0, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    goto :goto_0
.end method
