.class public Lcom/ant/liao/GifFrame;
.super Ljava/lang/Object;
.source "GifFrame.java"


# static fields
.field static dest:[I

.field public static gct:[I

.field public static lastImage:Landroid/graphics/Bitmap;


# instance fields
.field public delay:I

.field ih:I

.field iw:I

.field ix:I

.field iy:I

.field public nextFrame:Lcom/ant/liao/GifFrame;

.field pixels:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x54010

    new-array v0, v0, [I

    sput-object v0, Lcom/ant/liao/GifFrame;->dest:[I

    return-void
.end method

.method public constructor <init>(IIII[BI)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "pix"    # [B
    .param p6, "del"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ant/liao/GifFrame;->nextFrame:Lcom/ant/liao/GifFrame;

    .line 17
    iput p1, p0, Lcom/ant/liao/GifFrame;->ix:I

    .line 18
    iput p2, p0, Lcom/ant/liao/GifFrame;->iy:I

    .line 19
    iput p3, p0, Lcom/ant/liao/GifFrame;->iw:I

    .line 20
    iput p4, p0, Lcom/ant/liao/GifFrame;->ih:I

    .line 21
    const-string v0, "GifView"

    const-string v1, "pix.clone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/ant/liao/GifFrame;->pixels:[B

    .line 23
    iput p6, p0, Lcom/ant/liao/GifFrame;->delay:I

    .line 24
    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 18

    .prologue
    .line 42
    const/16 v4, 0x1b8

    .local v4, "width":I
    const/16 v8, 0x30e

    .line 44
    .local v8, "height":I
    sget-object v1, Lcom/ant/liao/GifFrame;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lcom/ant/liao/GifFrame;->lastImage:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/ant/liao/GifFrame;->dest:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 47
    :cond_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ant/liao/GifFrame;->ih:I

    if-ge v12, v1, :cond_4

    .line 48
    move v15, v12

    .line 49
    .local v15, "line":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ant/liao/GifFrame;->iy:I

    add-int/2addr v15, v1

    .line 50
    if-ge v15, v8, :cond_3

    .line 51
    mul-int v14, v15, v4

    .line 52
    .local v14, "k":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ant/liao/GifFrame;->ix:I

    add-int v11, v14, v1

    .line 53
    .local v11, "dx":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ant/liao/GifFrame;->iw:I

    add-int v10, v11, v1

    .line 54
    .local v10, "dlim":I
    add-int v1, v14, v4

    if-ge v1, v10, :cond_1

    .line 55
    add-int v10, v14, v4

    .line 57
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ant/liao/GifFrame;->iw:I

    mul-int v16, v12, v1

    .local v16, "sx":I
    move/from16 v17, v16

    .line 58
    .end local v16    # "sx":I
    .local v17, "sx":I
    :goto_1
    if-ge v11, v10, :cond_3

    .line 60
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ant/liao/GifFrame;->pixels:[B

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "sx":I
    .restart local v16    # "sx":I
    aget-byte v1, v1, v17

    and-int/lit16 v13, v1, 0xff

    .line 61
    .local v13, "index":I
    sget-object v1, Lcom/ant/liao/GifFrame;->gct:[I

    aget v9, v1, v13

    .line 62
    .local v9, "c":I
    if-eqz v9, :cond_2

    .line 63
    sget-object v1, Lcom/ant/liao/GifFrame;->dest:[I

    aput v9, v1, v11

    .line 65
    :cond_2
    add-int/lit8 v11, v11, 0x1

    move/from16 v17, v16

    .line 66
    .end local v16    # "sx":I
    .restart local v17    # "sx":I
    goto :goto_1

    .line 47
    .end local v9    # "c":I
    .end local v10    # "dlim":I
    .end local v11    # "dx":I
    .end local v13    # "index":I
    .end local v14    # "k":I
    .end local v17    # "sx":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 69
    .end local v15    # "line":I
    :cond_4
    sget-object v1, Lcom/ant/liao/GifFrame;->dest:[I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v8, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/ant/liao/GifFrame;->lastImage:Landroid/graphics/Bitmap;

    .line 70
    sget-object v1, Lcom/ant/liao/GifFrame;->lastImage:Landroid/graphics/Bitmap;

    return-object v1
.end method
