.class public Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;
.super Ljava/lang/Object;
.source "SymbolGestureLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;
    }
.end annotation


# static fields
.field protected static final DEFAULT_PATTERN_LENGTH:I = 0x18

.field protected static final DELETE_INSERT_COST:D = 1.0

.field protected static final FIRSTPOINT_PRECISION:D = 8.0

.field protected static final FIRSTPOINT_PRECISION_SQ:D = 64.0

.field protected static final INIT_COST:D = 100000.0

.field protected static final MAX_PATH_LENGTH:D = 625.0

.field protected static final MINIMUM_EDIT_DISTANCE_NEW_SYMBOL:D = 0.25

.field protected static final MIN_PATH_AREA:I = 0x9c40

.field protected static final MIN_PATH_LENGTH:I = 0x4

.field protected static final NUM_PARTITIONS:I = 0x8

.field protected static final PARTITION:D = 0.7853981633974483

.field protected static final PRECISION:D = 8.0

.field protected static final PRECISION_SQ:D = 64.0

.field protected static final SUBSTITUTE_COST:D = 1.0


# instance fields
.field private mPatternLength:I

.field protected mSymbolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/gestures/symbol/SymbolGesture;",
            ">;"
        }
    .end annotation
.end field

.field protected mSymbolNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mPatternLength:I

    .line 149
    sget-object v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->DEFAULT_STRATEGY:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/gestures/symbol/SymbolGesture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "symbolList":Ljava/util/List;, "Ljava/util/List<Lcom/hcrest/gestures/symbol/SymbolGesture;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    .line 132
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    .line 140
    const/4 v3, -0x1

    iput v3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mPatternLength:I

    .line 149
    sget-object v3, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->DEFAULT_STRATEGY:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    iput-object v3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    .line 166
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 167
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    .line 168
    iget-object v3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcrest/gestures/symbol/SymbolGesture;

    .line 169
    .local v2, "symbol":Lcom/hcrest/gestures/symbol/SymbolGesture;
    const/4 v0, 0x0

    .line 170
    .local v0, "count":I
    iget-object v3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    .end local v0    # "count":I
    .end local v2    # "symbol":Lcom/hcrest/gestures/symbol/SymbolGesture;
    :cond_1
    iget-object v3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/gestures/symbol/SymbolGesture;

    invoke-virtual {v3}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getPattern()[I

    move-result-object v3

    array-length v3, v3

    iput v3, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mPatternLength:I

    .line 177
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public static computeEditDistance([I[I)D
    .locals 28
    .param p0, "actualPattern"    # [I
    .param p1, "idealPattern"    # [I

    .prologue
    .line 711
    move-object/from16 v0, p0

    array-length v4, v0

    .line 712
    .local v4, "actualLength":I
    move-object/from16 v0, p1

    array-length v13, v0

    .line 714
    .local v13, "idealLength":I
    if-nez v4, :cond_0

    .line 715
    const-wide v22, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 761
    :goto_0
    return-wide v22

    .line 718
    :cond_0
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 719
    .local v16, "insert_cost":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 721
    .local v8, "delete_cost":D
    if-ge v13, v4, :cond_1

    .line 723
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    sub-int v19, v13, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v8, v22, v24

    .line 726
    :cond_1
    if-le v13, v4, :cond_2

    .line 728
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    sub-int v19, v13, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v16, v22, v24

    .line 731
    :cond_2
    add-int/lit8 v19, v13, 0x1

    add-int/lit8 v22, v4, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    filled-new-array {v0, v1}, [I

    move-result-object v19

    sget-object v22, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[F

    .line 732
    .local v10, "dist":[[F
    add-int/lit8 v19, v13, 0x1

    add-int/lit8 v22, v4, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    filled-new-array {v0, v1}, [I

    move-result-object v19

    sget-object v22, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 733
    .local v5, "costArray":[[D
    const/16 v19, 0x0

    aget-object v19, v5, v19

    const/16 v22, 0x0

    const-wide/16 v24, 0x0

    aput-wide v24, v19, v22

    .line 734
    const/16 v19, 0x0

    aget-object v19, v10, v19

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v19, v22

    .line 736
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    if-gt v12, v13, :cond_6

    .line 737
    aget-object v19, v10, v12

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v19, v22

    .line 739
    aget-object v19, v5, v12

    const/16 v22, 0x0

    const-wide v24, 0x40f86a0000000000L    # 100000.0

    aput-wide v24, v19, v22

    .line 741
    const/16 v18, 0x1

    .local v18, "j":I
    :goto_2
    move/from16 v0, v18

    if-gt v0, v4, :cond_5

    .line 742
    add-int/lit8 v19, v12, -0x1

    aget v19, p1, v19

    add-int/lit8 v22, v18, -0x1

    aget v22, p0, v22

    sub-int v19, v19, v22

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v11, v0

    .line 743
    .local v11, "distance":F
    const/high16 v19, 0x41000000    # 8.0f

    cmpl-float v19, v11, v19

    if-ltz v19, :cond_3

    .line 744
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v22, "SymbolGestureLibrary - distance greater than number of partitions"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 746
    :cond_3
    float-to-double v0, v11

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    cmpl-double v19, v22, v24

    if-lez v19, :cond_4

    .line 747
    const/high16 v19, 0x41000000    # 8.0f

    sub-float v11, v19, v11

    .line 749
    :cond_4
    aget-object v19, v10, v12

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v22, v22, v11

    mul-float v22, v22, v11

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v23, v23, v11

    add-float v22, v22, v23

    aput v22, v19, v18

    .line 751
    const/16 v19, 0x0

    aget-object v19, v5, v19

    const-wide v22, 0x40f86a0000000000L    # 100000.0

    aput-wide v22, v19, v18

    .line 752
    const/16 v19, 0x0

    aget-object v19, v10, v19

    const/16 v22, 0x0

    aput v22, v19, v18

    .line 754
    add-int/lit8 v19, v12, -0x1

    aget-object v19, v5, v19

    aget-wide v22, v19, v18

    aget-object v19, v10, v12

    aget v19, v19, v18

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    add-double v14, v22, v16

    .line 755
    .local v14, "insertCost":D
    aget-object v19, v5, v12

    add-int/lit8 v22, v18, -0x1

    aget-wide v22, v19, v22

    aget-object v19, v10, v12

    aget v19, v19, v18

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    add-double v6, v22, v8

    .line 756
    .local v6, "deleteCost":D
    add-int/lit8 v19, v12, -0x1

    aget-object v19, v5, v19

    add-int/lit8 v22, v18, -0x1

    aget-wide v22, v19, v22

    aget-object v19, v10, v12

    aget v19, v19, v18

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    mul-double v24, v24, v26

    add-double v20, v22, v24

    .line 757
    .local v20, "substitutionCost":D
    aget-object v19, v5, v12

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    aput-wide v22, v19, v18

    .line 741
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 736
    .end local v6    # "deleteCost":D
    .end local v11    # "distance":F
    .end local v14    # "insertCost":D
    .end local v20    # "substitutionCost":D
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 761
    .end local v18    # "j":I
    :cond_6
    aget-object v19, v5, v13

    aget-wide v22, v19, v4

    mul-int/lit8 v19, v13, 0x2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    goto/16 :goto_0
.end method

.method public static deltaToVector(FF)I
    .locals 8
    .param p0, "dx"    # F
    .param p1, "dy"    # F

    .prologue
    .line 597
    float-to-double v4, p1

    float-to-double v6, p0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    add-double v2, v4, v6

    .line 598
    .local v2, "mapAngle":D
    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    div-double v4, v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    .line 599
    .local v0, "code":I
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 600
    const/4 v0, 0x1

    .line 602
    :cond_0
    return v0
.end method

.method public static isStraightLine([I)Z
    .locals 7
    .param p0, "pattern"    # [I

    .prologue
    const/4 v5, 0x0

    .line 688
    const/4 v4, 0x0

    .line 689
    .local v4, "sum":F
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p0

    .local v3, "j":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 690
    aget v6, p0, v2

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 692
    :cond_0
    array-length v6, p0

    int-to-float v6, v6

    div-float v0, v4, v6

    .line 693
    .local v0, "avg":F
    aget v6, p0, v5

    int-to-float v6, v6

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 694
    .local v1, "diff":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method public static normalizePath(Lcom/hcrest/gestures/symbol/PathSegment;)Lcom/hcrest/gestures/symbol/PathSegment;
    .locals 30
    .param p0, "segment"    # Lcom/hcrest/gestures/symbol/PathSegment;

    .prologue
    .line 489
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 490
    .local v18, "position":[F
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v12, v0, [F

    fill-array-data v12, :array_1

    .line 491
    .local v12, "lastSignificantPosition":[F
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_2

    .line 492
    .local v19, "positionDelta":[F
    new-instance v15, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v15}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    .line 496
    .local v15, "normalizedPath":Lcom/hcrest/gestures/symbol/PathSegment;
    invoke-virtual/range {p0 .. p0}, Lcom/hcrest/gestures/symbol/PathSegment;->getRight()F

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/hcrest/gestures/symbol/PathSegment;->getLeft()F

    move-result v27

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/hcrest/gestures/symbol/PathSegment;->getBottom()F

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/hcrest/gestures/symbol/PathSegment;->getTop()F

    move-result v28

    sub-float v27, v27, v28

    mul-float v16, v26, v27

    .line 500
    .local v16, "pathArea":F
    invoke-virtual/range {p0 .. p0}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v26

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2

    const v26, 0x471c4000    # 40000.0f

    cmpg-float v26, v16, v26

    if-gez v26, :cond_2

    .line 501
    const v26, 0x471c4000    # 40000.0f

    div-float v22, v26, v16

    .line 502
    .local v22, "scaleFactor":F
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/gestures/symbol/PathSegment;->scale(FZ)Lcom/hcrest/gestures/symbol/PathSegment;

    move-result-object v23

    .line 518
    .end local v22    # "scaleFactor":F
    .local v23, "workPath":Lcom/hcrest/gestures/symbol/PathSegment;
    :goto_0
    const-wide/high16 v20, 0x4050000000000000L    # 64.0

    .line 519
    .local v20, "precisionSq":D
    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    .line 530
    .local v8, "firstPointPrecisionSq":D
    invoke-virtual/range {v23 .. v23}, Lcom/hcrest/gestures/symbol/PathSegment;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/hcrest/gestures/symbol/Point;

    .line 531
    .local v17, "point":Lcom/hcrest/gestures/symbol/Point;
    invoke-virtual {v15}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v14

    .line 533
    .local v14, "normalizedLength":I
    int-to-double v0, v14

    move-wide/from16 v26, v0

    const-wide v28, 0x4083880000000000L    # 625.0

    cmpl-double v26, v26, v28

    if-ltz v26, :cond_3

    .line 574
    .end local v14    # "normalizedLength":I
    .end local v17    # "point":Lcom/hcrest/gestures/symbol/Point;
    :cond_1
    return-object v15

    .line 504
    .end local v8    # "firstPointPrecisionSq":D
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v20    # "precisionSq":D
    .end local v23    # "workPath":Lcom/hcrest/gestures/symbol/PathSegment;
    :cond_2
    move-object/from16 v23, p0

    .restart local v23    # "workPath":Lcom/hcrest/gestures/symbol/PathSegment;
    goto :goto_0

    .line 539
    .restart local v8    # "firstPointPrecisionSq":D
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v14    # "normalizedLength":I
    .restart local v17    # "point":Lcom/hcrest/gestures/symbol/Point;
    .restart local v20    # "precisionSq":D
    :cond_3
    if-nez v14, :cond_4

    move-wide/from16 v24, v8

    .line 542
    .local v24, "threshold":D
    :goto_1
    const/16 v26, 0x0

    aget v27, v18, v26

    move-object/from16 v0, v17

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dx:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v18, v26

    .line 543
    const/16 v26, 0x1

    aget v27, v18, v26

    move-object/from16 v0, v17

    iget v0, v0, Lcom/hcrest/gestures/symbol/Point;->dy:F

    move/from16 v28, v0

    add-float v27, v27, v28

    aput v27, v18, v26

    .line 547
    const/16 v26, 0x0

    const/16 v27, 0x0

    aget v27, v18, v27

    const/16 v28, 0x0

    aget v28, v12, v28

    sub-float v27, v27, v28

    aput v27, v19, v26

    .line 548
    const/16 v26, 0x1

    const/16 v27, 0x1

    aget v27, v18, v27

    const/16 v28, 0x1

    aget v28, v12, v28

    sub-float v27, v27, v28

    aput v27, v19, v26

    .line 550
    const/16 v26, 0x0

    aget v26, v19, v26

    const/16 v27, 0x0

    aget v27, v19, v27

    mul-float v26, v26, v27

    const/16 v27, 0x1

    aget v27, v19, v27

    const/16 v28, 0x1

    aget v28, v19, v28

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v6, v0

    .line 552
    .local v6, "diffSqr":D
    cmpl-double v26, v6, v24

    if-ltz v26, :cond_0

    .line 554
    const/16 v26, 0x0

    const/16 v27, 0x0

    aget v27, v18, v27

    aput v27, v12, v26

    .line 555
    const/16 v26, 0x1

    const/16 v27, 0x1

    aget v27, v18, v27

    aput v27, v12, v26

    .line 559
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    div-double v28, v6, v24

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v11, v0

    .line 560
    .local v11, "k":I
    const/16 v26, 0x0

    aget v26, v19, v26

    int-to-float v0, v11

    move/from16 v27, v0

    div-float v4, v26, v27

    .line 561
    .local v4, "delta_x":F
    const/16 v26, 0x1

    aget v26, v19, v26

    int-to-float v0, v11

    move/from16 v27, v0

    div-float v5, v26, v27

    .line 569
    .local v5, "delta_y":F
    const/4 v13, 0x1

    .local v13, "n":I
    :goto_2
    if-gt v13, v11, :cond_0

    .line 570
    invoke-virtual {v15, v4, v5}, Lcom/hcrest/gestures/symbol/PathSegment;->moveBy(FF)V

    .line 569
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v4    # "delta_x":F
    .end local v5    # "delta_y":F
    .end local v6    # "diffSqr":D
    .end local v11    # "k":I
    .end local v13    # "n":I
    .end local v24    # "threshold":D
    :cond_4
    move-wide/from16 v24, v20

    .line 539
    goto/16 :goto_1

    .line 489
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 490
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 491
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static pathToPattern(Lcom/hcrest/gestures/symbol/PathSegment;I)[I
    .locals 15
    .param p0, "path"    # Lcom/hcrest/gestures/symbol/PathSegment;
    .param p1, "patternSize"    # I

    .prologue
    .line 619
    mul-int/lit8 v14, p1, 0x3

    div-int/lit8 v9, v14, 0x4

    .line 620
    .local v9, "minEffectLength":I
    mul-int/lit8 v14, p1, 0x3

    div-int/lit8 v8, v14, 0x2

    .line 622
    .local v8, "maxEffectLength":I
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/PathSegment;->size()I

    move-result v10

    .line 624
    .local v10, "pathLength":I
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 626
    .local v12, "patternList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move v3, v10

    .line 627
    .local v3, "currentLength":I
    const/4 v7, 0x1

    .line 628
    .local v7, "k":I
    if-ge v10, v9, :cond_2

    const/4 v14, 0x4

    if-lt v10, v14, :cond_2

    .line 629
    :goto_0
    if-gt v3, v9, :cond_0

    .line 630
    add-int/lit8 v7, v7, 0x1

    .line 631
    mul-int v3, v10, v7

    goto :goto_0

    .line 634
    :cond_0
    const/4 v2, 0x0

    .line 635
    .local v2, "code":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v10, :cond_6

    .line 636
    invoke-virtual {p0, v4}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v14

    invoke-static {v14}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->pointToVector(Lcom/hcrest/gestures/symbol/Point;)I

    move-result v2

    .line 637
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v7, :cond_1

    .line 638
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 635
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 641
    .end local v2    # "code":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    :cond_2
    if-le v10, v8, :cond_5

    .line 643
    div-int v14, v10, p1

    sub-int/2addr v10, v14

    .line 646
    shr-int/lit8 v14, p1, 0x1

    add-int/2addr v14, v10

    div-int v7, v14, p1

    .line 647
    add-int v14, v10, v7

    add-int/lit8 v14, v14, -0x1

    div-int v3, v14, v7

    .line 649
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v10, :cond_6

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, "accumX":F
    const/4 v1, 0x0

    .line 652
    .local v1, "accumY":F
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    if-ge v6, v7, :cond_3

    .line 653
    add-int v14, v4, v6

    if-lt v14, v10, :cond_4

    .line 660
    :cond_3
    invoke-static {v0, v1}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->deltaToVector(FF)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    add-int/2addr v4, v7

    goto :goto_3

    .line 656
    :cond_4
    add-int v14, v4, v6

    invoke-virtual {p0, v14}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v14

    iget v14, v14, Lcom/hcrest/gestures/symbol/Point;->dx:F

    add-float/2addr v0, v14

    .line 657
    add-int v14, v4, v6

    invoke-virtual {p0, v14}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v14

    iget v14, v14, Lcom/hcrest/gestures/symbol/Point;->dy:F

    add-float/2addr v1, v14

    .line 652
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 665
    .end local v0    # "accumX":F
    .end local v1    # "accumY":F
    .end local v4    # "i":I
    .end local v6    # "j":I
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    if-ge v4, v10, :cond_6

    .line 666
    invoke-virtual {p0, v4}, Lcom/hcrest/gestures/symbol/PathSegment;->getPoint(I)Lcom/hcrest/gestures/symbol/Point;

    move-result-object v14

    invoke-static {v14}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->pointToVector(Lcom/hcrest/gestures/symbol/Point;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 671
    :cond_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    new-array v11, v14, [I

    .line 672
    .local v11, "pattern":[I
    const/4 v4, 0x0

    .line 673
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 674
    .local v13, "vector":Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v11, v4

    .line 675
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 677
    .end local v13    # "vector":Ljava/lang/Integer;
    :cond_7
    return-object v11
.end method

.method public static pointToVector(Lcom/hcrest/gestures/symbol/Point;)I
    .locals 2
    .param p0, "point"    # Lcom/hcrest/gestures/symbol/Point;

    .prologue
    .line 585
    iget v0, p0, Lcom/hcrest/gestures/symbol/Point;->dx:F

    iget v1, p0, Lcom/hcrest/gestures/symbol/Point;->dy:F

    invoke-static {v0, v1}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->deltaToVector(FF)I

    move-result v0

    return v0
.end method

.method public static readSymbolFile(Ljava/io/InputStream;)Ljava/util/List;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/gestures/symbol/SymbolGesture;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v3, "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/hcrest/gestures/symbol/SymbolGesture;>;"
    if-nez p0, :cond_0

    .line 249
    :goto_0
    return-object v3

    .line 231
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 232
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 233
    .local v5, "line":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 234
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 237
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "gestDef":[Ljava/lang/String;
    array-length v7, v2

    add-int/lit8 v7, v7, -0x2

    new-array v6, v7, [I

    .line 239
    .local v6, "pattern":[I
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_2
    array-length v7, v2

    if-ge v4, v7, :cond_2

    .line 240
    add-int/lit8 v7, v4, -0x2

    aget-object v8, v2, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 242
    :cond_2
    new-instance v1, Lcom/hcrest/gestures/symbol/SymbolGesture;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v1, v7, v8, v6}, Lcom/hcrest/gestures/symbol/SymbolGesture;-><init>(Ljava/lang/String;I[I)V

    .line 243
    .local v1, "g":Lcom/hcrest/gestures/symbol/SymbolGesture;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 246
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "g":Lcom/hcrest/gestures/symbol/SymbolGesture;
    .end local v2    # "gestDef":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "pattern":[I
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v7

    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method


# virtual methods
.method public addSymbol(Lcom/hcrest/gestures/symbol/SymbolGesture;)Z
    .locals 13
    .param p1, "gesture"    # Lcom/hcrest/gestures/symbol/SymbolGesture;

    .prologue
    const/4 v12, -0x1

    .line 348
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 349
    .local v0, "bestCostRatio":D
    const/4 v7, -0x1

    .line 350
    .local v7, "matchIndex":I
    const/4 v8, 0x0

    .line 352
    .local v8, "status":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    iget-object v9, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 353
    iget-object v9, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hcrest/gestures/symbol/SymbolGesture;

    invoke-virtual {v9}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getPattern()[I

    move-result-object v5

    .line 354
    .local v5, "idealPattern":[I
    invoke-virtual {p1}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getPattern()[I

    move-result-object v9

    invoke-static {v9, v5}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->computeEditDistance([I[I)D

    move-result-wide v2

    .line 356
    .local v2, "costRatio":D
    cmpg-double v9, v2, v0

    if-gez v9, :cond_0

    .line 357
    move-wide v0, v2

    .line 358
    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    cmpg-double v9, v2, v10

    if-gez v9, :cond_0

    .line 359
    move v7, v6

    .line 352
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 364
    .end local v2    # "costRatio":D
    .end local v5    # "idealPattern":[I
    :cond_1
    if-ne v7, v12, :cond_5

    .line 366
    iget-object v9, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 368
    const/4 v4, 0x0

    .line 369
    .local v4, "count":I
    iget-object v9, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 370
    iget-object v9, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 372
    :cond_2
    iget-object v9, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget v9, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mPatternLength:I

    if-ne v9, v12, :cond_3

    .line 375
    invoke-virtual {p1}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getPattern()[I

    move-result-object v9

    array-length v9, v9

    iput v9, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mPatternLength:I

    .line 377
    :cond_3
    const/4 v8, 0x1

    .line 383
    .end local v4    # "count":I
    :cond_4
    :goto_1
    return v8

    .line 380
    :cond_5
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public createSymbolProposal()Lcom/hcrest/gestures/symbol/SymbolGestureProposal;
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;

    invoke-direct {v0, p0}, Lcom/hcrest/gestures/symbol/SymbolGestureProposal;-><init>(Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;)V

    return-object v0
.end method

.method public getPatternLength()I
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mPatternLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x18

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mPatternLength:I

    goto :goto_0
.end method

.method public getSymbolCount()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSymbols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/gestures/symbol/SymbolGesture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    return-object v0
.end method

.method public getUniqueSymbolCount()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getUniqueSymbolNames()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    return-object v0
.end method

.method public loadSymbols(Ljava/io/InputStream;Z)V
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "replaceExisting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {p1}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->readSymbolFile(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    .line 265
    .local v2, "gestures":Ljava/util/List;, "Ljava/util/List<Lcom/hcrest/gestures/symbol/SymbolGesture;>;"
    if-eqz p2, :cond_3

    .line 266
    iput-object v2, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    .line 267
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hcrest/gestures/symbol/SymbolGesture;

    .line 268
    .local v4, "symbol":Lcom/hcrest/gestures/symbol/SymbolGesture;
    const/4 v0, 0x0

    .line 269
    .local v0, "count":I
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    :cond_0
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 274
    .end local v0    # "count":I
    .end local v4    # "symbol":Lcom/hcrest/gestures/symbol/SymbolGesture;
    :cond_1
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 275
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hcrest/gestures/symbol/SymbolGesture;

    invoke-virtual {v5}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getPattern()[I

    move-result-object v5

    array-length v5, v5

    iput v5, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mPatternLength:I

    .line 287
    :cond_2
    return-void

    .line 278
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hcrest/gestures/symbol/SymbolGesture;

    .line 279
    .local v1, "gesture":Lcom/hcrest/gestures/symbol/SymbolGesture;
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const/4 v0, 0x0

    .line 281
    .restart local v0    # "count":I
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 282
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 284
    :cond_4
    iget-object v5, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getName()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public matchSymbol(Lcom/hcrest/gestures/symbol/PathSegment;)Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    .locals 22
    .param p1, "segment"    # Lcom/hcrest/gestures/symbol/PathSegment;

    .prologue
    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/gestures/symbol/PathSegment;->getCachedResult()Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    move-result-object v4

    .line 411
    .local v4, "cachedResult":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getMatchStrategy()Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 473
    .end local v4    # "cachedResult":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    :goto_0
    return-object v4

    .line 415
    .restart local v4    # "cachedResult":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    :cond_0
    const/4 v10, 0x1

    .line 416
    .local v10, "numSegments":I
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/hcrest/gestures/symbol/Path;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, p1

    .line 417
    check-cast v17, Lcom/hcrest/gestures/symbol/Path;

    invoke-virtual/range {v17 .. v17}, Lcom/hcrest/gestures/symbol/Path;->getSegmentCount()I

    move-result v10

    .line 424
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 425
    .local v2, "bestCostRatio":D
    const-wide/16 v14, 0x0

    .line 428
    .local v14, "percentMatch":D
    invoke-static/range {p1 .. p1}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->normalizePath(Lcom/hcrest/gestures/symbol/PathSegment;)Lcom/hcrest/gestures/symbol/PathSegment;

    move-result-object v9

    .line 431
    .local v9, "normalizedPath":Lcom/hcrest/gestures/symbol/PathSegment;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mPatternLength:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v12, 0x18

    .line 432
    .local v12, "patternSize":I
    :goto_1
    invoke-static {v9, v12}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->pathToPattern(Lcom/hcrest/gestures/symbol/PathSegment;I)[I

    move-result-object v11

    .line 434
    .local v11, "pattern":[I
    new-instance v13, Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v13, v0, v9, v11, v1}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;-><init>(Lcom/hcrest/gestures/symbol/PathSegment;Lcom/hcrest/gestures/symbol/PathSegment;[ILcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;)V

    .line 437
    .local v13, "result":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    array-length v0, v11

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mSymbolList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/hcrest/gestures/symbol/SymbolGesture;

    .line 443
    .local v16, "symbol":Lcom/hcrest/gestures/symbol/SymbolGesture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->getMatchSegmentCount()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getNumSegments()I

    move-result v17

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    .line 447
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/hcrest/gestures/symbol/SymbolGesture;->getPattern()[I

    move-result-object v8

    .line 448
    .local v8, "idealPattern":[I
    invoke-static {v11, v8}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->computeEditDistance([I[I)D

    move-result-wide v6

    .line 450
    .local v6, "costRatio":D
    cmpg-double v17, v6, v2

    if-gez v17, :cond_2

    .line 451
    move-wide v2, v6

    .line 452
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v14, v18, v2

    .line 453
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->getMinimumPercentMatch()D

    move-result-wide v20

    sub-double v18, v18, v20

    cmpg-double v17, v6, v18

    if-gez v17, :cond_2

    .line 455
    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->addMatch(Lcom/hcrest/gestures/symbol/SymbolGesture;D)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->getType()Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    move-result-object v17

    sget-object v18, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->FIRST_MATCH:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 471
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "costRatio":D
    .end local v8    # "idealPattern":[I
    .end local v16    # "symbol":Lcom/hcrest/gestures/symbol/SymbolGesture;
    :cond_4
    :goto_2
    invoke-virtual {v13, v14, v15}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->setPercentMatch(D)V

    .line 472
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/hcrest/gestures/symbol/PathSegment;->setCachedResult(Lcom/hcrest/gestures/symbol/SymbolGestureResult;)V

    move-object v4, v13

    .line 473
    goto/16 :goto_0

    .line 431
    .end local v11    # "pattern":[I
    .end local v12    # "patternSize":I
    .end local v13    # "result":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->mPatternLength:I

    goto/16 :goto_1

    .line 461
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "costRatio":D
    .restart local v8    # "idealPattern":[I
    .restart local v11    # "pattern":[I
    .restart local v12    # "patternSize":I
    .restart local v13    # "result":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    .restart local v16    # "symbol":Lcom/hcrest/gestures/symbol/SymbolGesture;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->getType()Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    move-result-object v17

    sget-object v18, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->HIGH_THRESHOLD:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 462
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;->getHighPercentMatchThreshold()D

    move-result-wide v20

    sub-double v18, v18, v20

    cmpg-double v17, v6, v18

    if-gez v17, :cond_2

    goto :goto_2
.end method

.method public setMatchStrategy(Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;)V
    .locals 0
    .param p1, "matchStrategy"    # Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchStrategy:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;

    .line 187
    return-void
.end method
