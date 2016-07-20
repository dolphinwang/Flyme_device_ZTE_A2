.class public Lcom/mediatek/lbs/em2/utils/AgpsInterface;
.super Ljava/lang/Object;
.source "AgpsInterface.java"


# static fields
.field protected static final APP_MGR_CMD_ABORT_AREA_EVENT:I = 0x12f

.field protected static final APP_MGR_CMD_ABORT_PERIODIC:I = 0x12d

.field protected static final APP_MGR_CMD_CODER_TEST:I = 0x0

.field protected static final APP_MGR_CMD_GET_AGPS_PROFILING:I = 0x67

.field protected static final APP_MGR_CMD_GET_CONFIG:I = 0x64

.field protected static final APP_MGR_CMD_GET_CONFIG_V2:I = 0x69

.field protected static final APP_MGR_CMD_GET_CONFIG_V3:I = 0x6a

.field protected static final APP_MGR_CMD_GET_EMULATOR_MODE:I = 0x68

.field protected static final APP_MGR_CMD_GET_OMA_CP_SUPL_PROFILE:I = 0x65

.field protected static final APP_MGR_CMD_GET_SYSTEM_PROPERTY:I = 0x66

.field protected static final APP_MGR_CMD_SET_AGPS_ENABLE:I = 0xc8

.field protected static final APP_MGR_CMD_SET_ALLOW_NI:I = 0xd7

.field protected static final APP_MGR_CMD_SET_ALLOW_ROAMING:I = 0xd8

.field protected static final APP_MGR_CMD_SET_CA_ENABLE:I = 0xe0

.field protected static final APP_MGR_CMD_SET_CDMA_PREF:I = 0xca

.field protected static final APP_MGR_CMD_SET_CERT_FROM_SDCARD_ENABLE:I = 0xe3

.field protected static final APP_MGR_CMD_SET_CP_AUTO_RESET:I = 0xd6

.field protected static final APP_MGR_CMD_SET_EPC_MOLR_PDU:I = 0xde

.field protected static final APP_MGR_CMD_SET_EPC_MOLR_PDU_ENABLE:I = 0xdd

.field protected static final APP_MGR_CMD_SET_EXTERNAL_ADDR:I = 0xd4

.field protected static final APP_MGR_CMD_SET_LPP_ENABLE:I = 0xe2

.field protected static final APP_MGR_CMD_SET_MLC_NUMBER:I = 0xd5

.field protected static final APP_MGR_CMD_SET_MOLR_POS_METHDO:I = 0xd3

.field protected static final APP_MGR_CMD_SET_NI_REQ:I = 0xdc

.field protected static final APP_MGR_CMD_SET_OMA_CP_SUPL_PROFILE:I = 0xdb

.field protected static final APP_MGR_CMD_SET_POS_TECHNOLOGY_ECID:I = 0xce

.field protected static final APP_MGR_CMD_SET_POS_TECHNOLOGY_MSA:I = 0xcc

.field protected static final APP_MGR_CMD_SET_POS_TECHNOLOGY_MSB:I = 0xcd

.field protected static final APP_MGR_CMD_SET_POS_TECHNOLOGY_OTDOA:I = 0xcf

.field protected static final APP_MGR_CMD_SET_PROTOCOL:I = 0xc9

.field protected static final APP_MGR_CMD_SET_QOP:I = 0xd2

.field protected static final APP_MGR_CMD_SET_RESET_TO_DEFAULT:I = 0xda

.field protected static final APP_MGR_CMD_SET_SUPL_2_FILE:I = 0xd9

.field protected static final APP_MGR_CMD_SET_SUPL_PROFILE:I = 0xd1

.field protected static final APP_MGR_CMD_SET_SUPL_VERSION:I = 0xd0

.field protected static final APP_MGR_CMD_SET_TLS_VERSION:I = 0xdf

.field protected static final APP_MGR_CMD_SET_UDP_ENABLE:I = 0xe1

.field protected static final APP_MGR_CMD_SET_UP_PREF_METHOD:I = 0xcb

.field protected static final APP_MGR_CMD_START_AREA_EVENT:I = 0x12e

.field protected static final APP_MGR_CMD_START_EMULATOR_MODE:I = 0x193

.field protected static final APP_MGR_CMD_START_PERIODIC:I = 0x12c

.field protected static final APP_MGR_CMD_START_RESET_AGPSD:I = 0x192

.field protected static final APP_MGR_CMD_START_TEST_BUTTON:I = 0x191

.field protected static final APP_MGR_CMD_START_TEST_CASE:I = 0x190

.field protected static final APP_MGR_CMD_VERSION:I = 0x1

.field public static final EMULATOR_MODE_COMPORT:I = 0x3

.field public static final EMULATOR_MODE_DT:I = 0x2

.field public static final EMULATOR_MODE_GEMINI:I = 0x1

.field public static final EMULATOR_MODE_OFF:I = 0x0

.field public static final SOCKET_ADDRESS:Ljava/lang/String; = "agpsd2"

.field public static final VERSION_MAJOR:S = 0x1s

.field public static final VERSION_MINOR:S = 0x1s


# instance fields
.field protected client:Landroid/net/LocalSocket;

.field protected in:Ljava/io/DataInputStream;

.field protected out:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->checkVersion()V

    .line 100
    return-void
.end method

.method protected static dump([B)V
    .locals 3
    .param p0, "a"    # [B

    .prologue
    .line 1239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->log(Ljava/lang/String;)V

    .line 1240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->log(Ljava/lang/String;)V

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    :cond_0
    return-void
.end method

.method protected static getTimeString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1264
    const-string v1, ""

    .line 1265
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1266
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

    .line 1271
    return-object v1
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1255
    const-string v0, "LocationEM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    return-void
.end method

.method protected static loge(Ljava/lang/Object;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 1260
    const-string v0, "LocationEM [agps] ERR:"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return-void
.end method

.method protected static msleep(I)V
    .locals 3
    .param p0, "milliseconds"    # I

    .prologue
    .line 1248
    int-to-long v1, p0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :goto_0
    return-void

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkVersion()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 187
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 188
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 189
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 191
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 193
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getShort(Ljava/io/DataInputStream;)S

    move-result v1

    .line 194
    .local v1, "majorVersion":S
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getShort(Ljava/io/DataInputStream;)S

    move-result v2

    .line 196
    .local v2, "minorVersion":S
    if-eq v1, v5, :cond_0

    .line 197
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app maj ver=1 is not equal to AGPSD\'s maj ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .end local v1    # "majorVersion":S
    .end local v2    # "minorVersion":S
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v3

    .line 200
    .restart local v1    # "majorVersion":S
    .restart local v2    # "minorVersion":S
    :cond_0
    if-ge v2, v5, :cond_1

    .line 201
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app min ver=1 is greater than AGPSD\'s min ver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_1
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 212
    return-void
.end method

.method protected close()V
    .locals 2

    .prologue
    .line 1215
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 1216
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public coderTest()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 107
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 108
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v10, 0x12

    invoke-static {v9, v10}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 109
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v10, 0x1234

    invoke-static {v9, v10}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putShort(Ljava/io/BufferedOutputStream;S)V

    .line 110
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const v10, 0x12345678

    invoke-static {v9, v10}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 111
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const-wide v10, 0x1234567890abcdefL    # 5.626349108908516E-221

    invoke-static {v9, v10, v11}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putLong(Ljava/io/BufferedOutputStream;J)V

    .line 112
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putFloat(Ljava/io/BufferedOutputStream;F)V

    .line 113
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putDouble(Ljava/io/BufferedOutputStream;D)V

    .line 114
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const-string v10, "string"

    invoke-static {v9, v10}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 115
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v10, 0x9

    new-array v10, v10, [B

    fill-array-data v10, :array_0

    invoke-static {v9, v10}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBinary(Ljava/io/BufferedOutputStream;[B)V

    .line 116
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 120
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v9}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B

    move-result v9

    int-to-long v6, v9

    .line 121
    .local v6, "ret":J
    const-wide/16 v9, 0x12

    cmp-long v9, v6, v9

    if-eqz v9, :cond_0

    .line 122
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getByte failed expected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x12

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " actually="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v6    # "ret":J
    :catch_0
    move-exception v3

    .line 177
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v9, Ljava/io/IOException;

    invoke-direct {v9, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v9

    .line 126
    .restart local v6    # "ret":J
    :cond_0
    :try_start_2
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v9}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getShort(Ljava/io/DataInputStream;)S

    move-result v9

    int-to-long v6, v9

    .line 127
    const-wide/16 v9, 0x1234

    cmp-long v9, v6, v9

    if-eqz v9, :cond_1

    .line 128
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getShort failed expected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x1234

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " actually="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 132
    :cond_1
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v9}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v9

    int-to-long v6, v9

    .line 133
    const-wide/32 v9, 0x12345678

    cmp-long v9, v6, v9

    if-eqz v9, :cond_2

    .line 134
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getInt failed expected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/32 v11, 0x12345678

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " actually="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 138
    :cond_2
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v9}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getLong(Ljava/io/DataInputStream;)J

    move-result-wide v6

    .line 139
    const-wide v9, 0x1234567890abcdefL    # 5.626349108908516E-221

    cmp-long v9, v6, v9

    if-eqz v9, :cond_3

    .line 140
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLong failed expected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide v11, 0x1234567890abcdefL    # 5.626349108908516E-221

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " actually="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 144
    :cond_3
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v9}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getFloat(Ljava/io/DataInputStream;)F

    move-result v4

    .line 145
    .local v4, "f":F
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v4, v9

    if-eqz v9, :cond_4

    .line 146
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getFloat failed expected=1.0 actually="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 149
    :cond_4
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v9}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getDouble(Ljava/io/DataInputStream;)D

    move-result-wide v1

    .line 150
    .local v1, "d":D
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    cmpl-double v9, v1, v9

    if-eqz v9, :cond_5

    .line 151
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDouble failed expected=2 actually="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 154
    :cond_5
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v9}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, "string":Ljava/lang/String;
    const-string v9, "string"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 156
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getString failed expected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " actually="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 159
    :cond_6
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v9}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBinary(Ljava/io/DataInputStream;)[B

    move-result-object v0

    .line 160
    .local v0, "binary":[B
    if-nez v0, :cond_7

    .line 161
    new-instance v9, Ljava/io/IOException;

    const-string v10, "getBinary failed, get null"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 163
    :cond_7
    array-length v9, v0

    const/16 v10, 0x9

    if-eq v9, v10, :cond_8

    .line 164
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getBinary failed, length expected=9 actually="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 167
    :cond_8
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v9, 0x9

    if-ge v5, v9, :cond_a

    .line 168
    aget-byte v9, v0, v5

    if-eq v9, v5, :cond_9

    .line 169
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getBinary failed, data["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] expected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " actually="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v11, v0, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 167
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 175
    :cond_a
    iget-object v9, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v9}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 181
    return-void

    .line 115
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method protected connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 1202
    :cond_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    .line 1203
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "agpsd2"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1207
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1209
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    .line 1210
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->client:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    .line 1211
    return-void
.end method

.method public getAgpsConfig()Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    .locals 8

    .prologue
    .line 215
    new-instance v1, Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-direct {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;-><init>()V

    .line 217
    .local v1, "config":Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 219
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v7, 0x64

    invoke-static {v6, v7}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 220
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 223
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getAgpsSetting()Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    move-result-object v0

    .line 224
    .local v0, "agpsSetting":Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsEnable:Z

    .line 225
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsProtocol:I

    .line 226
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->gpevt:Z

    .line 228
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCpSetting()Lcom/mediatek/lbs/em2/utils/CpSetting;

    move-result-object v2

    .line 229
    .local v2, "cpSetting":Lcom/mediatek/lbs/em2/utils/CpSetting;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->molrPosMethod:I

    .line 230
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddrEnable:Z

    .line 231
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddr:Ljava/lang/String;

    .line 232
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumberEnable:Z

    .line 233
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumber:Ljava/lang/String;

    .line 234
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->cpAutoReset:Z

    .line 235
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayloadEnable:Z

    .line 236
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBinary(Ljava/io/DataInputStream;)[B

    move-result-object v6

    iput-object v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayload:[B

    .line 238
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getUpSetting()Lcom/mediatek/lbs/em2/utils/UpSetting;

    move-result-object v5

    .line 239
    .local v5, "upSetting":Lcom/mediatek/lbs/em2/utils/UpSetting;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->caEnable:Z

    .line 240
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->niRequest:Z

    .line 241
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->roaming:Z

    .line 242
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->cdmaPreferred:I

    .line 243
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->prefMethod:I

    .line 244
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplVersion:I

    .line 245
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->tlsVersion:I

    .line 246
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplLog:Z

    .line 247
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->msaEnable:Z

    .line 248
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->msbEnable:Z

    .line 249
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->ecidEnable:Z

    .line 250
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->otdoaEnable:Z

    .line 251
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopHacc:I

    .line 252
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopVacc:I

    .line 253
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopLocAge:I

    .line 254
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopDelay:I

    .line 256
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCurSuplProfile()Lcom/mediatek/lbs/em2/utils/SuplProfile;

    move-result-object v4

    .line 257
    .local v4, "suplProfile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    .line 258
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    .line 259
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    .line 260
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    .line 261
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    .line 262
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    .line 263
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    .line 264
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    .line 265
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    .line 266
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    .line 267
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    .line 270
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 276
    return-object v1

    .line 271
    .end local v0    # "agpsSetting":Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    .end local v2    # "cpSetting":Lcom/mediatek/lbs/em2/utils/CpSetting;
    .end local v4    # "suplProfile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    .end local v5    # "upSetting":Lcom/mediatek/lbs/em2/utils/UpSetting;
    :catch_0
    move-exception v3

    .line 272
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v6
.end method

.method public getAgpsConfigV2()Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    .locals 8

    .prologue
    .line 280
    new-instance v1, Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-direct {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;-><init>()V

    .line 282
    .local v1, "config":Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 284
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v7, 0x69

    invoke-static {v6, v7}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 285
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 288
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getAgpsSetting()Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    move-result-object v0

    .line 289
    .local v0, "agpsSetting":Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsEnable:Z

    .line 290
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsProtocol:I

    .line 291
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->gpevt:Z

    .line 293
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCpSetting()Lcom/mediatek/lbs/em2/utils/CpSetting;

    move-result-object v2

    .line 294
    .local v2, "cpSetting":Lcom/mediatek/lbs/em2/utils/CpSetting;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->molrPosMethod:I

    .line 295
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddrEnable:Z

    .line 296
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddr:Ljava/lang/String;

    .line 297
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumberEnable:Z

    .line 298
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumber:Ljava/lang/String;

    .line 299
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->cpAutoReset:Z

    .line 300
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayloadEnable:Z

    .line 301
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBinary(Ljava/io/DataInputStream;)[B

    move-result-object v6

    iput-object v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayload:[B

    .line 303
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getUpSetting()Lcom/mediatek/lbs/em2/utils/UpSetting;

    move-result-object v5

    .line 304
    .local v5, "upSetting":Lcom/mediatek/lbs/em2/utils/UpSetting;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->caEnable:Z

    .line 305
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->niRequest:Z

    .line 306
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->roaming:Z

    .line 307
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->cdmaPreferred:I

    .line 308
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->prefMethod:I

    .line 309
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplVersion:I

    .line 310
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->tlsVersion:I

    .line 311
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplLog:Z

    .line 312
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->msaEnable:Z

    .line 313
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->msbEnable:Z

    .line 314
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->ecidEnable:Z

    .line 315
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->otdoaEnable:Z

    .line 316
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopHacc:I

    .line 317
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopVacc:I

    .line 318
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopLocAge:I

    .line 319
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopDelay:I

    .line 320
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->lppEnable:Z

    .line 322
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCurSuplProfile()Lcom/mediatek/lbs/em2/utils/SuplProfile;

    move-result-object v4

    .line 323
    .local v4, "suplProfile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    .line 324
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    .line 325
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    .line 326
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    .line 327
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    .line 328
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    .line 329
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    .line 330
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    .line 331
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    .line 332
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    .line 333
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    .line 336
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 342
    return-object v1

    .line 337
    .end local v0    # "agpsSetting":Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    .end local v2    # "cpSetting":Lcom/mediatek/lbs/em2/utils/CpSetting;
    .end local v4    # "suplProfile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    .end local v5    # "upSetting":Lcom/mediatek/lbs/em2/utils/UpSetting;
    :catch_0
    move-exception v3

    .line 338
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v6
.end method

.method public getAgpsConfigV3()Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    .locals 8

    .prologue
    .line 346
    new-instance v1, Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-direct {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;-><init>()V

    .line 348
    .local v1, "config":Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 350
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v7, 0x6a

    invoke-static {v6, v7}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 351
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 354
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getAgpsSetting()Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    move-result-object v0

    .line 355
    .local v0, "agpsSetting":Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsEnable:Z

    .line 356
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsProtocol:I

    .line 357
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->gpevt:Z

    .line 359
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCpSetting()Lcom/mediatek/lbs/em2/utils/CpSetting;

    move-result-object v2

    .line 360
    .local v2, "cpSetting":Lcom/mediatek/lbs/em2/utils/CpSetting;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->molrPosMethod:I

    .line 361
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddrEnable:Z

    .line 362
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddr:Ljava/lang/String;

    .line 363
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumberEnable:Z

    .line 364
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumber:Ljava/lang/String;

    .line 365
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->cpAutoReset:Z

    .line 366
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayloadEnable:Z

    .line 367
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBinary(Ljava/io/DataInputStream;)[B

    move-result-object v6

    iput-object v6, v2, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayload:[B

    .line 369
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getUpSetting()Lcom/mediatek/lbs/em2/utils/UpSetting;

    move-result-object v5

    .line 370
    .local v5, "upSetting":Lcom/mediatek/lbs/em2/utils/UpSetting;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->caEnable:Z

    .line 371
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->niRequest:Z

    .line 372
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->roaming:Z

    .line 373
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->cdmaPreferred:I

    .line 374
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->prefMethod:I

    .line 375
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplVersion:I

    .line 376
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->tlsVersion:I

    .line 377
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplLog:Z

    .line 378
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->msaEnable:Z

    .line 379
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->msbEnable:Z

    .line 380
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->ecidEnable:Z

    .line 381
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->otdoaEnable:Z

    .line 382
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopHacc:I

    .line 383
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopVacc:I

    .line 384
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopLocAge:I

    .line 385
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopDelay:I

    .line 386
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->lppEnable:Z

    .line 387
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/mediatek/lbs/em2/utils/UpSetting;->certFromSdcard:Z

    .line 389
    invoke-virtual {v1}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCurSuplProfile()Lcom/mediatek/lbs/em2/utils/SuplProfile;

    move-result-object v4

    .line 390
    .local v4, "suplProfile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    .line 391
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    .line 392
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v6

    iput v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    .line 393
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    .line 394
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    .line 395
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    .line 396
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    .line 397
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    .line 398
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    .line 399
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    .line 400
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    .line 403
    iget-object v6, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v6}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 409
    return-object v1

    .line 404
    .end local v0    # "agpsSetting":Lcom/mediatek/lbs/em2/utils/AgpsSetting;
    .end local v2    # "cpSetting":Lcom/mediatek/lbs/em2/utils/CpSetting;
    .end local v4    # "suplProfile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    .end local v5    # "upSetting":Lcom/mediatek/lbs/em2/utils/UpSetting;
    :catch_0
    move-exception v3

    .line 405
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v6
.end method

.method public getAgpsProfilingInfo()Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo;
    .locals 10

    .prologue
    .line 467
    new-instance v2, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo;

    invoke-direct {v2}, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo;-><init>()V

    .line 469
    .local v2, "info":Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 471
    iget-object v8, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v9, 0x67

    invoke-static {v8, v9}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 472
    iget-object v8, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 475
    iget-object v8, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v8}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v4

    .line 476
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 477
    iget-object v8, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v8}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v7

    .line 478
    .local v7, "type":I
    iget-object v8, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v8}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getLong(Ljava/io/DataInputStream;)J

    move-result-wide v5

    .line 479
    .local v5, "timestamp":J
    iget-object v8, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v8}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v2, v7, v5, v6, v3}, Lcom/mediatek/lbs/em2/utils/AgpsProfilingInfo;->addElement(IJLjava/lang/String;)V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "timestamp":J
    .end local v7    # "type":I
    :cond_0
    iget-object v8, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v8}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 490
    return-object v2

    .line 485
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v8
.end method

.method public getEmulatorMode()I
    .locals 4

    .prologue
    .line 500
    const/4 v1, 0x0

    .line 502
    .local v1, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 504
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v3, 0x68

    invoke-static {v2, v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 505
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 508
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v1

    .line 511
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 517
    return v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v2
.end method

.method public getSuplProfile()Lcom/mediatek/lbs/em2/utils/SuplProfile;
    .locals 4

    .prologue
    .line 413
    new-instance v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;

    invoke-direct {v1}, Lcom/mediatek/lbs/em2/utils/SuplProfile;-><init>()V

    .line 415
    .local v1, "profile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 417
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 418
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 421
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    .line 422
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    .line 423
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getInt(Ljava/io/DataInputStream;)I

    move-result v2

    iput v2, v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    .line 424
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getBoolean(Ljava/io/DataInputStream;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    .line 425
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    .line 426
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    .line 427
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    .line 428
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    .line 429
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    .line 430
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    .line 431
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    .line 434
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 440
    return-object v1

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v2
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 444
    const/4 v1, 0x0

    .line 446
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 448
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v3, 0x66

    invoke-static {v2, v3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 449
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v2, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v2, p2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 454
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    .line 457
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 463
    return-object v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v2
.end method

.method public resetAgpsd()V
    .locals 3

    .prologue
    .line 1137
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1139
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0x192

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1140
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1144
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->waitDisconnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1145
    const-string v1, "reset Agpsd failure"

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->loge(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1156
    :goto_0
    return-void

    .line 1149
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->retryConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1154
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    goto :goto_0

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1154
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method protected retryConnection()V
    .locals 4

    .prologue
    .line 1184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 1185
    const/16 v2, 0xc8

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->msleep(I)V

    .line 1187
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connecting.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->log(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connecting success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :cond_0
    return-void

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e1":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connecting failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->log(Ljava/lang/String;)V

    .line 1184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAgpsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 522
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 524
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 525
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 526
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 529
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 535
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setAllowNI(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 886
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 888
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd7

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 889
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 890
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 893
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 899
    return-void

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setAllowRoaming(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 903
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 905
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd8

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 906
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 907
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 910
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 916
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setCdmaPref(I)V
    .locals 3
    .param p1, "cdmaPref"    # I

    .prologue
    .line 565
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 567
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 568
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    int-to-byte v2, p1

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 569
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 572
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 578
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setCertFromSdcard(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 756
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 758
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xe3

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 759
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 760
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 763
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 769
    return-void

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setCertVerify(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 706
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 708
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xe0

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 709
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 710
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 713
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 719
    return-void

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setCpAutoReset(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 869
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 871
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd6

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 872
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 873
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 876
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 882
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setEpcMolrPdu([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 1015
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1017
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xde

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1018
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBinary(Ljava/io/BufferedOutputStream;[B)V

    .line 1019
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1022
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1028
    return-void

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setEpcMolrPduEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 998
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1000
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xdd

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1001
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 1002
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1005
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1011
    return-void

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setExternalAddr(ZLjava/lang/String;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 833
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 835
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd4

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 836
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 837
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 838
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 841
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 847
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 845
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setLppEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 739
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 741
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xe2

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 742
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 743
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 746
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 752
    return-void

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setMlcNumber(ZLjava/lang/String;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 851
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 853
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd5

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 854
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 855
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 856
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 859
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 865
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 863
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setMolrPosMethod(I)V
    .locals 3
    .param p1, "molrPosMethod"    # I

    .prologue
    .line 816
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 818
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd3

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 819
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    int-to-byte v2, p1

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 820
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 823
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 829
    return-void

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setNiRequest(I[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 980
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 982
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xdc

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 983
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 984
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBinary(Ljava/io/BufferedOutputStream;[B)V

    .line 985
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 988
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 994
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setPosTechnologyECID(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 638
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 640
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xce

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 641
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 642
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 645
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 651
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setPosTechnologyMSA(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 604
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 606
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 607
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 608
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 611
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 617
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setPosTechnologyMSB(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 621
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 623
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xcd

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 624
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 625
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 628
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 634
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setPosTechnologyOTDOA(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 655
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 657
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xcf

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 658
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 659
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 662
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 668
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setProtocol(I)V
    .locals 3
    .param p1, "protocol"    # I

    .prologue
    .line 543
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 545
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 546
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    int-to-byte v2, p1

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 547
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 550
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 556
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setQop(IIII)V
    .locals 3
    .param p1, "hacc"    # I
    .param p2, "vacc"    # I
    .param p3, "locAge"    # I
    .param p4, "delay"    # I

    .prologue
    .line 792
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 794
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd2

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 795
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 796
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 797
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 798
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p4}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 799
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 802
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 808
    return-void

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setResetToDefault()V
    .locals 3

    .prologue
    .line 937
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 939
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xda

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 940
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 943
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 949
    return-void

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setSupl2file(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 920
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 922
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd9

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 923
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 924
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 927
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 933
    return-void

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 931
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setSuplProfile(Lcom/mediatek/lbs/em2/utils/SuplProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/mediatek/lbs/em2/utils/SuplProfile;

    .prologue
    .line 953
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 955
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xdb

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 956
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 958
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 959
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-boolean v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 960
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 961
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 962
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 963
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    iget-object v2, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 970
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 976
    return-void

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 974
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setSuplProfile(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "tlsEnabled"    # Z

    .prologue
    .line 773
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 775
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd1

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 776
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 778
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p3}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putBoolean(Ljava/io/BufferedOutputStream;Z)V

    .line 779
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 782
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 788
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setSuplVersion(I)V
    .locals 3
    .param p1, "suplVersion"    # I

    .prologue
    .line 672
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 674
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xd0

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 675
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    int-to-byte v2, p1

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 676
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 679
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 685
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setTlsVersion(I)V
    .locals 3
    .param p1, "tlsVersion"    # I

    .prologue
    .line 689
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 691
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xdf

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 692
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    int-to-byte v2, p1

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 693
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 696
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 702
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 700
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setUdpEnable()V
    .locals 3

    .prologue
    .line 723
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 725
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xe1

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 726
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 729
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 735
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public setUpPrefMethod(I)V
    .locals 3
    .param p1, "prefMethod"    # I

    .prologue
    .line 587
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 589
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 590
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    int-to-byte v2, p1

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putByte(Ljava/io/BufferedOutputStream;B)V

    .line 591
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 594
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 600
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public startAreaEvent(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1070
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1072
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0x12e

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1073
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1074
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1077
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1083
    return-void

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1081
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public startEmulatorMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1160
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1162
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0x193

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1163
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1164
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1168
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->waitDisconnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1169
    const-string v1, "reset Agpsd failure"

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->loge(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1180
    :goto_0
    return-void

    .line 1173
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->retryConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1178
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1178
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public startPeriodic()V
    .locals 3

    .prologue
    .line 1032
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1034
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1035
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1038
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1044
    return-void

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1042
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public stopAreaEvent()V
    .locals 3

    .prologue
    .line 1087
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1089
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0x12f

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1090
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1093
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1099
    return-void

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public stopPeriodic()V
    .locals 3

    .prologue
    .line 1048
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1050
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0x12d

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1051
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1054
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1060
    return-void

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1058
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public testButton(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 1120
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1122
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0x191

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1123
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1124
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1127
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1133
    return-void

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method public testCase(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 1103
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1105
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0x190

    invoke-static {v1, v2}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1106
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-static {v1, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->putInt(Ljava/io/BufferedOutputStream;I)V

    .line 1107
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1110
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder;->getByte(Ljava/io/DataInputStream;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1116
    return-void

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v1
.end method

.method protected waitDisconnected()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1224
    const/16 v3, 0x800

    new-array v2, v3, [B

    .line 1227
    .local v2, "tmp":[B
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1228
    .local v1, "readlen":I
    if-gtz v1, :cond_0

    .line 1235
    :cond_0
    return v4

    .line 1231
    .end local v1    # "readlen":I
    :catch_0
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1233
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
