.class public Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;
.super Lcom/hcrest/sensors/AbstractMotionDetector;
.source "CursorSymbolDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$1;,
        Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$ResultOrderComparator;,
        Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hcrest/sensors/AbstractMotionDetector",
        "<",
        "Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentPath:Lcom/hcrest/gestures/symbol/PathSegment;

.field private mCursorSymbolEventListener:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEventListener;

.field private mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hcrest/gestures/symbol/PathSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mPos:[F

.field private mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

.field private tracing:Z


# direct methods
.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;)V
    .locals 1
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;

    .prologue
    .line 185
    new-instance v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;

    invoke-direct {v0}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;)V
    .locals 1
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;
    .param p2, "config"    # Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->tracing:Z

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPos:[F

    .line 177
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPathList:Ljava/util/List;

    .line 197
    return-void

    .line 165
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public beginTracePath()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->beginTracePath(Z)V

    .line 241
    return-void
.end method

.method public beginTracePath(Z)V
    .locals 4
    .param p1, "appendToExisting"    # Z

    .prologue
    const/4 v3, 0x1

    .line 252
    iget-boolean v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->tracing:Z

    if-ne v0, v3, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->endTracePath()V

    .line 256
    :cond_0
    iput-boolean v3, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->tracing:Z

    .line 258
    new-instance v0, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v0}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mCurrentPath:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 260
    if-eqz p1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mCurrentPath:Lcom/hcrest/gestures/symbol/PathSegment;

    iget-object v1, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPos:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPos:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/gestures/symbol/PathSegment;->moveTo(FF)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public beginTracePath(ZFF)V
    .locals 2
    .param p1, "appendToExisting"    # Z
    .param p2, "absoluteX"    # F
    .param p3, "absoluteY"    # F

    .prologue
    .line 279
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPos:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 280
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPos:[F

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 281
    invoke-virtual {p0, p1}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->beginTracePath(Z)V

    .line 282
    return-void
.end method

.method public endTracePath()V
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->tracing:Z

    .line 290
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mCurrentPath:Lcom/hcrest/gestures/symbol/PathSegment;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPathList:Ljava/util/List;

    iget-object v1, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mCurrentPath:Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    return-void
.end method

.method public getPath()Lcom/hcrest/gestures/symbol/PathSegment;
    .locals 6

    .prologue
    .line 302
    new-instance v2, Lcom/hcrest/gestures/symbol/Path;

    invoke-direct {v2}, Lcom/hcrest/gestures/symbol/Path;-><init>()V

    .line 303
    .local v2, "path":Lcom/hcrest/gestures/symbol/Path;
    const/4 v0, 0x0

    .line 304
    .local v0, "appendAsDeltas":Z
    invoke-virtual {p0}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;

    move-result-object v4

    check-cast v4, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;

    iget-object v4, v4, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeStrategy:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    sget-object v5, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;->IGNORE_POSITION:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    if-ne v4, v5, :cond_0

    .line 305
    const/4 v0, 0x1

    .line 307
    :cond_0
    iget-object v4, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPathList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/gestures/symbol/PathSegment;

    .line 308
    .local v3, "segment":Lcom/hcrest/gestures/symbol/PathSegment;
    invoke-virtual {v2, v3, v0}, Lcom/hcrest/gestures/symbol/Path;->addSegment(Lcom/hcrest/gestures/symbol/PathSegment;Z)V

    goto :goto_0

    .line 310
    .end local v3    # "segment":Lcom/hcrest/gestures/symbol/PathSegment;
    :cond_1
    return-object v2
.end method

.method public getSensorTypes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lcom/hcrest/sensors/SensorType;->RELATIVE_CURSOR:Lcom/hcrest/sensors/SensorType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolLibrary()Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    return-object v0
.end method

.method public isTracingPath()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->tracing:Z

    return v0
.end method

.method public onSensorData(Lcom/hcrest/sensors/SensorData;)V
    .locals 5
    .param p1, "sensorData"    # Lcom/hcrest/sensors/SensorData;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 429
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPos:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getRelativeCursorPosition()[F

    move-result-object v2

    aget v2, v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 430
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPos:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getRelativeCursorPosition()[F

    move-result-object v2

    aget v2, v2, v4

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 432
    iget-boolean v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->tracing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mCurrentPath:Lcom/hcrest/gestures/symbol/PathSegment;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mCurrentPath:Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getRelativeCursorPosition()[F

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getRelativeCursorPosition()[F

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/gestures/symbol/PathSegment;->moveBy(FF)V

    .line 436
    :cond_0
    return-void
.end method

.method public processPath()Z
    .locals 18

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPathList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 330
    const/4 v14, 0x0

    .line 423
    :goto_0
    return v14

    .line 333
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    if-nez v14, :cond_1

    .line 334
    const/4 v14, 0x0

    goto :goto_0

    .line 339
    :cond_1
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 343
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Lcom/hcrest/gestures/symbol/SymbolGestureResult;>;"
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 344
    .local v13, "workingSet":Ljava/util/List;, "Ljava/util/List<Lcom/hcrest/gestures/symbol/PathSegment;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPathList:Ljava/util/List;

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_b

    .line 352
    const/4 v6, 0x0

    .line 353
    .local v6, "p1":Lcom/hcrest/gestures/symbol/PathSegment;
    const/4 v5, 0x0

    .line 354
    .local v5, "match":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 355
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/PathSegment;>;"
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 356
    if-nez v6, :cond_4

    .line 357
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "p1":Lcom/hcrest/gestures/symbol/PathSegment;
    check-cast v6, Lcom/hcrest/gestures/symbol/PathSegment;

    .line 358
    .restart local v6    # "p1":Lcom/hcrest/gestures/symbol/PathSegment;
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 361
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hcrest/gestures/symbol/PathSegment;

    .line 363
    .local v8, "p2":Lcom/hcrest/gestures/symbol/PathSegment;
    invoke-virtual {v6, v8}, Lcom/hcrest/gestures/symbol/PathSegment;->distance(Lcom/hcrest/gestures/symbol/PathSegment;)F

    move-result v3

    .line 364
    .local v3, "distance":F
    invoke-virtual/range {p0 .. p0}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;

    move-result-object v14

    check-cast v14, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;

    iget v14, v14, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->maxSegmentDistance:F

    cmpg-float v14, v3, v14

    if-gtz v14, :cond_3

    .line 365
    new-instance v10, Lcom/hcrest/gestures/symbol/Path;

    invoke-direct {v10}, Lcom/hcrest/gestures/symbol/Path;-><init>()V

    .line 366
    .local v10, "pOut":Lcom/hcrest/gestures/symbol/Path;
    const/4 v2, 0x0

    .line 367
    .local v2, "appendAsDeltas":Z
    invoke-virtual/range {p0 .. p0}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;

    move-result-object v14

    check-cast v14, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;

    iget-object v14, v14, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeStrategy:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    sget-object v15, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;->IGNORE_POSITION:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    if-ne v14, v15, :cond_5

    .line 368
    const/4 v2, 0x1

    .line 370
    :cond_5
    invoke-virtual {v10, v6, v2}, Lcom/hcrest/gestures/symbol/Path;->addSegment(Lcom/hcrest/gestures/symbol/PathSegment;Z)V

    .line 371
    invoke-virtual {v10, v8, v2}, Lcom/hcrest/gestures/symbol/Path;->addSegment(Lcom/hcrest/gestures/symbol/PathSegment;Z)V

    .line 373
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;

    move-result-object v14

    check-cast v14, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;

    iget v14, v14, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->intersectDistance:F

    cmpg-float v14, v3, v14

    if-gez v14, :cond_7

    .line 375
    :cond_6
    move-object v6, v10

    .line 376
    const/4 v5, 0x0

    .line 377
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 378
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_2

    .line 380
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    invoke-virtual {v14, v10}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchSymbol(Lcom/hcrest/gestures/symbol/PathSegment;)Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    move-result-object v11

    .line 382
    .local v11, "pOutMatch":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    invoke-virtual {v11}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->hasMatch()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    invoke-virtual {v14, v6}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchSymbol(Lcom/hcrest/gestures/symbol/PathSegment;)Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    move-result-object v7

    .line 385
    .local v7, "p1Match":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    invoke-virtual {v14, v8}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchSymbol(Lcom/hcrest/gestures/symbol/PathSegment;)Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    move-result-object v9

    .line 388
    .local v9, "p2Match":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    invoke-virtual {v11}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getPercentMatch()D

    move-result-wide v14

    invoke-virtual {v7}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getPercentMatch()D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-gtz v14, :cond_8

    invoke-virtual {v11}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getPercentMatch()D

    move-result-wide v14

    invoke-virtual {v9}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getPercentMatch()D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-gtz v14, :cond_8

    invoke-virtual {v11}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getPercentMatch()D

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;

    move-result-object v14

    check-cast v14, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;

    iget-wide v14, v14, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetectorConfig;->multiStrokeConversionPercentMatch:D

    cmpl-double v14, v16, v14

    if-lez v14, :cond_3

    invoke-virtual {v7}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getPattern()[I

    move-result-object v14

    invoke-static {v14}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->isStraightLine([I)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v9}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getPattern()[I

    move-result-object v14

    invoke-static {v14}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->isStraightLine([I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 398
    :cond_8
    move-object v6, v10

    .line 399
    move-object v5, v11

    .line 400
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 401
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto/16 :goto_2

    .line 407
    .end local v2    # "appendAsDeltas":Z
    .end local v3    # "distance":F
    .end local v7    # "p1Match":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    .end local v8    # "p2":Lcom/hcrest/gestures/symbol/PathSegment;
    .end local v9    # "p2Match":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    .end local v10    # "pOut":Lcom/hcrest/gestures/symbol/Path;
    .end local v11    # "pOutMatch":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    :cond_9
    if-eqz v5, :cond_a

    .line 408
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 409
    :cond_a
    if-eqz v6, :cond_2

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    invoke-virtual {v14, v6}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchSymbol(Lcom/hcrest/gestures/symbol/PathSegment;)Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 417
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/hcrest/gestures/symbol/PathSegment;>;"
    .end local v5    # "match":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    .end local v6    # "p1":Lcom/hcrest/gestures/symbol/PathSegment;
    :cond_b
    new-instance v14, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$ResultOrderComparator;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$ResultOrderComparator;-><init>(Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$1;)V

    invoke-static {v12, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mCursorSymbolEventListener:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEventListener;

    if-eqz v14, :cond_c

    .line 420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mCursorSymbolEventListener:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEventListener;

    new-instance v15, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEvent;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEvent;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {v14, v15}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEventListener;->onCursorSymbolEvent(Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEvent;)V

    .line 423
    :cond_c
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mCurrentPath:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 231
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPathList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    :cond_0
    return-void
.end method

.method public setCursorSymbolEventListener(Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEventListener;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mCursorSymbolEventListener:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolEventListener;

    .line 445
    return-void
.end method

.method public setSymbolLibrary(Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;)V
    .locals 0
    .param p1, "library"    # Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;->mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    .line 206
    return-void
.end method
