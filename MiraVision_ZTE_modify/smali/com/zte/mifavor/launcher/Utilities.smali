.class public Lcom/zte/mifavor/launcher/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utilities"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clipWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const/16 p1, 0x0

    .line 158
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .line 124
    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    const-string v15, "Utilities"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "clipWallpaper() the bitmap isRecycled:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v15, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 127
    .local v12, "wm":Landroid/view/WindowManager;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 128
    .local v6, "outSize":Landroid/graphics/Point;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 129
    iget v9, v6, Landroid/graphics/Point;->x:I

    .line 130
    .local v9, "screenWidth":I
    iget v7, v6, Landroid/graphics/Point;->y:I

    .line 131
    .local v7, "screenHeight":I
    int-to-float v15, v7

    int-to-float v0, v9

    move/from16 v16, v0

    div-float v8, v15, v16

    .line 133
    .local v8, "screenRate":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 134
    .local v4, "bitmapWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 135
    .local v2, "bitmapHeight":I
    int-to-float v15, v2

    int-to-float v0, v4

    move/from16 v16, v0

    div-float v3, v15, v16

    .line 137
    .local v3, "bitmapRate":F
    sub-float v15, v8, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v15, v16, v18

    if-gez v15, :cond_1

    .line 138
    const-string v15, "Utilities"

    const-string v16, "clipWallpaper() the bitmap need not clip."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_1
    const/4 v5, 0x0

    .line 143
    .local v5, "newBitmap":Landroid/graphics/Bitmap;
    cmpl-float v15, v8, v3

    if-lez v15, :cond_3

    .line 144
    int-to-float v15, v2

    div-float/2addr v15, v8

    float-to-int v11, v15

    .line 145
    .local v11, "standardWidth":I
    sub-int v15, v4, v11

    div-int/lit8 v13, v15, 0x2

    .line 146
    .local v13, "x":I
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v15, v11, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 153
    .end local v11    # "standardWidth":I
    .end local v13    # "x":I
    :goto_1
    if-eqz v5, :cond_2

    .line 154
    move-object/from16 v0, p1

    if-eq v0, v5, :cond_2

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object/from16 p1, v5

    .line 158
    goto :goto_0

    .line 148
    :cond_3
    int-to-float v15, v2

    mul-float/2addr v15, v8

    float-to-int v10, v15

    .line 149
    .local v10, "standardHeigh":I
    sub-int v15, v2, v10

    div-int/lit8 v14, v15, 0x2

    .line 150
    .local v14, "y":I
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15, v14, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1
.end method

.method public static createColorWallpaer(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .prologue
    .line 110
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 111
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 112
    .local v1, "outSize":Landroid/graphics/Point;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 113
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 115
    const/high16 v3, -0x1000000

    or-int/2addr v3, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 117
    :cond_0
    return-object v0
.end method

.method public static getBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/zte/mifavor/launcher/Utilities;->scaleBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/zte/mifavor/launcher/Utilities;->regularBitMap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "width"    # I

    .prologue
    const/4 v5, 0x0

    .line 19
    const/4 v0, 0x0

    .line 21
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 22
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 24
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 25
    .local v3, "imgWidth":I
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 27
    .local v2, "imgHeight":I
    const-string v6, "Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bitmap origin size:w "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":h "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v6, "Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bitmap target size:w "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":h "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int v8, p1, v2

    div-int/2addr v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 31
    div-int v6, v3, p1

    invoke-static {v6}, Lcom/zte/mifavor/launcher/Utilities;->getSampleSize(I)I

    move-result v6

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 33
    const-string v6, "Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "options.inSampleSize: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 49
    .end local v2    # "imgHeight":I
    .end local v3    # "imgWidth":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v5

    .line 40
    .restart local v2    # "imgHeight":I
    .restart local v3    # "imgWidth":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const-string v5, "Utilities"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bitmap Sampled size:w "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":h "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {v0, p1}, Lcom/zte/mifavor/launcher/Utilities;->getBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    const-string v5, "Utilities"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bitmap scaled size:w "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":h "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "imgHeight":I
    .end local v3    # "imgWidth":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    move-object v5, v0

    .line 49
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getSampleSize(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "log":I
    const/4 v2, 0x1

    if-gt p0, v2, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 64
    :goto_0
    const/4 p0, 0x1

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 68
    return p0

    .line 63
    .end local v0    # "i":I
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v1, v2, 0x1f

    goto :goto_0

    .line 66
    .restart local v0    # "i":I
    :cond_1
    mul-int/lit8 p0, p0, 0x2

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static regularBitMap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 91
    if-nez p0, :cond_1

    .line 92
    const/4 p0, 0x0

    .line 106
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    .local v0, "bitmapHeight":I
    .local v1, "bitmapWidth":I
    :cond_0
    :goto_0
    return-object p0

    .line 94
    .end local v0    # "bitmapHeight":I
    .end local v1    # "bitmapWidth":I
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 95
    .restart local v1    # "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 96
    .restart local v0    # "bitmapHeight":I
    if-eq v1, v0, :cond_0

    .line 99
    if-le v0, v1, :cond_4

    move v4, v5

    .line 100
    .local v4, "x":I
    :goto_1
    if-le v0, v1, :cond_2

    sub-int v6, v0, v1

    div-int/lit8 v5, v6, 0x2

    .line 101
    .local v5, "y":I
    :cond_2
    if-le v0, v1, :cond_5

    move v2, v1

    .line 102
    .local v2, "height":I
    :goto_2
    invoke-static {p0, v4, v5, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 103
    .local v3, "newbitmap":Landroid/graphics/Bitmap;
    if-eq p0, v3, :cond_3

    .line 104
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object p0, v3

    .line 106
    goto :goto_0

    .line 99
    .end local v2    # "height":I
    .end local v3    # "newbitmap":Landroid/graphics/Bitmap;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_4
    sub-int v6, v1, v0

    div-int/lit8 v4, v6, 0x2

    goto :goto_1

    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :cond_5
    move v2, v0

    .line 101
    goto :goto_2
.end method

.method private static scaleBitMap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    if-nez p0, :cond_1

    .line 73
    const/4 p0, 0x0

    .line 87
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 75
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 76
    .local v7, "bitmapWidth":I
    if-le v7, p1, :cond_0

    .line 79
    int-to-float v0, p1

    int-to-float v2, v7

    div-float v9, v0, v2

    .line 80
    .local v9, "scale":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 81
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 82
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 83
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 82
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 84
    .local v8, "resizeBmp":Landroid/graphics/Bitmap;
    if-eq p0, v8, :cond_2

    .line 85
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object p0, v8

    .line 87
    goto :goto_0
.end method
