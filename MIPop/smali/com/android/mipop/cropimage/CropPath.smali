.class public Lcom/android/mipop/cropimage/CropPath;
.super Lcom/android/mipop/cropimage/CropBase;
.source "CropPath.java"


# instance fields
.field private firstMove:Z

.field private isDone:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapWidth:I

.field private mShowPath:Landroid/graphics/Path;

.field private maxx:I

.field private maxy:I

.field private minx:I

.field private miny:I

.field private moved:Z

.field private pointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private rf:Landroid/graphics/RectF;

.field something:[[I

.field private startX:I

.field private startY:I

.field private tempPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/mipop/cropimage/CropBase;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v1, p0, Lcom/android/mipop/cropimage/CropPath;->isDone:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/CropPath;->firstMove:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/mipop/cropimage/CropPath;->moved:Z

    .line 35
    iput v1, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmapWidth:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->rf:Landroid/graphics/RectF;

    .line 42
    return-void
.end method

.method private computeInt(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 8
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "prePoint"    # Landroid/graphics/Point;
    .param p3, "nextPoint"    # Landroid/graphics/Point;
    .param p4, "next2Point"    # Landroid/graphics/Point;

    .prologue
    .line 203
    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, p3, Landroid/graphics/Point;->y:I

    if-ne v5, v6, :cond_3

    .line 205
    move-object v3, p4

    .line 211
    .local v3, "nextForCompare":Landroid/graphics/Point;
    :goto_0
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lxg mBitmapWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmapWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",currentPoint.x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmapWidth:I

    if-eqz v5, :cond_0

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmapWidth:I

    if-le v5, v6, :cond_0

    .line 213
    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmapWidth:I

    iput v5, p1, Landroid/graphics/Point;->x:I

    .line 215
    :cond_0
    const/4 v4, 0x0

    .line 216
    .local v4, "x":I
    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->x:I

    if-ne v5, v6, :cond_7

    .line 217
    iget v5, p2, Landroid/graphics/Point;->y:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_1

    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-gt v5, v6, :cond_2

    :cond_1
    iget v5, p2, Landroid/graphics/Point;->y:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_5

    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_5

    .line 219
    :cond_2
    iget v5, p2, Landroid/graphics/Point;->y:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_4

    .line 220
    iget v2, p2, Landroid/graphics/Point;->y:I

    .local v2, "i":I
    :goto_1
    iget v5, p1, Landroid/graphics/Point;->y:I

    if-ge v2, v5, :cond_8

    .line 221
    iget-object v5, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    sub-int v6, v2, v6

    aget-object v5, v5, v6

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    sub-int/2addr v6, v7

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    .end local v2    # "i":I
    .end local v3    # "nextForCompare":Landroid/graphics/Point;
    .end local v4    # "x":I
    :cond_3
    move-object v3, p3

    .restart local v3    # "nextForCompare":Landroid/graphics/Point;
    goto :goto_0

    .line 224
    .restart local v4    # "x":I
    :cond_4
    iget v2, p2, Landroid/graphics/Point;->y:I

    .restart local v2    # "i":I
    :goto_2
    iget v5, p1, Landroid/graphics/Point;->y:I

    if-le v2, v5, :cond_8

    .line 225
    iget-object v5, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    sub-int v6, v2, v6

    aget-object v5, v5, v6

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    sub-int/2addr v6, v7

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 224
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 229
    .end local v2    # "i":I
    :cond_5
    iget v5, p2, Landroid/graphics/Point;->y:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_6

    .line 230
    iget v2, p2, Landroid/graphics/Point;->y:I

    .restart local v2    # "i":I
    :goto_3
    iget v5, p1, Landroid/graphics/Point;->y:I

    if-gt v2, v5, :cond_8

    .line 231
    iget-object v5, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    sub-int v6, v2, v6

    aget-object v5, v5, v6

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    sub-int/2addr v6, v7

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 234
    .end local v2    # "i":I
    :cond_6
    iget v2, p2, Landroid/graphics/Point;->y:I

    .restart local v2    # "i":I
    :goto_4
    iget v5, p1, Landroid/graphics/Point;->y:I

    if-lt v2, v5, :cond_8

    .line 235
    iget-object v5, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    sub-int v6, v2, v6

    aget-object v5, v5, v6

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    sub-int/2addr v6, v7

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 234
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 240
    .end local v2    # "i":I
    :cond_7
    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    if-ne v5, v6, :cond_9

    .line 283
    :cond_8
    return-void

    .line 243
    :cond_9
    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 245
    .local v0, "a":F
    iget v5, p2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    sub-float v1, v5, v6

    .line 246
    .local v1, "b":F
    iget v5, p2, Landroid/graphics/Point;->y:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_a

    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-gt v5, v6, :cond_b

    :cond_a
    iget v5, p2, Landroid/graphics/Point;->y:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_11

    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_11

    .line 248
    :cond_b
    iget v5, p2, Landroid/graphics/Point;->y:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_e

    .line 249
    iget v2, p2, Landroid/graphics/Point;->y:I

    .restart local v2    # "i":I
    :goto_5
    iget v5, p1, Landroid/graphics/Point;->y:I

    if-ge v2, v5, :cond_8

    .line 250
    int-to-float v5, v2

    sub-float/2addr v5, v1

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 251
    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    if-lt v4, v5, :cond_c

    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    add-int/lit8 v4, v5, -0x1

    .line 252
    :cond_c
    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    if-ge v4, v5, :cond_d

    iget v4, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    .line 253
    :cond_d
    iget-object v5, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    sub-int v6, v2, v6

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    sub-int v6, v4, v6

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 256
    .end local v2    # "i":I
    :cond_e
    iget v2, p2, Landroid/graphics/Point;->y:I

    .restart local v2    # "i":I
    :goto_6
    iget v5, p1, Landroid/graphics/Point;->y:I

    if-le v2, v5, :cond_8

    .line 257
    int-to-float v5, v2

    sub-float/2addr v5, v1

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 258
    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    if-lt v4, v5, :cond_f

    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    add-int/lit8 v4, v5, -0x1

    .line 259
    :cond_f
    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    if-ge v4, v5, :cond_10

    iget v4, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    .line 260
    :cond_10
    iget-object v5, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    sub-int v6, v2, v6

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    sub-int v6, v4, v6

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 256
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 264
    .end local v2    # "i":I
    :cond_11
    iget v5, p2, Landroid/graphics/Point;->y:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    if-ge v5, v6, :cond_14

    .line 265
    iget v2, p2, Landroid/graphics/Point;->y:I

    .restart local v2    # "i":I
    :goto_7
    iget v5, p1, Landroid/graphics/Point;->y:I

    if-gt v2, v5, :cond_8

    .line 266
    int-to-float v5, v2

    sub-float/2addr v5, v1

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 267
    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    if-lt v4, v5, :cond_12

    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    add-int/lit8 v4, v5, -0x1

    .line 268
    :cond_12
    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    if-ge v4, v5, :cond_13

    iget v4, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    .line 269
    :cond_13
    iget-object v5, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    sub-int v6, v2, v6

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    sub-int v6, v4, v6

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 272
    .end local v2    # "i":I
    :cond_14
    iget v2, p2, Landroid/graphics/Point;->y:I

    .restart local v2    # "i":I
    :goto_8
    iget v5, p1, Landroid/graphics/Point;->y:I

    if-lt v2, v5, :cond_8

    .line 273
    int-to-float v5, v2

    sub-float/2addr v5, v1

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 274
    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    if-lt v4, v5, :cond_15

    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    add-int/lit8 v4, v5, -0x1

    .line 275
    :cond_15
    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    if-ge v4, v5, :cond_16

    iget v4, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    .line 276
    :cond_16
    iget-object v5, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    sub-int v6, v2, v6

    aget-object v5, v5, v6

    iget v6, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    sub-int v6, v4, v6

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 272
    add-int/lit8 v2, v2, -0x1

    goto :goto_8
.end method

.method private computesomething(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "pointList2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    iget v3, p0, Lcom/android/mipop/cropimage/CropPath;->maxy:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    sub-int/2addr v4, v5

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    .line 185
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/graphics/Point;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Point;

    .line 186
    .local v2, "pointsArray":[Landroid/graphics/Point;
    array-length v1, v2

    .line 187
    .local v1, "pointCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 188
    aget-object v3, v2, v0

    add-int/lit8 v4, v0, -0x1

    add-int/2addr v4, v1

    rem-int/2addr v4, v1

    aget-object v4, v2, v4

    add-int/lit8 v5, v0, 0x1

    rem-int/2addr v5, v1

    aget-object v5, v2, v5

    add-int/lit8 v6, v0, 0x2

    rem-int/2addr v6, v1

    aget-object v6, v2, v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/mipop/cropimage/CropPath;->computeInt(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method private getCropPart2()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    .local v12, "pointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 130
    :cond_0
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/mipop/cropimage/CropPath;->onOneLine(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 135
    :cond_1
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 136
    .local v8, "bounds":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 137
    iget v0, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    .line 138
    iget v0, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    .line 139
    iget v0, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    .line 140
    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropPath;->maxy:I

    .line 143
    invoke-direct {p0, v12}, Lcom/android/mipop/cropimage/CropPath;->computesomething(Ljava/util/List;)V

    .line 144
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->cover:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/mipop/cropimage/CropPath;->maxy:I

    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    sub-int/2addr v4, v5

    invoke-static {v0, v3, v4, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    .line 146
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 147
    .local v1, "pixels":[I
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 150
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v10, v0, :cond_6

    .line 151
    const/4 v9, 0x0

    .line 152
    .local v9, "changeToTransparent":Z
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    aget-object v0, v0, v10

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v11, v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    aget-object v0, v0, v10

    aget v0, v0, v11

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v13, :cond_2

    .line 154
    if-nez v9, :cond_4

    move v9, v13

    .line 156
    :cond_2
    :goto_2
    if-eqz v9, :cond_3

    .line 157
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    aget-object v0, v0, v10

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v10

    add-int/2addr v0, v11

    const v3, 0xffffff

    aput v3, v1, v0

    .line 152
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    move v9, v2

    .line 154
    goto :goto_2

    .line 150
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 163
    .end local v9    # "changeToTransparent":Z
    .end local v11    # "j":I
    :cond_6
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    .line 166
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private onOneLine(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 3
    .param p1, "p1"    # Landroid/graphics/Point;
    .param p2, "p2"    # Landroid/graphics/Point;
    .param p3, "p3"    # Landroid/graphics/Point;

    .prologue
    const/4 v0, 0x1

    .line 294
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_1

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_2

    iget v1, p2, Landroid/graphics/Point;->y:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    if-eq v1, v2, :cond_0

    .line 299
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    .line 389
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    return-void
.end method

.method public crop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 381
    .end local p1    # "b":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 310
    .restart local p1    # "b":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/mipop/cropimage/CropPath;->onOneLine(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 318
    :cond_3
    iget v0, p0, Lcom/android/mipop/cropimage/CropPath;->translateX:I

    if-eqz v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    .line 322
    .local v13, "p":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->translateX:I

    sub-int/2addr v0, v2

    iput v0, v13, Landroid/graphics/Point;->x:I

    .line 323
    iget v0, v13, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_4

    iget v0, v13, Landroid/graphics/Point;->x:I

    :goto_2
    iput v0, v13, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 326
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "p":Landroid/graphics/Point;
    :cond_5
    iget v0, p0, Lcom/android/mipop/cropimage/CropPath;->translateY:I

    if-eqz v0, :cond_7

    .line 328
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    .line 330
    .restart local v13    # "p":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->translateY:I

    sub-int/2addr v0, v2

    iput v0, v13, Landroid/graphics/Point;->y:I

    .line 331
    iget v0, v13, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_6

    iget v0, v13, Landroid/graphics/Point;->y:I

    :goto_4
    iput v0, v13, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 334
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "p":Landroid/graphics/Point;
    :cond_7
    iget v0, p0, Lcom/android/mipop/cropimage/CropPath;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    .line 336
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Point;

    .line 338
    .restart local v13    # "p":Landroid/graphics/Point;
    iget v0, v13, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->scale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v13, Landroid/graphics/Point;->y:I

    .line 339
    iget v0, v13, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->scale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v13, Landroid/graphics/Point;->x:I

    goto :goto_5

    .line 343
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "p":Landroid/graphics/Point;
    :cond_8
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 344
    .local v8, "bounds":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 345
    iget v0, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->translateX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->scale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    .line 346
    iget v0, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->translateY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->scale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    .line 347
    iget v0, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->translateX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->scale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    .line 348
    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->translateY:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->scale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropPath;->maxy:I

    .line 349
    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lxg maxx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",b.getWidth() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget v0, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_9

    .line 351
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    .line 352
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmapWidth:I

    .line 355
    :cond_9
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/mipop/cropimage/CropPath;->computesomething(Ljava/util/List;)V

    .line 356
    iget v0, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    iget v3, p0, Lcom/android/mipop/cropimage/CropPath;->maxx:I

    iget v4, p0, Lcom/android/mipop/cropimage/CropPath;->minx:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/mipop/cropimage/CropPath;->maxy:I

    iget v5, p0, Lcom/android/mipop/cropimage/CropPath;->miny:I

    sub-int/2addr v4, v5

    invoke-static {p1, v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    .line 359
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    new-array v1, v0, [I

    .line 360
    .local v1, "pixels":[I
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 363
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v10, v0, :cond_e

    .line 364
    const/4 v9, 0x1

    .line 365
    .local v9, "changeToTransparent":Z
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_7
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    aget-object v0, v0, v10

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v12, v0, :cond_d

    .line 366
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    aget-object v0, v0, v10

    aget v0, v0, v12

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 367
    if-nez v9, :cond_c

    const/4 v9, 0x1

    .line 369
    :cond_a
    :goto_8
    if-eqz v9, :cond_b

    .line 370
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->something:[[I

    aget-object v0, v0, v10

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v10

    add-int/2addr v0, v12

    const v2, 0xffffff

    aput v2, v1, v0

    .line 365
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 367
    :cond_c
    const/4 v9, 0x0

    goto :goto_8

    .line 363
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 376
    .end local v9    # "changeToTransparent":Z
    .end local v12    # "j":I
    :cond_e
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->clipRect:Landroid/graphics/Rect;

    .line 380
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 381
    iget-object p1, p0, Lcom/android/mipop/cropimage/CropPath;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/mipop/cropimage/CropBase;->draw(Landroid/graphics/Canvas;)V

    .line 48
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mipop/cropimage/CropPath;->isDone:Z

    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/android/mipop/cropimage/CropPath;->getCropPart2()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->clipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->clipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropPath;->coverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->boraderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->cover:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->srcrRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->clipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropPath;->coverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setPoints([Landroid/graphics/Point;)V
    .locals 1
    .param p1, "points"    # [Landroid/graphics/Point;

    .prologue
    .line 394
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    .line 396
    return-void
.end method

.method public touchDown(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/android/mipop/cropimage/CropPath;->isDone:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/CropPath;->firstMove:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/mipop/cropimage/CropPath;->moved:Z

    .line 65
    iput p1, p0, Lcom/android/mipop/cropimage/CropPath;->startX:I

    .line 66
    iput p2, p0, Lcom/android/mipop/cropimage/CropPath;->startY:I

    .line 67
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/mipop/cropimage/CropPath;->startX:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->startY:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->tempPoint:Landroid/graphics/Point;

    .line 68
    return-void
.end method

.method public touchMove(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    .line 72
    iget-boolean v0, p0, Lcom/android/mipop/cropimage/CropPath;->firstMove:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/mipop/cropimage/CropPath;->startX:I

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->startY:I

    invoke-direct {v0, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->clipRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    .line 76
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 78
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/cropimage/CropPath;->startX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->startY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 79
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->tempPoint:Landroid/graphics/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mipop/cropimage/CropPath;->firstMove:Z

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->tempPoint:Landroid/graphics/Point;

    .line 84
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->tempPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 87
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->tempPoint:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mipop/cropimage/CropPath;->onOneLine(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->tempPoint:Landroid/graphics/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->rf:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 104
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->clipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->rf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->rf:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropPath;->rf:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropPath;->rf:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 106
    iput-boolean v5, p0, Lcom/android/mipop/cropimage/CropPath;->moved:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropPath;->computCoverAndIconP()V

    .line 108
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->tempPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->tempPoint:Landroid/graphics/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->pointList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->tempPoint:Landroid/graphics/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public touchUp(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 112
    iput-boolean v3, p0, Lcom/android/mipop/cropimage/CropPath;->isDone:Z

    .line 113
    iget-boolean v0, p0, Lcom/android/mipop/cropimage/CropPath;->moved:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/mipop/cropimage/CropPath;->startX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/mipop/cropimage/CropPath;->startY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 116
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->mShowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->rf:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 117
    iget-object v0, p0, Lcom/android/mipop/cropimage/CropPath;->clipRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/mipop/cropimage/CropPath;->rf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/mipop/cropimage/CropPath;->rf:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/mipop/cropimage/CropPath;->rf:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/mipop/cropimage/CropPath;->rf:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    invoke-virtual {p0}, Lcom/android/mipop/cropimage/CropPath;->computCoverAndIconP()V

    .line 121
    :cond_0
    return-void
.end method
