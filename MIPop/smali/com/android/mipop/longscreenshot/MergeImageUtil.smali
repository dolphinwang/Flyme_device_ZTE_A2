.class public Lcom/android/mipop/longscreenshot/MergeImageUtil;
.super Ljava/lang/Object;
.source "MergeImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/longscreenshot/MergeImageUtil$IsSimilarCallback;
    }
.end annotation


# static fields
.field public static addBitmap:Landroid/graphics/Bitmap;

.field public static bitmapQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static bottomHeight:I

.field private static headBitmap:Landroid/graphics/Bitmap;

.field public static isScrollMode:Z

.field public static isScroolOver:Z

.field public static isSuspend:Z

.field private static lastScroolHight:I

.field private static mTreeSet:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mergeHeight:I

.field private static mergeWidth:I

.field private static outBmp:Landroid/graphics/Bitmap;

.field private static paramHeight:I

.field private static tailBitmap:Landroid/graphics/Bitmap;

.field private static tempBitmap:Landroid/graphics/Bitmap;

.field private static titleHeight:I

.field private static totleHeight:I

.field private static winWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    sput v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    .line 35
    sput v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeWidth:I

    .line 36
    sput v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeHeight:I

    .line 37
    sput v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    .line 38
    sput v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->totleHeight:I

    .line 39
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mTreeSet:Ljava/util/TreeSet;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bitmapQueue:Ljava/util/Queue;

    .line 41
    sput-boolean v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScroolOver:Z

    .line 42
    sput v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    .line 43
    sput v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bottomHeight:I

    .line 44
    sput-boolean v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isSuspend:Z

    .line 46
    sput-object v2, Lcom/android/mipop/longscreenshot/MergeImageUtil;->addBitmap:Landroid/graphics/Bitmap;

    .line 47
    sput-object v2, Lcom/android/mipop/longscreenshot/MergeImageUtil;->tempBitmap:Landroid/graphics/Bitmap;

    .line 48
    sput-object v2, Lcom/android/mipop/longscreenshot/MergeImageUtil;->headBitmap:Landroid/graphics/Bitmap;

    .line 49
    sput-object v2, Lcom/android/mipop/longscreenshot/MergeImageUtil;->tailBitmap:Landroid/graphics/Bitmap;

    .line 50
    sput-object v2, Lcom/android/mipop/longscreenshot/MergeImageUtil;->outBmp:Landroid/graphics/Bitmap;

    .line 52
    sput-boolean v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->isScrollMode:Z

    .line 54
    sput v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->lastScroolHight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    return-void
.end method

.method public static addImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "mergeImage"    # Landroid/graphics/Bitmap;
    .param p1, "paramImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->addImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/android/mipop/longscreenshot/MergeImageUtil$IsSimilarCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static addImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/android/mipop/longscreenshot/MergeImageUtil$IsSimilarCallback;)Landroid/graphics/Bitmap;
    .locals 36
    .param p0, "mergeImage"    # Landroid/graphics/Bitmap;
    .param p1, "paramImage"    # Landroid/graphics/Bitmap;
    .param p2, "cb"    # Lcom/android/mipop/longscreenshot/MergeImageUtil$IsSimilarCallback;

    .prologue
    .line 66
    invoke-static/range {p0 .. p1}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->getImageparam(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 67
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v7, v0, [I

    .line 68
    .local v7, "array1":[I
    const/16 v31, 0x0

    sget v32, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    aput v32, v7, v31

    .line 69
    const/16 v31, 0x1

    sget v32, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeHeight:I

    aput v32, v7, v31

    .line 70
    sget-object v31, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v31

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    move-object/from16 v22, v31

    check-cast v22, [[I

    .line 71
    .local v22, "mergeArray":[[I
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v8, v0, [I

    .line 72
    .local v8, "array2":[I
    const/16 v31, 0x0

    sget v32, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    aput v32, v8, v31

    .line 73
    const/16 v31, 0x1

    sget v32, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    aput v32, v8, v31

    .line 74
    sget-object v31, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v31

    invoke-static {v0, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    move-object/from16 v26, v31

    check-cast v26, [[I

    .line 75
    .local v26, "paramArray":[[I
    const-string v31, "MergeImageUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "addImage winWidth = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " paramHeight = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " mergeArray = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v33, v22, v33

    const/16 v34, 0x0

    aget v33, v33, v34

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    if-gez v31, :cond_4

    .line 79
    const/16 v17, 0x0

    .line 80
    .local v17, "indexY":I
    const/4 v15, 0x0

    .line 81
    .local v15, "indexX":I
    :goto_0
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    .line 82
    const/4 v15, 0x0

    .line 83
    :goto_1
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    move/from16 v0, v31

    if-ge v15, v0, :cond_2

    .line 85
    aget-object v31, v22, v15

    aget v31, v31, v17

    if-nez v31, :cond_0

    .line 86
    aget-object v31, v22, v15

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v32

    aput v32, v31, v17

    .line 88
    :cond_0
    aget-object v31, v26, v15

    aget v31, v31, v17

    if-nez v31, :cond_1

    .line 89
    aget-object v31, v26, v15

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v32

    aput v32, v31, v17

    .line 92
    :cond_1
    aget-object v31, v22, v15

    aget v31, v31, v17

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->red(I)I

    move-result v25

    .line 93
    .local v25, "mergedRed":I
    aget-object v31, v22, v15

    aget v31, v31, v17

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->green(I)I

    move-result v24

    .line 94
    .local v24, "mergedGreen":I
    aget-object v31, v22, v15

    aget v31, v31, v17

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->blue(I)I

    move-result v23

    .line 95
    .local v23, "mergedBlue":I
    aget-object v31, v26, v15

    aget v31, v31, v17

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->red(I)I

    move-result v29

    .line 96
    .local v29, "paramRed":I
    aget-object v31, v26, v15

    aget v31, v31, v17

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->green(I)I

    move-result v28

    .line 97
    .local v28, "paramGreen":I
    aget-object v31, v26, v15

    aget v31, v31, v17

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->blue(I)I

    move-result v27

    .line 98
    .local v27, "paramBlue":I
    sub-int v31, v25, v29

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    const/16 v32, 0x32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_2

    sub-int v31, v24, v28

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    const/16 v32, 0x32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_2

    sub-int v31, v23, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    const/16 v32, 0x32

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_d

    .line 105
    .end local v23    # "mergedBlue":I
    .end local v24    # "mergedGreen":I
    .end local v25    # "mergedRed":I
    .end local v27    # "paramBlue":I
    .end local v28    # "paramGreen":I
    .end local v29    # "paramRed":I
    :cond_2
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    move/from16 v0, v31

    if-ge v15, v0, :cond_e

    .line 109
    :cond_3
    add-int/lit8 v17, v17, 0xa

    .line 110
    sput v17, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    .line 111
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    sget v32, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    sub-int v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    const/16 v32, 0x32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_4

    if-eqz p2, :cond_4

    .line 113
    invoke-interface/range {p2 .. p2}, Lcom/android/mipop/longscreenshot/MergeImageUtil$IsSimilarCallback;->onSimilar()V

    .line 117
    .end local v15    # "indexX":I
    .end local v17    # "indexY":I
    :cond_4
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bottomHeight:I

    if-gez v31, :cond_9

    .line 119
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    add-int/lit8 v18, v31, -0x1

    .line 120
    .local v18, "indexY2":I
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeHeight:I

    add-int/lit8 v12, v31, -0x1

    .line 121
    .local v12, "indexMergeY2":I
    const/16 v16, 0x0

    .line 122
    .local v16, "indexX2":I
    :goto_2
    if-lez v18, :cond_8

    .line 123
    const/16 v16, 0x0

    .line 124
    :goto_3
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    .line 125
    aget-object v31, v22, v16

    aget v31, v31, v12

    if-nez v31, :cond_5

    .line 126
    aget-object v31, v22, v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v32

    aput v32, v31, v12

    .line 129
    :cond_5
    aget-object v31, v26, v16

    aget v31, v31, v18

    if-nez v31, :cond_6

    .line 130
    aget-object v31, v26, v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v32

    aput v32, v31, v18

    .line 132
    :cond_6
    aget-object v31, v22, v16

    aget v31, v31, v12

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->red(I)I

    move-result v25

    .line 133
    .restart local v25    # "mergedRed":I
    aget-object v31, v22, v16

    aget v31, v31, v12

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->green(I)I

    move-result v24

    .line 134
    .restart local v24    # "mergedGreen":I
    aget-object v31, v22, v16

    aget v31, v31, v12

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->blue(I)I

    move-result v23

    .line 135
    .restart local v23    # "mergedBlue":I
    aget-object v31, v26, v16

    aget v31, v31, v18

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->red(I)I

    move-result v29

    .line 136
    .restart local v29    # "paramRed":I
    aget-object v31, v26, v16

    aget v31, v31, v18

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->green(I)I

    move-result v28

    .line 137
    .restart local v28    # "paramGreen":I
    aget-object v31, v26, v16

    aget v31, v31, v18

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->blue(I)I

    move-result v27

    .line 138
    .restart local v27    # "paramBlue":I
    sub-int v31, v25, v29

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    const/16 v32, 0x32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    sub-int v31, v24, v28

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    const/16 v32, 0x32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    sub-int v31, v23, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    const/16 v32, 0x32

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_f

    .line 145
    .end local v23    # "mergedBlue":I
    .end local v24    # "mergedGreen":I
    .end local v25    # "mergedRed":I
    .end local v27    # "paramBlue":I
    .end local v28    # "paramGreen":I
    .end local v29    # "paramRed":I
    :cond_7
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_10

    .line 150
    :cond_8
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    sub-int v31, v31, v18

    add-int/lit8 v31, v31, 0xa

    sput v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bottomHeight:I

    .line 152
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bottomHeight:I

    sget v32, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    sub-int v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    const/16 v32, 0x32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    if-eqz p2, :cond_9

    .line 154
    invoke-interface/range {p2 .. p2}, Lcom/android/mipop/longscreenshot/MergeImageUtil$IsSimilarCallback;->onSimilar()V

    .line 158
    .end local v12    # "indexMergeY2":I
    .end local v16    # "indexX2":I
    .end local v18    # "indexY2":I
    :cond_9
    const-string v31, "MergeImageUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "addImage indexY = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " bottomHeight = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bottomHeight:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget v13, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    .line 160
    .local v13, "indexParam":I
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    add-int/lit8 v14, v31, 0x1

    .line 161
    .local v14, "indexScroll":I
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeHeight:I

    sget v32, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bottomHeight:I

    sub-int v5, v31, v32

    .line 162
    .local v5, "MergedScrollHeight":I
    const-string v31, "MergeImageUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "addImage mergeHeight = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeHeight:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " paramHeight = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " indexScroll = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " winWidth = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v9, 0x32

    .line 165
    .local v9, "colorDiff":I
    :goto_4
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    move/from16 v0, v31

    if-ge v14, v0, :cond_a

    .line 166
    sget v13, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    .line 167
    const-string v31, "MergeImageUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "addImage  indexScroll = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-lt v14, v5, :cond_12

    .line 212
    :cond_a
    const-string v31, "MergeImageUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "addImage mTreeSet = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mTreeSet:Ljava/util/TreeSet;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " mTreeSet isempty = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mTreeSet:Ljava/util/TreeSet;

    invoke-virtual/range {v33 .. v33}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mTreeSet:Ljava/util/TreeSet;

    invoke-virtual/range {v31 .. v31}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_1a

    .line 215
    sget-object v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mTreeSet:Ljava/util/TreeSet;

    invoke-virtual/range {v31 .. v31}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    sget v32, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeHeight:I

    add-int v31, v31, v32

    sub-int v30, v31, v5

    .line 216
    .local v30, "scrollHeight":I
    const-string v31, "MergeImageUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "scrollHeight = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " totleHeight = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->totleHeight:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " indexY = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    sub-int v31, v30, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    const/16 v32, 0x64

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_b

    if-eqz p2, :cond_b

    .line 220
    invoke-interface/range {p2 .. p2}, Lcom/android/mipop/longscreenshot/MergeImageUtil$IsSimilarCallback;->onSimilar()V

    .line 222
    :cond_b
    sget-object v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->outBmp:Landroid/graphics/Bitmap;

    if-eqz v31, :cond_c

    .line 223
    sget-object v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->outBmp:Landroid/graphics/Bitmap;

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    :cond_c
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeWidth:I

    sget v32, Lcom/android/mipop/longscreenshot/MergeImageUtil;->totleHeight:I

    sub-int v32, v32, v30

    sget-object v33, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v31 .. v33}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v31

    sput-object v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->outBmp:Landroid/graphics/Bitmap;

    .line 226
    new-instance v20, Landroid/graphics/Canvas;

    sget-object v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->outBmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 227
    .local v20, "localCanvas":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Rect;

    const/16 v31, 0x0

    const/16 v32, 0x0

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeWidth:I

    sget v34, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeHeight:I

    sub-int v34, v34, v30

    sget v35, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    add-int v34, v34, v35

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 228
    .local v21, "localRect":Landroid/graphics/Rect;
    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v21

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 230
    new-instance v10, Landroid/graphics/Rect;

    const/16 v31, 0x0

    sget v32, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeHeight:I

    sub-int v32, v32, v30

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    add-int v32, v32, v33

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeWidth:I

    sget v34, Lcom/android/mipop/longscreenshot/MergeImageUtil;->totleHeight:I

    sub-int v34, v34, v30

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 231
    .local v10, "dstRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/16 v31, 0x0

    sget v32, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    sget v33, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeWidth:I

    sget v34, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    move/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 232
    .local v6, "ParamRect":Landroid/graphics/Rect;
    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v6, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 233
    const/16 v31, 0x1f

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 234
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Canvas;->restore()V

    .line 236
    sget-object v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->outBmp:Landroid/graphics/Bitmap;

    .line 253
    .end local v6    # "ParamRect":Landroid/graphics/Rect;
    .end local v10    # "dstRect":Landroid/graphics/Rect;
    .end local v20    # "localCanvas":Landroid/graphics/Canvas;
    .end local v21    # "localRect":Landroid/graphics/Rect;
    .end local v30    # "scrollHeight":I
    :goto_5
    return-object v31

    .line 103
    .end local v5    # "MergedScrollHeight":I
    .end local v9    # "colorDiff":I
    .end local v13    # "indexParam":I
    .end local v14    # "indexScroll":I
    .restart local v15    # "indexX":I
    .restart local v17    # "indexY":I
    .restart local v23    # "mergedBlue":I
    .restart local v24    # "mergedGreen":I
    .restart local v25    # "mergedRed":I
    .restart local v27    # "paramBlue":I
    .restart local v28    # "paramGreen":I
    .restart local v29    # "paramRed":I
    :cond_d
    add-int/lit8 v15, v15, 0xa

    .line 104
    goto/16 :goto_1

    .line 107
    .end local v23    # "mergedBlue":I
    .end local v24    # "mergedGreen":I
    .end local v25    # "mergedRed":I
    .end local v27    # "paramBlue":I
    .end local v28    # "paramGreen":I
    .end local v29    # "paramRed":I
    :cond_e
    add-int/lit8 v17, v17, 0x2

    goto/16 :goto_0

    .line 143
    .end local v15    # "indexX":I
    .end local v17    # "indexY":I
    .restart local v12    # "indexMergeY2":I
    .restart local v16    # "indexX2":I
    .restart local v18    # "indexY2":I
    .restart local v23    # "mergedBlue":I
    .restart local v24    # "mergedGreen":I
    .restart local v25    # "mergedRed":I
    .restart local v27    # "paramBlue":I
    .restart local v28    # "paramGreen":I
    .restart local v29    # "paramRed":I
    :cond_f
    add-int/lit8 v16, v16, 0xa

    .line 144
    goto/16 :goto_3

    .line 147
    .end local v23    # "mergedBlue":I
    .end local v24    # "mergedGreen":I
    .end local v25    # "mergedRed":I
    .end local v27    # "paramBlue":I
    .end local v28    # "paramGreen":I
    .end local v29    # "paramRed":I
    :cond_10
    add-int/lit8 v18, v18, -0x2

    .line 148
    add-int/lit8 v12, v12, -0x2

    goto/16 :goto_2

    .line 207
    .end local v12    # "indexMergeY2":I
    .end local v16    # "indexX2":I
    .end local v18    # "indexY2":I
    .restart local v5    # "MergedScrollHeight":I
    .restart local v9    # "colorDiff":I
    .local v11, "index":I
    .restart local v13    # "indexParam":I
    .restart local v14    # "indexScroll":I
    .local v19, "isBreak":Z
    :cond_11
    add-int/lit8 v13, v13, 0x4

    .line 170
    .end local v11    # "index":I
    .end local v19    # "isBreak":Z
    :cond_12
    if-ge v13, v14, :cond_17

    .line 171
    sget-object v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mTreeSet:Ljava/util/TreeSet;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 172
    const/4 v11, 0x0

    .line 173
    .restart local v11    # "index":I
    const/16 v19, 0x0

    .line 174
    .restart local v19    # "isBreak":Z
    :goto_6
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    move/from16 v0, v31

    if-ge v11, v0, :cond_16

    .line 175
    aget-object v31, v22, v11

    add-int v32, v13, v5

    sub-int v32, v32, v14

    add-int/lit8 v32, v32, -0x1

    aget v31, v31, v32

    if-nez v31, :cond_13

    .line 176
    aget-object v31, v22, v11

    add-int v32, v13, v5

    sub-int v32, v32, v14

    add-int/lit8 v32, v32, -0x1

    add-int v33, v13, v5

    sub-int v33, v33, v14

    add-int/lit8 v33, v33, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v33

    aput v33, v31, v32

    .line 178
    :cond_13
    aget-object v31, v26, v11

    aget v31, v31, v13

    if-nez v31, :cond_14

    .line 179
    aget-object v31, v26, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v32

    aput v32, v31, v13

    .line 181
    :cond_14
    aget-object v31, v22, v11

    add-int v32, v13, v5

    sub-int v32, v32, v14

    add-int/lit8 v32, v32, -0x1

    aget v31, v31, v32

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->red(I)I

    move-result v25

    .line 182
    .restart local v25    # "mergedRed":I
    aget-object v31, v22, v11

    add-int v32, v13, v5

    sub-int v32, v32, v14

    add-int/lit8 v32, v32, -0x1

    aget v31, v31, v32

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->green(I)I

    move-result v24

    .line 183
    .restart local v24    # "mergedGreen":I
    aget-object v31, v22, v11

    add-int v32, v13, v5

    sub-int v32, v32, v14

    add-int/lit8 v32, v32, -0x1

    aget v31, v31, v32

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->blue(I)I

    move-result v23

    .line 184
    .restart local v23    # "mergedBlue":I
    aget-object v31, v26, v11

    aget v31, v31, v13

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->red(I)I

    move-result v29

    .line 185
    .restart local v29    # "paramRed":I
    aget-object v31, v26, v11

    aget v31, v31, v13

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->green(I)I

    move-result v28

    .line 186
    .restart local v28    # "paramGreen":I
    aget-object v31, v26, v11

    aget v31, v31, v13

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->blue(I)I

    move-result v27

    .line 187
    .restart local v27    # "paramBlue":I
    sget v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    div-int/lit8 v31, v31, 0x4

    move/from16 v0, v31

    if-ge v11, v0, :cond_18

    .line 188
    const/16 v9, 0xb4

    .line 192
    :goto_7
    sub-int v31, v25, v29

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move/from16 v0, v31

    if-ge v0, v9, :cond_15

    sub-int v31, v24, v28

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move/from16 v0, v31

    if-ge v0, v9, :cond_15

    sub-int v31, v23, v27

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move/from16 v0, v31

    if-lt v0, v9, :cond_19

    .line 195
    :cond_15
    const-string v31, "MergeImageUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "addImage index = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " indexParam = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " indexScroll = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v19, 0x1

    .line 203
    .end local v23    # "mergedBlue":I
    .end local v24    # "mergedGreen":I
    .end local v25    # "mergedRed":I
    .end local v27    # "paramBlue":I
    .end local v28    # "paramGreen":I
    .end local v29    # "paramRed":I
    :cond_16
    if-eqz v19, :cond_11

    .line 204
    sget-object v31, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mTreeSet:Ljava/util/TreeSet;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 209
    .end local v11    # "index":I
    .end local v19    # "isBreak":Z
    :cond_17
    const-string v31, "MergeImageUtil"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "addImage indexScroll = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " indexParam = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 190
    .restart local v11    # "index":I
    .restart local v19    # "isBreak":Z
    .restart local v23    # "mergedBlue":I
    .restart local v24    # "mergedGreen":I
    .restart local v25    # "mergedRed":I
    .restart local v27    # "paramBlue":I
    .restart local v28    # "paramGreen":I
    .restart local v29    # "paramRed":I
    :cond_18
    const/16 v9, 0x32

    goto/16 :goto_7

    .line 200
    :cond_19
    add-int/lit8 v11, v11, 0xa

    .line 202
    goto/16 :goto_6

    .line 253
    .end local v11    # "index":I
    .end local v19    # "isBreak":Z
    .end local v23    # "mergedBlue":I
    .end local v24    # "mergedGreen":I
    .end local v25    # "mergedRed":I
    .end local v27    # "paramBlue":I
    .end local v28    # "paramGreen":I
    .end local v29    # "paramRed":I
    :cond_1a
    const/16 v31, 0x0

    goto/16 :goto_5
.end method

.method private static composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "first"    # Landroid/graphics/Bitmap;
    .param p1, "second"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 419
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 420
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 421
    .local v1, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 422
    .local v2, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 423
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 424
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, p1, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 425
    return-object v2
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 383
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static getCutBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "listHight"    # I
    .param p2, "scroolHight"    # I

    .prologue
    .line 412
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    .line 413
    .local v1, "mPreviewWidth":I
    const/4 v2, 0x0

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v3, v1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 415
    .local v0, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private static getHeadBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "listY"    # I

    .prologue
    const/4 v2, 0x0

    .line 387
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    .line 388
    .local v1, "mPreviewWidth":I
    invoke-static {p0, v2, v2, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    .local v0, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private static getImageparam(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "mergeImage"    # Landroid/graphics/Bitmap;
    .param p1, "paramImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sput v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeHeight:I

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sput v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    .line 259
    sget v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeHeight:I

    sget v1, Lcom/android/mipop/longscreenshot/MergeImageUtil;->paramHeight:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->totleHeight:I

    .line 260
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sput v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeWidth:I

    .line 261
    sget v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->mergeWidth:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->winWidth:I

    .line 262
    return-void
.end method

.method private static getMidBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "listY"    # I
    .param p2, "listHight"    # I

    .prologue
    .line 406
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    .line 407
    .local v1, "mPreviewWidth":I
    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p2, -0x1

    invoke-static {p0, v2, v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 408
    .local v0, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static getOthorBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 372
    sget v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    .line 373
    .local v2, "mPreviewWidth":I
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    .line 374
    .local v1, "mPreviewHeight":I
    invoke-static {}, Lcom/android/mipop/api/MyApplication;->getInstance()Lcom/android/mipop/api/MyApplication;

    move-result-object v4

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {v4, v5}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 375
    .local v3, "statusBarhight":I
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lxg statusBarhight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v4, 0x0

    add-int/lit8 v5, v3, 0x1

    sub-int v6, v1, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {p0, v4, v5, v2, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    .local v0, "cutBitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private static getTailBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "listY"    # I
    .param p2, "listHight"    # I

    .prologue
    .line 393
    sget v2, Lcom/android/mipop/widget/Until;->SCREEM_WIDTH:I

    .line 394
    .local v2, "mPreviewWidth":I
    sget v1, Lcom/android/mipop/widget/Until;->SCREEM_HEIGHT:I

    .line 395
    .local v1, "mPreviewHeight":I
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lxg getTailBitmap listY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",listHight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mPreviewHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    add-int v3, p2, p1

    if-lt v3, v1, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    .line 400
    :cond_0
    const/4 v3, 0x0

    add-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    sub-int v5, v1, p1

    sub-int/2addr v5, p2

    add-int/lit8 v5, v5, -0x1

    invoke-static {p0, v3, v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    .local v0, "cutBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static isSimilar(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 21
    .param p0, "mergeImage"    # Landroid/graphics/Bitmap;
    .param p1, "paramImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 320
    .local v8, "mergeH":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 321
    .local v16, "paramH":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    mul-int/lit8 v18, v18, 0x4

    div-int/lit8 v9, v18, 0x5

    .line 323
    .local v9, "mergeW":I
    add-int/lit8 v6, v16, -0x1

    .line 324
    .local v6, "indexY2":I
    const-string v18, ""

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "lxg paramH = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",mergeH = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",indexY2 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",mergeW = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    add-int/lit8 v4, v8, -0x1

    .line 327
    .local v4, "indexMergeY2":I
    const/4 v5, 0x0

    .line 328
    .local v5, "indexX2":I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v2, v0, [I

    .line 329
    .local v2, "array1":[I
    const/16 v18, 0x0

    aput v9, v2, v18

    .line 330
    const/16 v18, 0x1

    aput v8, v2, v18

    .line 331
    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[I

    move-object/from16 v7, v18

    check-cast v7, [[I

    .line 332
    .local v7, "mergeArray":[[I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v3, v0, [I

    .line 333
    .local v3, "array2":[I
    const/16 v18, 0x0

    aput v9, v3, v18

    .line 334
    const/16 v18, 0x1

    aput v16, v3, v18

    .line 335
    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [[I

    move-object/from16 v13, v18

    check-cast v13, [[I

    .line 336
    .local v13, "paramArray":[[I
    :goto_0
    if-lez v6, :cond_3

    .line 337
    const/4 v5, 0x0

    .line 338
    :goto_1
    if-ge v5, v9, :cond_2

    .line 339
    aget-object v18, v7, v5

    aget v18, v18, v4

    if-nez v18, :cond_0

    .line 340
    aget-object v18, v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    aput v19, v18, v4

    .line 343
    :cond_0
    aget-object v18, v13, v5

    aget v18, v18, v6

    if-nez v18, :cond_1

    .line 344
    aget-object v18, v13, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    aput v19, v18, v6

    .line 346
    :cond_1
    aget-object v18, v7, v5

    aget v18, v18, v4

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->red(I)I

    move-result v12

    .line 347
    .local v12, "mergedRed":I
    aget-object v18, v7, v5

    aget v18, v18, v4

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 348
    .local v11, "mergedGreen":I
    aget-object v18, v7, v5

    aget v18, v18, v4

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    .line 349
    .local v10, "mergedBlue":I
    aget-object v18, v13, v5

    aget v18, v18, v6

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->red(I)I

    move-result v17

    .line 350
    .local v17, "paramRed":I
    aget-object v18, v13, v5

    aget v18, v18, v6

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 351
    .local v15, "paramGreen":I
    aget-object v18, v13, v5

    aget v18, v18, v6

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    .line 352
    .local v14, "paramBlue":I
    sub-int v18, v12, v17

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0x32

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    sub-int v18, v11, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0x32

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    sub-int v18, v10, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0x32

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 359
    .end local v10    # "mergedBlue":I
    .end local v11    # "mergedGreen":I
    .end local v12    # "mergedRed":I
    .end local v14    # "paramBlue":I
    .end local v15    # "paramGreen":I
    .end local v17    # "paramRed":I
    :cond_2
    if-ge v5, v9, :cond_5

    .line 364
    :cond_3
    const-string v18, "MergeImageUtil"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "lxg addImage indexY2 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " paramH = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 366
    const/16 v18, 0x1

    .line 368
    :goto_2
    return v18

    .line 357
    .restart local v10    # "mergedBlue":I
    .restart local v11    # "mergedGreen":I
    .restart local v12    # "mergedRed":I
    .restart local v14    # "paramBlue":I
    .restart local v15    # "paramGreen":I
    .restart local v17    # "paramRed":I
    :cond_4
    add-int/lit8 v5, v5, 0x10

    .line 358
    goto/16 :goto_1

    .line 361
    .end local v10    # "mergedBlue":I
    .end local v11    # "mergedGreen":I
    .end local v12    # "mergedRed":I
    .end local v14    # "paramBlue":I
    .end local v15    # "paramGreen":I
    .end local v17    # "paramRed":I
    :cond_5
    add-int/lit8 v6, v6, -0x2

    .line 362
    add-int/lit8 v4, v4, -0x2

    goto/16 :goto_0

    .line 367
    :cond_6
    const-string v18, "MergeImageUtil"

    const-string v19, "lxg return false"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v18, 0x0

    goto :goto_2
.end method

.method public static readImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 265
    const-string v7, "test"

    const-string v8, "readImage"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v4, 0x0

    .line 267
    .local v4, "out":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v5, "ptr":Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-object v6

    .line 270
    :cond_1
    const-string v7, "test"

    const-string v8, "readImage 2"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v2, 0x0

    .line 273
    .local v2, "fs":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v2    # "fs":Ljava/io/FileInputStream;
    .local v3, "fs":Ljava/io/FileInputStream;
    :try_start_1
    const-string v7, "test"

    const-string v8, "readImage 3"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 280
    if-eqz v3, :cond_0

    .line 282
    const-string v6, "test"

    const-string v7, "readImage 4"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 286
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :goto_1
    move-object v6, v4

    .line 291
    goto :goto_0

    .line 275
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v2    # "fs":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fs":Ljava/io/FileInputStream;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v2    # "fs":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 57
    sput v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->titleHeight:I

    .line 58
    sput v0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->bottomHeight:I

    .line 59
    return-void
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 300
    move-object v0, p0

    .line 301
    .local v0, "BitmapOrg":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 302
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 303
    .local v4, "height":I
    move v8, p1

    .line 304
    .local v8, "newWidth":I
    move v7, p2

    .line 306
    .local v7, "newHeight":I
    int-to-float v2, v8

    int-to-float v6, v3

    div-float v11, v2, v6

    .line 307
    .local v11, "scaleWidth":F
    int-to-float v2, v7

    int-to-float v6, v4

    div-float v10, v2, v6

    .line 309
    .local v10, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 310
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 311
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 315
    .local v9, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v9
.end method

.method public static spliceBitmap(Landroid/graphics/Bitmap;III)V
    .locals 6
    .param p0, "mergeBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "listY"    # I
    .param p2, "listHight"    # I
    .param p3, "scroolHight"    # I

    .prologue
    .line 429
    sput-object p0, Lcom/android/mipop/longscreenshot/MergeImageUtil;->tempBitmap:Landroid/graphics/Bitmap;

    .line 430
    sget-object v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->addBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 431
    const/4 v3, 0x0

    sput v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->lastScroolHight:I

    .line 432
    sget-object v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, p1}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->getHeadBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->headBitmap:Landroid/graphics/Bitmap;

    .line 433
    sget-object v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, p1, p2}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->getTailBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->tailBitmap:Landroid/graphics/Bitmap;

    .line 434
    sget-object v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, p1, p2}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->getMidBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->addBitmap:Landroid/graphics/Bitmap;

    .line 443
    :goto_0
    sput p3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->lastScroolHight:I

    .line 444
    return-void

    .line 436
    :cond_0
    sget-object v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, p1, p2}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->getMidBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    .local v0, "bitmapTemp":Landroid/graphics/Bitmap;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lxg height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sget v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->lastScroolHight:I

    sub-int v3, p3, v3

    invoke-static {v0, p2, v3}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->getCutBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 439
    .local v1, "bitmapTemp2":Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->addBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v1}, Lcom/android/mipop/longscreenshot/MergeImageUtil;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 440
    .local v2, "bitmapTemp3":Landroid/graphics/Bitmap;
    sput-object v2, Lcom/android/mipop/longscreenshot/MergeImageUtil;->addBitmap:Landroid/graphics/Bitmap;

    .line 441
    sget-object v3, Lcom/android/mipop/longscreenshot/MergeImageUtil;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
