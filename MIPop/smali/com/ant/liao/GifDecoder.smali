.class public Lcom/ant/liao/GifDecoder;
.super Ljava/lang/Thread;
.source "GifDecoder.java"


# static fields
.field private static final MaxStackSize:I = 0x1000

.field public static final STATUS_FINISH:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARSING:I = 0x0

.field public static final TAG:Ljava/lang/String; = "GifDecoder"


# instance fields
.field private act:[I

.field private action:Lcom/ant/liao/GifAction;

.field private bgColor:I

.field private bgIndex:I

.field private block:[B

.field private blockSize:I

.field private currentFrame:Lcom/ant/liao/GifFrame;

.field private delay:I

.field private dispose:I

.field private frameCount:I

.field private gct:[I

.field private gctFlag:Z

.field private gctSize:I

.field private gifData:[B

.field private gifFrame:Lcom/ant/liao/GifFrame;

.field public height:I

.field private ih:I

.field private image:Landroid/graphics/Bitmap;

.field private in:Ljava/io/InputStream;

.field private interlace:Z

.field private isShow:Z

.field private iw:I

.field private ix:I

.field private iy:I

.field private lastBgColor:I

.field private lastDispose:I

.field private lastImage:Landroid/graphics/Bitmap;

.field private lct:[I

.field private lctFlag:Z

.field private lctSize:I

.field private loopCount:I

.field private lrh:I

.field private lrw:I

.field private lrx:I

.field private lry:I

.field private pixelAspect:I

.field private pixelStack:[B

.field private pixels:[B

.field private prefix:[S

.field public status:I

.field private suffix:[B

.field private transIndex:I

.field private transparency:Z

.field public width:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/ant/liao/GifAction;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "act"    # Lcom/ant/liao/GifAction;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/ant/liao/GifDecoder;->loopCount:I

    .line 50
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 52
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->isShow:Z

    .line 54
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->block:[B

    .line 55
    iput v1, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    .line 58
    iput v1, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    .line 60
    iput v1, p0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    .line 61
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    .line 62
    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 77
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    .line 79
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    .line 87
    iput-object p1, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    .line 88
    iput-object p2, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    .line 89
    return-void
.end method

.method public constructor <init>([BLcom/ant/liao/GifAction;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "act"    # Lcom/ant/liao/GifAction;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/ant/liao/GifDecoder;->loopCount:I

    .line 50
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 52
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->isShow:Z

    .line 54
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->block:[B

    .line 55
    iput v1, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    .line 58
    iput v1, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    .line 60
    iput v1, p0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    .line 61
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    .line 62
    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 77
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    .line 79
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    .line 82
    iput-object p1, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    .line 83
    iput-object p2, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    .line 84
    return-void
.end method

.method private decodeImageData()V
    .locals 25

    .prologue
    .line 395
    const/4 v2, -0x1

    .line 396
    .local v2, "NullCode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ant/liao/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ant/liao/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 399
    .local v17, "npix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 400
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ant/liao/GifDecoder;->pixels:[B

    .line 402
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 403
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ant/liao/GifDecoder;->prefix:[S

    .line 405
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 406
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ant/liao/GifDecoder;->suffix:[B

    .line 408
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 409
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    .line 412
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v11

    .line 413
    .local v11, "data_size":I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 414
    .local v6, "clear":I
    add-int/lit8 v13, v6, 0x1

    .line 415
    .local v13, "end_of_information":I
    add-int/lit8 v3, v6, 0x2

    .line 416
    .local v3, "available":I
    move/from16 v18, v2

    .line 417
    .local v18, "old_code":I
    add-int/lit8 v9, v11, 0x1

    .line 418
    .local v9, "code_size":I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 419
    .local v8, "code_mask":I
    const/4 v7, 0x0

    .local v7, "code":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 419
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 425
    :cond_5
    const/4 v4, 0x0

    .local v4, "bi":I
    move/from16 v19, v4

    .local v19, "pi":I
    move/from16 v21, v4

    .local v21, "top":I
    move v14, v4

    .local v14, "first":I
    move v10, v4

    .local v10, "count":I
    move v5, v4

    .local v5, "bits":I
    move v12, v4

    .line 426
    .local v12, "datum":I
    const/4 v15, 0x0

    .local v15, "i":I
    move/from16 v20, v19

    .end local v19    # "pi":I
    .local v20, "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .local v22, "top":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_11

    .line 427
    if-nez v22, :cond_12

    .line 428
    if-ge v5, v9, :cond_8

    .line 430
    if-nez v10, :cond_7

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/ant/liao/GifDecoder;->readBlock()I

    move-result v10

    .line 433
    if-gtz v10, :cond_6

    move/from16 v21, v22

    .line 498
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_10

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 498
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 436
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_6
    const/4 v4, 0x0

    .line 438
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 439
    add-int/lit8 v5, v5, 0x8

    .line 440
    add-int/lit8 v4, v4, 0x1

    .line 441
    add-int/lit8 v10, v10, -0x1

    .line 442
    goto :goto_1

    .line 445
    :cond_8
    and-int v7, v12, v8

    .line 446
    shr-int/2addr v12, v9

    .line 447
    sub-int/2addr v5, v9

    .line 450
    if-gt v7, v3, :cond_11

    if-ne v7, v13, :cond_9

    move/from16 v21, v22

    .line 451
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 453
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_9
    if-ne v7, v6, :cond_a

    .line 455
    add-int/lit8 v9, v11, 0x1

    .line 456
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 457
    add-int/lit8 v3, v6, 0x2

    .line 458
    move/from16 v18, v2

    .line 459
    goto :goto_1

    .line 461
    :cond_a
    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 463
    move/from16 v18, v7

    .line 464
    move v14, v7

    move/from16 v22, v21

    .line 465
    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_1

    .line 467
    :cond_b
    move/from16 v16, v7

    .line 468
    .local v16, "in_code":I
    if-ne v7, v3, :cond_c

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 470
    move/from16 v7, v18

    move/from16 v22, v21

    .line 472
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_c
    :goto_4
    if-le v7, v6, :cond_d

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_4

    .line 476
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 478
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v3, v0, :cond_e

    move/from16 v21, v22

    .line 479
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .line 481
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 484
    add-int/lit8 v3, v3, 0x1

    .line 485
    and-int v23, v3, v8

    if-nez v23, :cond_f

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v3, v0, :cond_f

    .line 487
    add-int/lit8 v9, v9, 0x1

    .line 488
    add-int/2addr v8, v3

    .line 490
    :cond_f
    move/from16 v18, v16

    .line 494
    .end local v16    # "in_code":I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "pi":I
    .restart local v19    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 496
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19    # "pi":I
    .restart local v20    # "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 501
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :cond_10
    return-void

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_11
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_12
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_5
.end method

.method private err()Z
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/ant/liao/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 508
    iput v1, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 509
    iput v1, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    .line 510
    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 511
    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->gct:[I

    .line 512
    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->lct:[I

    .line 513
    return-void
.end method

.method private read()I
    .locals 3

    .prologue
    .line 516
    const/4 v0, 0x0

    .line 519
    .local v0, "curByte":I
    :try_start_0
    iget-object v2, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 523
    :goto_0
    return v0

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p0, Lcom/ant/liao/GifDecoder;->status:I

    goto :goto_0
.end method

.method private readBlock()I
    .locals 6

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v3

    iput v3, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    .line 528
    const/4 v2, 0x0

    .line 529
    .local v2, "n":I
    iget v3, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    if-lez v3, :cond_1

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "count":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_0

    .line 533
    iget-object v3, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/ant/liao/GifDecoder;->block:[B

    iget v5, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 534
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 542
    :cond_0
    :goto_1
    iget v3, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    if-ge v2, v3, :cond_1

    .line 543
    const/4 v3, 0x1

    iput v3, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 546
    .end local v0    # "count":I
    :cond_1
    return v2

    .line 537
    .restart local v0    # "count":I
    :cond_2
    add-int/2addr v2, v0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private readByte()I
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    .line 359
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readStream()I

    move-result v0

    return v0
.end method

.method private readColorTable(I)[I
    .locals 14
    .param p1, "ncolors"    # I

    .prologue
    .line 550
    mul-int/lit8 v9, p1, 0x3

    .line 551
    .local v9, "nbytes":I
    const/4 v11, 0x0

    .line 552
    .local v11, "tab":[I
    new-array v1, v9, [B

    .line 553
    .local v1, "c":[B
    const/4 v8, 0x0

    .line 555
    .local v8, "n":I
    :try_start_0
    iget-object v12, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 559
    :goto_0
    if-ge v8, v9, :cond_1

    .line 560
    const/4 v12, 0x1

    iput v12, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 572
    :cond_0
    return-object v11

    .line 556
    :catch_0
    move-exception v2

    .line 557
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 562
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v12, 0x100

    new-array v11, v12, [I

    .line 563
    const/4 v4, 0x0

    .line 564
    .local v4, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    move v7, v6

    .end local v6    # "j":I
    .local v7, "j":I
    move v5, v4

    .line 565
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 566
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v12, v1, v7

    and-int/lit16 v10, v12, 0xff

    .line 567
    .local v10, "r":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    aget-byte v12, v1, v6

    and-int/lit16 v3, v12, 0xff

    .line 568
    .local v3, "g":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-byte v12, v1, v7

    and-int/lit16 v0, v12, 0xff

    .line 569
    .local v0, "b":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/high16 v12, -0x1000000

    shl-int/lit8 v13, v10, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v3, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v0

    aput v12, v11, v5

    move v7, v6

    .end local v6    # "j":I
    .restart local v7    # "j":I
    move v5, v4

    .line 570
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1
.end method

.method private readContents()V
    .locals 6

    .prologue
    .line 577
    const/4 v2, 0x0

    .line 578
    .local v2, "done":Z
    :goto_0
    :sswitch_0
    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v4

    if-nez v4, :cond_2

    .line 579
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    .line 580
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 612
    const/4 v4, 0x1

    iput v4, p0, Lcom/ant/liao/GifDecoder;->status:I

    goto :goto_0

    .line 582
    :sswitch_1
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readImage()V

    goto :goto_0

    .line 585
    :sswitch_2
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    .line 586
    sparse-switch v1, :sswitch_data_1

    .line 603
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->skip()V

    goto :goto_0

    .line 588
    :sswitch_3
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 591
    :sswitch_4
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readBlock()I

    .line 592
    const-string v0, ""

    .line 593
    .local v0, "app":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ant/liao/GifDecoder;->block:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 596
    :cond_0
    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 597
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 599
    :cond_1
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->skip()V

    goto :goto_0

    .line 607
    .end local v0    # "app":Ljava/lang/String;
    .end local v3    # "i":I
    :sswitch_5
    const/4 v2, 0x1

    .line 608
    goto :goto_0

    .line 615
    .end local v1    # "code":I
    :cond_2
    return-void

    .line 580
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 586
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 618
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    .line 619
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v0

    .line 620
    .local v0, "packed":I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    .line 621
    iget v2, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 622
    iput v1, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    .line 624
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    .line 625
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 626
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->transIndex:I

    .line 627
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    .line 628
    return-void

    .line 624
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readHeader()V
    .locals 4

    .prologue
    .line 631
    const-string v1, ""

    .line 632
    .local v1, "id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_0
    const-string v2, "GIF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 636
    const/4 v2, 0x1

    iput v2, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 644
    :cond_1
    :goto_1
    return-void

    .line 639
    :cond_2
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readLSD()V

    .line 640
    iget-boolean v2, p0, Lcom/ant/liao/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 641
    iget v2, p0, Lcom/ant/liao/GifDecoder;->gctSize:I

    invoke-direct {p0, v2}, Lcom/ant/liao/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->gct:[I

    .line 642
    iget-object v2, p0, Lcom/ant/liao/GifDecoder;->gct:[I

    iget v3, p0, Lcom/ant/liao/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/ant/liao/GifDecoder;->bgColor:I

    goto :goto_1
.end method

.method private readImage()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 647
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/GifDecoder;->ix:I

    .line 648
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/GifDecoder;->iy:I

    .line 649
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/GifDecoder;->iw:I

    .line 650
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/GifDecoder;->ih:I

    .line 651
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v9

    .line 652
    .local v9, "packed":I
    and-int/lit16 v0, v9, 0x80

    if-eqz v0, :cond_4

    move v0, v11

    :goto_0
    iput-boolean v0, p0, Lcom/ant/liao/GifDecoder;->lctFlag:Z

    .line 653
    and-int/lit8 v0, v9, 0x40

    if-eqz v0, :cond_5

    move v0, v11

    :goto_1
    iput-boolean v0, p0, Lcom/ant/liao/GifDecoder;->interlace:Z

    .line 656
    const/4 v0, 0x2

    and-int/lit8 v2, v9, 0x7

    shl-int/2addr v0, v2

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lctSize:I

    .line 657
    iget-boolean v0, p0, Lcom/ant/liao/GifDecoder;->lctFlag:Z

    if-eqz v0, :cond_6

    .line 658
    iget v0, p0, Lcom/ant/liao/GifDecoder;->lctSize:I

    invoke-direct {p0, v0}, Lcom/ant/liao/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->lct:[I

    .line 659
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->lct:[I

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->act:[I

    .line 666
    :cond_0
    :goto_2
    const/4 v10, 0x0

    .line 667
    .local v10, "save":I
    iget-boolean v0, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->act:[I

    iget v2, p0, Lcom/ant/liao/GifDecoder;->transIndex:I

    aget v10, v0, v2

    .line 669
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->act:[I

    iget v2, p0, Lcom/ant/liao/GifDecoder;->transIndex:I

    aput v1, v0, v2

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->act:[I

    if-nez v0, :cond_2

    .line 672
    iput v11, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 674
    :cond_2
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 720
    :cond_3
    :goto_3
    return-void

    .end local v10    # "save":I
    :cond_4
    move v0, v1

    .line 652
    goto :goto_0

    :cond_5
    move v0, v1

    .line 653
    goto :goto_1

    .line 661
    :cond_6
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gct:[I

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->act:[I

    .line 662
    iget v0, p0, Lcom/ant/liao/GifDecoder;->bgIndex:I

    iget v2, p0, Lcom/ant/liao/GifDecoder;->transIndex:I

    if-ne v0, v2, :cond_0

    .line 663
    iput v1, p0, Lcom/ant/liao/GifDecoder;->bgColor:I

    goto :goto_2

    .line 677
    .restart local v10    # "save":I
    :cond_7
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->decodeImageData()V

    .line 678
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->skip()V

    .line 679
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_3

    .line 682
    iget v0, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    .line 683
    iget v0, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    if-ne v0, v11, :cond_8

    .line 685
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Lcom/ant/liao/GifDecoder;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :cond_8
    :goto_4
    sget-object v12, Lcom/ant/liao/GifView;->lock:Ljava/lang/Object;

    monitor-enter v12

    .line 695
    :try_start_1
    sget-object v0, Lcom/ant/liao/GifFrame;->gct:[I

    if-nez v0, :cond_9

    .line 696
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gct:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/ant/liao/GifFrame;->gct:[I

    .line 699
    :cond_9
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    if-nez v0, :cond_b

    .line 700
    const-string v0, "GifView"

    const-string v1, "firstFrame start clone!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v0, Lcom/ant/liao/GifFrame;

    iget v1, p0, Lcom/ant/liao/GifDecoder;->ix:I

    iget v2, p0, Lcom/ant/liao/GifDecoder;->iy:I

    iget v3, p0, Lcom/ant/liao/GifDecoder;->iw:I

    iget v4, p0, Lcom/ant/liao/GifDecoder;->ih:I

    iget-object v5, p0, Lcom/ant/liao/GifDecoder;->pixels:[B

    iget v6, p0, Lcom/ant/liao/GifDecoder;->delay:I

    invoke-direct/range {v0 .. v6}, Lcom/ant/liao/GifFrame;-><init>(IIII[BI)V

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 702
    const-string v0, "GifView"

    const-string v1, "firstFrame!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 711
    :goto_5
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    iget-boolean v0, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    if-eqz v0, :cond_a

    .line 715
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->act:[I

    iget v1, p0, Lcom/ant/liao/GifDecoder;->transIndex:I

    aput v10, v0, v1

    .line 717
    :cond_a
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->resetFrame()V

    .line 718
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    iget v1, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    invoke-interface {v0, v11, v1}, Lcom/ant/liao/GifAction;->parseOk(ZI)V

    .line 719
    const-string v0, "GifDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 686
    :catch_0
    move-exception v7

    .line 688
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 705
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_b
    :try_start_2
    iget-object v8, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 706
    .local v8, "f":Lcom/ant/liao/GifFrame;
    :goto_6
    iget-object v0, v8, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    if-eqz v0, :cond_c

    .line 707
    iget-object v8, v8, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    goto :goto_6

    .line 709
    :cond_c
    new-instance v0, Lcom/ant/liao/GifFrame;

    iget v1, p0, Lcom/ant/liao/GifDecoder;->ix:I

    iget v2, p0, Lcom/ant/liao/GifDecoder;->iy:I

    iget v3, p0, Lcom/ant/liao/GifDecoder;->iw:I

    iget v4, p0, Lcom/ant/liao/GifDecoder;->ih:I

    iget-object v5, p0, Lcom/ant/liao/GifDecoder;->pixels:[B

    iget v6, p0, Lcom/ant/liao/GifDecoder;->delay:I

    invoke-direct/range {v0 .. v6}, Lcom/ant/liao/GifFrame;-><init>(IIII[BI)V

    iput-object v0, v8, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    goto :goto_5

    .line 711
    .end local v8    # "f":Lcom/ant/liao/GifFrame;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private readLSD()V
    .locals 3

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->width:I

    .line 733
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->height:I

    .line 735
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v0

    .line 736
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->gctFlag:Z

    .line 739
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/ant/liao/GifDecoder;->gctSize:I

    .line 740
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->bgIndex:I

    .line 741
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->pixelAspect:I

    .line 742
    return-void

    .line 736
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readBlock()I

    .line 747
    iget-object v2, p0, Lcom/ant/liao/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 749
    iget-object v2, p0, Lcom/ant/liao/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 750
    .local v0, "b1":I
    iget-object v2, p0, Lcom/ant/liao/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 751
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/ant/liao/GifDecoder;->loopCount:I

    .line 753
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1
    iget v2, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 2

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v0

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private readStream()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 368
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->init()V

    .line 369
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 370
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readHeader()V

    .line 371
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readContents()V

    .line 373
    iget v1, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    if-gez v1, :cond_1

    .line 374
    iput v4, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 375
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    invoke-interface {v1, v3, v2}, Lcom/ant/liao/GifAction;->parseOk(ZI)V

    .line 382
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_1
    iget v1, p0, Lcom/ant/liao/GifDecoder;->status:I

    return v1

    .line 377
    :cond_1
    iput v2, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 378
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    invoke-interface {v1, v4, v2}, Lcom/ant/liao/GifAction;->parseOk(ZI)V

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 388
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/ant/liao/GifDecoder;->status:I

    .line 389
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->action:Lcom/ant/liao/GifAction;

    invoke-interface {v1, v3, v2}, Lcom/ant/liao/GifAction;->parseOk(ZI)V

    goto :goto_1
.end method

.method private resetFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 762
    iget v0, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    .line 763
    iget v0, p0, Lcom/ant/liao/GifDecoder;->ix:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lrx:I

    .line 764
    iget v0, p0, Lcom/ant/liao/GifDecoder;->iy:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lry:I

    .line 765
    iget v0, p0, Lcom/ant/liao/GifDecoder;->iw:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lrw:I

    .line 766
    iget v0, p0, Lcom/ant/liao/GifDecoder;->ih:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lrh:I

    .line 767
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 768
    iget v0, p0, Lcom/ant/liao/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/ant/liao/GifDecoder;->lastBgColor:I

    .line 769
    iput v1, p0, Lcom/ant/liao/GifDecoder;->dispose:I

    .line 770
    iput-boolean v1, p0, Lcom/ant/liao/GifDecoder;->transparency:Z

    .line 771
    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->lct:[I

    .line 773
    return-void
.end method

.method private setPixels()V
    .locals 25

    .prologue
    .line 199
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ant/liao/GifDecoder;->height:I

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 201
    .local v3, "dest":[I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    if-lez v2, :cond_4

    .line 202
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->frameCount:I

    add-int/lit8 v19, v2, -0x2

    .line 205
    .local v19, "n":I
    if-lez v19, :cond_2

    .line 206
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ant/liao/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ant/liao/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 211
    .end local v19    # "n":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ant/liao/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ant/liao/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ant/liao/GifDecoder;->width:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ant/liao/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ant/liao/GifDecoder;->height:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 214
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lastDispose:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 216
    const/4 v10, 0x0

    .line 217
    .local v10, "c":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ant/liao/GifDecoder;->transparency:Z

    if-nez v2, :cond_1

    .line 218
    move-object/from16 v0, p0

    iget v10, v0, Lcom/ant/liao/GifDecoder;->lastBgColor:I

    .line 220
    :cond_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lrh:I

    if-ge v13, v2, :cond_4

    .line 221
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lry:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ant/liao/GifDecoder;->width:I

    mul-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ant/liao/GifDecoder;->lrx:I

    add-int v20, v2, v4

    .line 222
    .local v20, "n1":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->lrw:I

    add-int v21, v20, v2

    .line 223
    .local v21, "n2":I
    move/from16 v17, v20

    .local v17, "k":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 224
    aput v10, v3, v17

    .line 223
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 208
    .end local v10    # "c":I
    .end local v13    # "i":I
    .end local v17    # "k":I
    .end local v20    # "n1":I
    .end local v21    # "n2":I
    .restart local v19    # "n":I
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ant/liao/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 220
    .end local v19    # "n":I
    .restart local v10    # "c":I
    .restart local v13    # "i":I
    .restart local v17    # "k":I
    .restart local v20    # "n1":I
    .restart local v21    # "n2":I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 232
    .end local v10    # "c":I
    .end local v13    # "i":I
    .end local v17    # "k":I
    .end local v20    # "n1":I
    .end local v21    # "n2":I
    :cond_4
    const/16 v22, 0x1

    .line 233
    .local v22, "pass":I
    const/16 v15, 0x8

    .line 234
    .local v15, "inc":I
    const/4 v14, 0x0

    .line 235
    .local v14, "iline":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->ih:I

    if-ge v13, v2, :cond_a

    .line 236
    move/from16 v18, v13

    .line 237
    .local v18, "line":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ant/liao/GifDecoder;->interlace:Z

    if-eqz v2, :cond_6

    .line 238
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->ih:I

    if-lt v14, v2, :cond_5

    .line 239
    add-int/lit8 v22, v22, 0x1

    .line 240
    packed-switch v22, :pswitch_data_0

    .line 253
    :cond_5
    :goto_4
    move/from16 v18, v14

    .line 254
    add-int/2addr v14, v15

    .line 256
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->iy:I

    add-int v18, v18, v2

    .line 257
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->height:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    .line 258
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->width:I

    mul-int v17, v18, v2

    .line 259
    .restart local v17    # "k":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->ix:I

    add-int v12, v17, v2

    .line 260
    .local v12, "dx":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->iw:I

    add-int v11, v12, v2

    .line 261
    .local v11, "dlim":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->width:I

    add-int v2, v2, v17

    if-ge v2, v11, :cond_7

    .line 262
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->width:I

    add-int v11, v17, v2

    .line 264
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->iw:I

    mul-int v23, v13, v2

    .local v23, "sx":I
    move/from16 v24, v23

    .line 265
    .end local v23    # "sx":I
    .local v24, "sx":I
    :goto_5
    if-ge v12, v11, :cond_9

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ant/liao/GifDecoder;->pixels:[B

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "sx":I
    .restart local v23    # "sx":I
    aget-byte v2, v2, v24

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 268
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ant/liao/GifDecoder;->act:[I

    aget v10, v2, v16

    .line 269
    .restart local v10    # "c":I
    if-eqz v10, :cond_8

    .line 270
    aput v10, v3, v12

    .line 272
    :cond_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v24, v23

    .line 273
    .end local v23    # "sx":I
    .restart local v24    # "sx":I
    goto :goto_5

    .line 242
    .end local v10    # "c":I
    .end local v11    # "dlim":I
    .end local v12    # "dx":I
    .end local v16    # "index":I
    .end local v17    # "k":I
    .end local v24    # "sx":I
    :pswitch_0
    const/4 v14, 0x4

    .line 243
    goto :goto_4

    .line 245
    :pswitch_1
    const/4 v14, 0x2

    .line 246
    const/4 v15, 0x4

    .line 247
    goto :goto_4

    .line 249
    :pswitch_2
    const/4 v14, 0x1

    .line 250
    const/4 v15, 0x2

    goto :goto_4

    .line 235
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 276
    .end local v18    # "line":I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ant/liao/GifDecoder;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ant/liao/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 277
    const/4 v3, 0x0

    .line 278
    return-void

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private skip()V
    .locals 1

    .prologue
    .line 780
    :cond_0
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readBlock()I

    .line 781
    iget v0, p0, Lcom/ant/liao/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    :cond_1
    return-void
.end method


# virtual methods
.method public free()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 106
    .local v0, "fg":Lcom/ant/liao/GifFrame;
    sput-object v2, Lcom/ant/liao/GifFrame;->gct:[I

    .line 107
    :goto_0
    if-eqz v0, :cond_0

    .line 108
    iput-object v2, v0, Lcom/ant/liao/GifFrame;->pixels:[B

    .line 110
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    iget-object v1, v1, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    iput-object v1, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 112
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    .line 121
    :cond_1
    iput-object v2, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    .line 122
    return-void

    .line 117
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getCurrentFrame()Lcom/ant/liao/GifFrame;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 149
    const/4 v1, -0x1

    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 150
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Lcom/ant/liao/GifDecoder;->getFrame(I)Lcom/ant/liao/GifFrame;

    move-result-object v0

    .line 153
    .local v0, "f":Lcom/ant/liao/GifFrame;
    if-eqz v0, :cond_0

    .line 154
    iget v1, v0, Lcom/ant/liao/GifFrame;->delay:I

    iput v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    .line 156
    .end local v0    # "f":Lcom/ant/liao/GifFrame;
    :cond_0
    iget v1, p0, Lcom/ant/liao/GifDecoder;->delay:I

    return v1
.end method

.method public getDelays()[I
    .locals 4

    .prologue
    .line 165
    iget-object v1, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 166
    .local v1, "f":Lcom/ant/liao/GifFrame;
    iget v3, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    new-array v0, v3, [I

    .line 167
    .local v0, "d":[I
    const/4 v2, 0x0

    .line 168
    .local v2, "i":I
    :goto_0
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    if-ge v2, v3, :cond_0

    .line 169
    iget v3, v1, Lcom/ant/liao/GifFrame;->delay:I

    aput v3, v0, v2

    .line 170
    iget-object v1, v1, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-object v0
.end method

.method public getFrame(I)Lcom/ant/liao/GifFrame;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 311
    .local v0, "frame":Lcom/ant/liao/GifFrame;
    const/4 v1, 0x0

    .line 312
    .local v1, "i":I
    :goto_0
    if-eqz v0, :cond_1

    .line 313
    if-ne v1, p1, :cond_0

    .line 320
    .end local v0    # "frame":Lcom/ant/liao/GifFrame;
    :goto_1
    return-object v0

    .line 316
    .restart local v0    # "frame":Lcom/ant/liao/GifFrame;
    :cond_0
    iget-object v0, v0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/ant/liao/GifDecoder;->frameCount:I

    return v0
.end method

.method public getFrameImage(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/ant/liao/GifDecoder;->getFrame(I)Lcom/ant/liao/GifFrame;

    move-result-object v0

    .line 288
    .local v0, "frame":Lcom/ant/liao/GifFrame;
    if-nez v0, :cond_0

    .line 289
    const/4 v1, 0x0

    .line 291
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/ant/liao/GifFrame;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ant/liao/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/ant/liao/GifDecoder;->loopCount:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/ant/liao/GifDecoder;->status:I

    return v0
.end method

.method public next()Lcom/ant/liao/GifFrame;
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/ant/liao/GifDecoder;->isShow:Z

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ant/liao/GifDecoder;->isShow:Z

    .line 338
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    .line 352
    :goto_0
    return-object v0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    goto :goto_0

    .line 342
    :cond_1
    iget v0, p0, Lcom/ant/liao/GifDecoder;->status:I

    if-nez v0, :cond_3

    .line 343
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    iget-object v0, v0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    iget-object v0, v0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 352
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    goto :goto_0

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    iget-object v0, v0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 348
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    if-nez v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    goto :goto_1
.end method

.method public parseOk()Z
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lcom/ant/liao/GifDecoder;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifFrame:Lcom/ant/liao/GifFrame;

    iput-object v0, p0, Lcom/ant/liao/GifDecoder;->currentFrame:Lcom/ant/liao/GifFrame;

    .line 328
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "GifView"

    const-string v1, "start decode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readStream()I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/ant/liao/GifDecoder;->gifData:[B

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/ant/liao/GifDecoder;->readByte()I

    goto :goto_0
.end method
