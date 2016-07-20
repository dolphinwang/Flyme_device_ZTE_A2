.class public Lcom/hcrest/gestures/symbol/SymbolGestureProposal;
.super Ljava/lang/Object;
.source "SymbolGestureProposal.java"


# static fields
.field public static final DEFAULT_SYMBOL_NAME:Ljava/lang/String; = "User Defined"

.field protected static final MAX_PERCENT_REMOVE_VARIATIONS:D = 0.33

.field public static final MAX_TRAIN_PATH_VARIATIONS:I = 0x64

.field public static final MIN_TRAIN_PATH_LENGTH:D = 100.0


# instance fields
.field private final mLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

.field private mNumSegments:I

.field private mPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;)V
    .locals 1
    .param p1, "library"    # Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mNumSegments:I

    .line 91
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    .line 92
    return-void
.end method


# virtual methods
.method public addToLibrary(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->createSymbol()Lcom/hcrest/gestures/symbol/SymbolGesture;

    move-result-object v0

    .line 203
    .local v0, "g":Lcom/hcrest/gestures/symbol/SymbolGesture;
    if-nez v0, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 209
    :goto_0
    return v1

    .line 206
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    invoke-virtual {v0, p1}, Lcom/hcrest/gestures/symbol/SymbolGesture;->setName(Ljava/lang/String;)V

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    invoke-virtual {v1, v0}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->addSymbol(Lcom/hcrest/gestures/symbol/SymbolGesture;)Z

    move-result v1

    goto :goto_0
.end method

.method public createSymbol()Lcom/hcrest/gestures/symbol/SymbolGesture;
    .locals 26

    .prologue
    .line 220
    const/16 v22, 0x64

    move/from16 v0, v22

    new-array v11, v0, [D

    .line 221
    .local v11, "distance":[D
    const-wide/16 v18, 0x0

    .line 222
    .local v18, "max_dist":D
    const/16 v22, 0x64

    const/16 v23, 0x64

    filled-new-array/range {v22 .. v23}, [I

    move-result-object v22

    sget-object v23, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 223
    .local v9, "cost":[[D
    const/16 v22, 0x64

    move/from16 v0, v22

    new-array v0, v0, [Z

    move-object/from16 v21, v0

    .line 227
    .local v21, "select":[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->getPatternLength()I

    move-result v22

    move/from16 v0, v22

    new-array v12, v0, [I

    .line 230
    .local v12, "finalPattern":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_0

    .line 231
    const/16 v22, 0x0

    .line 326
    :goto_0
    return-object v22

    .line 235
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "finalPattern":[I
    check-cast v12, [I

    .line 326
    .restart local v12    # "finalPattern":[I
    :cond_1
    new-instance v22, Lcom/hcrest/gestures/symbol/SymbolGesture;

    const-string v23, "User Defined"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mNumSegments:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v12}, Lcom/hcrest/gestures/symbol/SymbolGesture;-><init>(Ljava/lang/String;I[I)V

    goto :goto_0

    .line 242
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v20

    .line 243
    .local v20, "numSelectedPatterns":I
    const/4 v15, 0x0

    .line 244
    .local v15, "k":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_5

    .line 246
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_3

    .line 247
    aget-object v24, v9, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [I

    invoke-static/range {v22 .. v23}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->computeEditDistance([I[I)D

    move-result-wide v22

    aput-wide v22, v24, v14

    .line 250
    aget-wide v22, v11, v13

    aget-object v24, v9, v13

    aget-wide v24, v24, v14

    add-double v22, v22, v24

    aput-wide v22, v11, v13

    .line 246
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 252
    :cond_3
    aget-wide v22, v11, v13

    cmpg-double v22, v18, v22

    if-gez v22, :cond_4

    .line 253
    move v15, v13

    .line 254
    aget-wide v18, v11, v13

    .line 256
    :cond_4
    const/16 v22, 0x1

    aput-boolean v22, v21, v13

    .line 244
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 260
    .end local v14    # "j":I
    :cond_5
    const-wide v22, 0x3fd51eb851eb851fL    # 0.33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v17, v0

    .line 261
    .local v17, "max_num_remove":I
    const/4 v14, 0x1

    .restart local v14    # "j":I
    :goto_3
    move/from16 v0, v17

    if-gt v14, v0, :cond_6

    .line 267
    add-int/lit8 v22, v20, -0x1

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v18, v22

    const-wide/high16 v24, 0x3fd0000000000000L    # 0.25

    cmpg-double v22, v22, v24

    if-gtz v22, :cond_7

    .line 290
    :cond_6
    add-int/lit8 v22, v20, -0x1

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v22, v18, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->getMinimumPercentMatch()D

    move-result-wide v24

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_a

    .line 291
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 271
    :cond_7
    const/16 v22, 0x0

    aput-boolean v22, v21, v15

    .line 272
    add-int/lit8 v20, v20, -0x1

    .line 275
    const-wide/16 v18, 0x0

    .line 276
    const/16 v16, 0x0

    .line 277
    .local v16, "kk":I
    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_9

    .line 278
    aget-boolean v22, v21, v13

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 279
    aget-wide v22, v11, v13

    aget-object v24, v9, v13

    aget-wide v24, v24, v15

    sub-double v22, v22, v24

    aput-wide v22, v11, v13

    .line 280
    aget-wide v22, v11, v13

    cmpg-double v22, v18, v22

    if-gez v22, :cond_8

    .line 281
    move/from16 v16, v13

    .line 282
    aget-wide v18, v11, v13

    .line 277
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 286
    :cond_9
    move/from16 v15, v16

    .line 261
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 295
    .end local v16    # "kk":I
    :cond_a
    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->getPatternLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v13, v0, :cond_e

    .line 296
    const/4 v4, 0x0

    .line 297
    .local v4, "accmX":F
    const/4 v5, 0x0

    .line 298
    .local v5, "accmY":F
    const/4 v14, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_c

    .line 299
    aget-boolean v22, v21, v14

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [I

    aget v22, v22, v13

    move/from16 v0, v22

    int-to-float v7, v0

    .line 301
    .local v7, "code":F
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v7, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v6, v0

    .line 302
    .local v6, "angle":F
    float-to-double v0, v4

    move-wide/from16 v22, v0

    float-to-double v0, v6

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v4, v0

    .line 303
    float-to-double v0, v5

    move-wide/from16 v22, v0

    float-to-double v0, v6

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v5, v0

    .line 298
    .end local v6    # "angle":F
    .end local v7    # "code":F
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 306
    :cond_c
    invoke-static {v5, v4}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->deltaToVector(FF)I

    move-result v22

    move/from16 v0, v22

    int-to-float v10, v0

    .line 307
    .local v10, "curvalue":F
    float-to-double v0, v10

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v8, v0

    .line 308
    .local v8, "codei":I
    const/16 v22, 0x8

    move/from16 v0, v22

    if-le v8, v0, :cond_d

    .line 309
    const/4 v8, 0x1

    .line 311
    :cond_d
    aput v8, v12, v13

    .line 295
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 315
    .end local v4    # "accmX":F
    .end local v5    # "accmY":F
    .end local v8    # "codei":I
    .end local v10    # "curvalue":F
    :cond_e
    const-wide/16 v18, 0x0

    .line 316
    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_1

    .line 317
    aget-boolean v22, v21, v14

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [I

    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->computeEditDistance([I[I)D

    move-result-wide v22

    aput-wide v22, v11, v14

    .line 321
    aget-wide v22, v11, v14

    cmpg-double v22, v18, v22

    if-gez v22, :cond_f

    aget-wide v18, v11, v14

    .line 316
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_7
.end method

.method public trainPath(Lcom/hcrest/gestures/symbol/PathSegment;)Z
    .locals 24
    .param p1, "segment"    # Lcom/hcrest/gestures/symbol/PathSegment;

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 111
    const/16 v20, 0x0

    .line 189
    :goto_0
    return v20

    .line 114
    :cond_0
    if-nez p1, :cond_1

    const/16 v20, 0x0

    goto :goto_0

    .line 116
    :cond_1
    const/4 v15, 0x1

    .line 117
    .local v15, "numSegments":I
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/hcrest/gestures/symbol/Path;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v20, p1

    .line 118
    check-cast v20, Lcom/hcrest/gestures/symbol/Path;

    invoke-virtual/range {v20 .. v20}, Lcom/hcrest/gestures/symbol/Path;->getSegmentCount()I

    move-result v15

    .line 123
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mNumSegments:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mNumSegments:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v15, v0, :cond_3

    .line 124
    const/16 v20, 0x0

    goto :goto_0

    .line 127
    :cond_3
    move-object/from16 v0, p0

    iput v15, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mNumSegments:I

    .line 129
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v8, "dist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v10, 0x0

    .line 131
    .local v10, "dist_total":F
    const/4 v3, 0x0

    .local v3, "accm_x":F
    const/4 v4, 0x0

    .local v4, "accm_y":F
    const/4 v2, 0x0

    .line 132
    .local v2, "accm_d":F
    const/4 v11, 0x0

    .local v11, "dx":F
    const/4 v12, 0x0

    .line 137
    .local v12, "dy":F
    const/4 v13, 0x0

    .local v13, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v14

    .local v14, "j":I
    :goto_1
    if-ge v13, v14, :cond_4

    .line 138
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v16

    .line 139
    .local v16, "p":Lcom/hcrest/gestures/symbol/Point;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dx:F

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dx:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, v16

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dy:F

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dy:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v7, v0

    .line 140
    .local v7, "d":F
    add-float/2addr v10, v7

    .line 141
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 145
    .end local v7    # "d":F
    .end local v16    # "p":Lcom/hcrest/gestures/symbol/Point;
    :cond_4
    float-to-double v0, v10

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_5

    .line 146
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 150
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->getPatternLength()I

    move-result v19

    .line 151
    .local v19, "patternSize":I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 152
    .local v17, "pattern":[I
    const/16 v18, 0x0

    .line 154
    .local v18, "patternIndex":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v9, v10, v20

    .line 157
    .local v9, "dist_avg":F
    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v14

    :goto_2
    if-ge v13, v14, :cond_7

    .line 158
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v16

    .line 159
    .restart local v16    # "p":Lcom/hcrest/gestures/symbol/Point;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dx:F

    move/from16 v20, v0

    add-float v3, v3, v20

    .line 160
    move-object/from16 v0, v16

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dy:F

    move/from16 v20, v0

    add-float v4, v4, v20

    .line 161
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    add-float v2, v2, v20

    .line 163
    :goto_3
    cmpl-float v20, v2, v9

    if-ltz v20, :cond_6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 164
    sub-float v21, v2, v9

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    div-float v5, v21, v20

    .line 165
    .local v5, "alfa":F
    move-object/from16 v0, v16

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dx:F

    move/from16 v20, v0

    mul-float v20, v20, v5

    sub-float v11, v3, v20

    .line 166
    move-object/from16 v0, v16

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dy:F

    move/from16 v20, v0

    mul-float v20, v20, v5

    sub-float v12, v4, v20

    .line 167
    invoke-static {v12, v11}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->deltaToVector(FF)I

    move-result v6

    .line 168
    .local v6, "curvalue":I
    aput v6, v17, v18

    .line 169
    add-int/lit8 v18, v18, 0x1

    .line 170
    sub-float/2addr v2, v9

    .line 171
    move-object/from16 v0, v16

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dx:F

    move/from16 v20, v0

    mul-float v3, v5, v20

    .line 172
    move-object/from16 v0, v16

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dy:F

    move/from16 v20, v0

    mul-float v4, v5, v20

    goto :goto_3

    .line 157
    .end local v5    # "alfa":F
    .end local v6    # "curvalue":I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 177
    .end local v16    # "p":Lcom/hcrest/gestures/symbol/Point;
    :cond_7
    const/16 v20, 0x0

    cmpl-float v20, v2, v20

    if-lez v20, :cond_8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 178
    invoke-static {v12, v11}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->deltaToVector(FF)I

    move-result v6

    .line 179
    .restart local v6    # "curvalue":I
    aput v6, v17, v18

    .line 180
    add-int/lit8 v18, v18, 0x1

    .line 183
    .end local v6    # "curvalue":I
    :cond_8
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 185
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 188
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;->mPatterns:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    const/16 v20, 0x1

    goto/16 :goto_0
.end method
