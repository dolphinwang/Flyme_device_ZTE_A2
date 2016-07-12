.class Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;
.super Ljava/lang/Object;
.source "SvlteModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EModemStatus"
.end annotation


# instance fields
.field private mModemStatus:I

.field private mRemoteSimProtocol:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "remoteSimProtocol"    # I
    .param p2, "modemStatus"    # I

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EModemStatus: init: remoteSimProtocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modemStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 213
    iput p1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mRemoteSimProtocol:I

    .line 214
    iput p2, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mModemStatus:I

    .line 215
    return-void
.end method

.method private calculateEModemStatus([I)[I
    .locals 13
    .param p1, "cardTypes"    # [I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 259
    const-string v8, "persist.radio.simswitch"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, "capability":I
    const/4 v1, 0x0

    .line 261
    .local v1, "cardType1":I
    const/4 v2, 0x0

    .line 262
    .local v2, "cardType2":I
    array-length v8, p1

    if-ne v8, v10, :cond_2

    .line 263
    aget v1, p1, v11

    .line 268
    :cond_0
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculateEModemStatus cardType1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cardType2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", capability="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 271
    const/4 v5, 0x2

    .line 272
    .local v5, "modemStatus":I
    const/4 v6, 0x1

    .line 275
    .local v6, "remoteSimProtocol":I
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isOP09SpecA()Z
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$100()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 276
    const-string v8, "calculateEModemStatus: OP09 A"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 277
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 279
    const-string v8, "calculateEModemStatus: no card"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 280
    const/4 v5, 0x1

    .line 281
    const/4 v6, 0x1

    .line 424
    :cond_1
    :goto_1
    new-array v4, v12, [I

    .line 425
    .local v4, "eModemStatus":[I
    aput v5, v4, v11

    .line 426
    aput v6, v4, v10

    .line 427
    return-object v4

    .line 264
    .end local v4    # "eModemStatus":[I
    .end local v5    # "modemStatus":I
    .end local v6    # "remoteSimProtocol":I
    :cond_2
    array-length v8, p1

    if-ne v8, v12, :cond_0

    .line 265
    aget v1, p1, v11

    .line 266
    aget v2, p1, v10

    goto :goto_0

    .line 282
    .restart local v5    # "modemStatus":I
    .restart local v6    # "remoteSimProtocol":I
    :cond_3
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 284
    const-string v8, "calculateEModemStatus: GSM only"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 285
    const/4 v5, 0x0

    .line 286
    const/4 v6, 0x1

    goto :goto_1

    .line 287
    :cond_4
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$400(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 289
    const-string v8, "calculateEModemStatus: CT 3G"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 290
    const/4 v5, 0x1

    .line 291
    const/4 v6, 0x1

    goto :goto_1

    .line 292
    :cond_5
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 293
    const-string v8, "calculateEModemStatus: CT 4G"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v8

    if-nez v8, :cond_6

    .line 296
    const/4 v5, 0x1

    .line 300
    :goto_2
    const/4 v6, 0x1

    goto :goto_1

    .line 298
    :cond_6
    const/4 v5, 0x2

    goto :goto_2

    .line 303
    :cond_7
    const-string v8, "calculateEModemStatus: other case, may not happen!"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :cond_8
    const-string v8, "calculateEModemStatus: OM/CT C"

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 309
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v8

    if-nez v8, :cond_9

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$400(I)Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_9
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v8

    if-nez v8, :cond_a

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$400(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 312
    :cond_a
    const/4 v6, 0x1

    .line 313
    if-ne v0, v10, :cond_c

    .line 314
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 315
    const/4 v5, 0x2

    .line 326
    :goto_3
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v8

    if-nez v8, :cond_1

    .line 327
    const/4 v5, 0x1

    goto :goto_1

    .line 317
    :cond_b
    const/4 v5, 0x1

    goto :goto_3

    .line 320
    :cond_c
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 321
    const/4 v5, 0x2

    goto :goto_3

    .line 323
    :cond_d
    const/4 v5, 0x1

    goto :goto_3

    .line 333
    :cond_e
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v8

    if-eqz v8, :cond_12

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v8

    if-nez v8, :cond_f

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 335
    :cond_f
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v8

    if-nez v8, :cond_10

    .line 336
    const/4 v5, 0x1

    .line 341
    :goto_4
    if-ne v0, v10, :cond_11

    .line 342
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 338
    :cond_10
    const/4 v5, 0x2

    goto :goto_4

    .line 344
    :cond_11
    const/4 v6, 0x2

    .line 347
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isSrlteSupport()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 348
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 352
    :cond_12
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$400(I)Z

    move-result v8

    if-eqz v8, :cond_15

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v8

    if-nez v8, :cond_13

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 355
    :cond_13
    const/4 v5, 0x1

    .line 356
    if-ne v0, v10, :cond_14

    .line 357
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 359
    :cond_14
    const/4 v6, 0x2

    .line 361
    goto/16 :goto_1

    .line 365
    :cond_15
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v8

    if-nez v8, :cond_16

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 366
    :cond_16
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is4GCdmaCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$500(I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 368
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaIratSupport()Z

    move-result v8

    if-nez v8, :cond_17

    .line 369
    const/4 v5, 0x1

    .line 373
    :goto_5
    if-ne v0, v10, :cond_18

    .line 374
    const/4 v6, 0x2

    .line 377
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isSrlteSupport()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 378
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 371
    :cond_17
    const/4 v5, 0x2

    goto :goto_5

    .line 381
    :cond_18
    const/4 v6, 0x1

    .line 383
    goto/16 :goto_1

    .line 384
    :cond_19
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->is3GCdmaCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$400(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 386
    const/4 v5, 0x1

    .line 387
    if-ne v0, v10, :cond_1a

    .line 388
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 390
    :cond_1a
    const/4 v6, 0x1

    .line 392
    goto/16 :goto_1

    .line 397
    :cond_1b
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v7

    .line 398
    .local v7, "svlteSlotId":I
    const/4 v8, -0x1

    if-le v7, v8, :cond_1c

    move v3, v7

    .line 399
    .local v3, "cdmaSocketSlotId":I
    :goto_6
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 401
    const/4 v5, 0x0

    .line 402
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRemoteProtocol(I)I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$700(I)I

    move-result v6

    .line 403
    goto/16 :goto_1

    .line 398
    .end local v3    # "cdmaSocketSlotId":I
    :cond_1c
    # getter for: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->sCdmaSocketSlotId:I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$600()I

    move-result v3

    goto :goto_6

    .line 404
    .restart local v3    # "cdmaSocketSlotId":I
    :cond_1d
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v8

    if-eqz v8, :cond_1e

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 406
    const/4 v5, 0x1

    .line 407
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRemoteProtocol(I)I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$700(I)I

    move-result v6

    .line 408
    goto/16 :goto_1

    .line 409
    :cond_1e
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v8

    if-eqz v8, :cond_1f

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isGsmCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$300(I)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 411
    const/4 v5, 0x1

    .line 412
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRemoteProtocol(I)I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$700(I)I

    move-result v6

    .line 413
    goto/16 :goto_1

    .line 414
    :cond_1f
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v8

    if-eqz v8, :cond_1

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->isNonCard(I)Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$200(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 416
    const/4 v5, 0x1

    .line 417
    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRemoteProtocol(I)I
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$700(I)I

    move-result v6

    .line 418
    goto/16 :goto_1
.end method


# virtual methods
.method public adjustCardTypes([I)[I
    .locals 4
    .param p1, "cardTypes"    # [I

    .prologue
    .line 431
    array-length v2, p1

    new-array v1, v2, [I

    .line 432
    .local v1, "tempCardTypes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 433
    invoke-static {}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->getInstance()Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/internal/telephony/uicc/SvlteUiccUtils;->isCt3gDualMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, p1, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 435
    const/4 v2, 0x4

    aput v2, v1, v0

    .line 439
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tempCardTypes ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_0
    aget v2, p1, v0

    aput v2, v1, v0

    goto :goto_1

    .line 441
    :cond_1
    return-object v1
.end method

.method public dump()V
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EModemStatus: mRemoteSimProtocol= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mRemoteSimProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModemStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mModemStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public getModemStatus()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mModemStatus:I

    return v0
.end method

.method public getRemoteSimProtocol()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mRemoteSimProtocol:I

    return v0
.end method

.method public isEModemStatusChanged([I)Z
    .locals 11
    .param p1, "cardTypes"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, "lastModemStatus":I
    const/4 v3, 0x0

    .line 229
    .local v3, "lastSimProtocol":I
    const-string v9, "gsm.emdstatus.sent"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "eLastModemStatus":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEModemStatusChanged eModemStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 231
    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, "parameters":[Ljava/lang/String;
    const/4 v9, 0x2

    array-length v10, v5

    if-ne v9, v10, :cond_0

    .line 233
    aget-object v9, v5, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 234
    aget-object v9, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 236
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEModemStatusChanged lastModemStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lastSimProtocol = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->adjustCardTypes([I)[I

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->calculateEModemStatus([I)[I

    move-result-object v1

    .line 239
    .local v1, "eModemStatus":[I
    aget v4, v1, v7

    .line 240
    .local v4, "modemStatus":I
    aget v6, v1, v8

    .line 241
    .local v6, "remoteSimProtocol":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEModemStatusChanged modemStatus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", remoteSimProtocol = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->logicLog(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->access$000(Ljava/lang/String;)V

    .line 243
    if-ne v2, v4, :cond_1

    if-eq v3, v6, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    return v7
.end method

.method public refreshEModemStatus([I)V
    .locals 2
    .param p1, "cardTypes"    # [I

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->calculateEModemStatus([I)[I

    move-result-object v0

    .line 248
    .local v0, "eModemStatus":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mModemStatus:I

    .line 249
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->mRemoteSimProtocol:I

    .line 250
    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController$EModemStatus;->dump()V

    .line 251
    return-void
.end method
