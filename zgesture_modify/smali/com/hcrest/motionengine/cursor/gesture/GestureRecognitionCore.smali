.class public Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;
.super Ljava/lang/Object;
.source "GestureRecognitionCore.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CAPTURING:B = -0x2t

.field private static final CONSISTENT_PERCENT:D = 66.0

.field public static final CURSOR_CONTROL:Ljava/lang/String; = "Enable Cursor Control"

.field private static final DELETE_INSERT_COST:D = 1.0

.field private static final FIRSTPOINT_PRECISION:B = 0x28t

.field private static final GESTURE_STATUS:[Ljava/lang/String;

.field private static final IDLE:B = 0x0t

.field private static final INIT_COST:I = 0x186a0

.field public static final LEARNING_PROPERTY:Ljava/lang/String; = "Learning"

.field private static final MATCHED:B = -0x5t

.field private static final MAX_ALLOWED_COST_RATIO:D = 0.5

.field private static final MAX_ALLOWED_COST_RATIO_LEARNING:D = 0.25

.field private static final MAX_NUM_TRACE_PERINPUT:I = 0x64

.field private static final MAX_TRACE_LENGTH:D = 5000.0

.field private static final MAX_TRACE_TIME_SEC:D = 10.0

.field private static final MIN_ALLOWED_POINTS:B = 0x4t

.field private static final MIN_TRACE_LENGTH:D = 100.0

.field private static final NO_MATCHED:B = -0x4t

.field private static final NUM_PARTITIONS:B = 0x8t

.field private static final PARTITION:D = 0.7853981633974483

.field private static final PI:D = 3.1415926

.field private static final PRECISION:B = 0x8t

.field private static final PRECISION_SQ:D = 64.0

.field private static final START_CAPTURE:B = -0x1t

.field private static final STATE_RELAY_TIME:I = 0x3e

.field public static final STATUS_PROPERTY:Ljava/lang/String; = "Status"

.field private static final STOP_CAPTURE:B = -0x3t

.field private static final SUBSTITUTE_COST:D = 1.0

.field private static final XML_FILENAME:Ljava/lang/String; = "GesturePatterns.xml"


# instance fields
.field private accumDeltaPosX_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private accumDeltaPosY_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private actualGestureCode_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private deltaPosX_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private deltaPosY_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private gestureEndTime_:J

.field private gestureFull_:I

.field private gestureLength_:I

.field private gesturePos_:[J

.field private gestureStartTime_:J

.field private gestures_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hcrest/motionengine/cursor/gesture/Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private lastCodeBit_:F

.field private lastGesturePos_:[J

.field private learnedGestureCodesAvg_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private learnedGestureCodesDraft_:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private learnedGestureName_:Ljava/lang/String;

.field private learnedGesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

.field private learningMode_:Z

.field private final log_:Ljava/util/logging/Logger;

.field private mouseTraceX_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mouseTraceY_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private numLearnedGesture_:I

.field private numUserAddedCode_:I

.field samplePeriodms_:D

.field private stateRelay_:I

.field private state_:B

.field private wasCapturing_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "START CAPTURE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CAPTURING"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "STOP CAPTURE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "NOT MATCHED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MATCHED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->GESTURE_STATUS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x64

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v1, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->actualGestureCode_:Ljava/util/ArrayList;

    .line 75
    new-array v1, v3, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gesturePos_:[J

    .line 76
    new-array v1, v3, [J

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->lastGesturePos_:[J

    .line 77
    iput-byte v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    .line 78
    iput-boolean v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->wasCapturing_:Z

    .line 79
    iput v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->stateRelay_:I

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->lastCodeBit_:F

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->mouseTraceX_:Ljava/util/ArrayList;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->mouseTraceY_:Ljava/util/ArrayList;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosX_:Ljava/util/ArrayList;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosY_:Ljava/util/ArrayList;

    .line 86
    iput v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    .line 87
    iput v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureFull_:I

    .line 88
    iput-boolean v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learningMode_:Z

    .line 89
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    iput-wide v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->samplePeriodms_:D

    .line 97
    iput-object v5, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureName_:Ljava/lang/String;

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->deltaPosX_:Ljava/util/ArrayList;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->deltaPosY_:Ljava/util/ArrayList;

    .line 102
    new-array v1, v4, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesDraft_:[Ljava/util/ArrayList;

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 104
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesDraft_:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesAvg_:Ljava/util/ArrayList;

    .line 108
    iput-object v5, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    return-void

    .line 75
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 76
    :array_1
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private codeFromDeltaPos(DD)F
    .locals 9
    .param p1, "y"    # D
    .param p3, "x"    # D

    .prologue
    .line 256
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v6, 0x400921fb4d12d84aL    # 3.1415926

    add-double v2, v4, v6

    .line 257
    .local v2, "mapAngle":D
    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    div-double v4, v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-float v0, v4

    .line 258
    .local v0, "code":F
    const/high16 v1, 0x41100000    # 9.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 259
    const/high16 v0, 0x3f800000    # 1.0f

    .line 261
    :cond_0
    return v0
.end method

.method private costProcess(Ljava/util/ArrayList;Ljava/util/ArrayList;)D
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, "actualGestureCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p2, "idealGestureCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    iget v13, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    .line 477
    .local v13, "idealLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 479
    .local v4, "actualLength":I
    if-nez v4, :cond_0

    .line 480
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    .line 527
    :goto_0
    return-wide v22

    .line 483
    :cond_0
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 484
    .local v16, "insert_cost":D
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 486
    .local v8, "delete_cost":D
    if-ge v13, v4, :cond_1

    .line 487
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    sub-int v19, v13, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v8, v22, v24

    .line 490
    :cond_1
    if-le v13, v4, :cond_2

    .line 491
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    sub-int v19, v13, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v16, v22, v24

    .line 494
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

    .line 495
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

    .line 496
    .local v5, "costArray":[[D
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    if-gt v12, v13, :cond_6

    .line 497
    const/16 v18, 0x1

    .local v18, "j":I
    :goto_2
    move/from16 v0, v18

    if-gt v0, v4, :cond_5

    .line 498
    add-int/lit8 v19, v12, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v22

    add-int/lit8 v19, v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    sub-float v19, v22, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 499
    .local v11, "distance":F
    const/high16 v19, 0x41000000    # 8.0f

    cmpl-float v19, v11, v19

    if-ltz v19, :cond_3

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    const-string v22, "error"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 502
    :cond_3
    float-to-double v0, v11

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4010000000000000L    # 4.0

    cmpl-double v19, v22, v24

    if-lez v19, :cond_4

    .line 503
    const/high16 v19, 0x41000000    # 8.0f

    sub-float v11, v19, v11

    .line 505
    :cond_4
    aget-object v19, v10, v12

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v22, v22, v11

    mul-float v22, v22, v11

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v23, v23, v11

    add-float v22, v22, v23

    aput v22, v19, v18

    .line 497
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 507
    .end local v11    # "distance":F
    :cond_5
    aget-object v19, v10, v12

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v19, v22

    .line 509
    aget-object v19, v5, v12

    const/16 v22, 0x0

    const-wide v24, 0x40f86a0000000000L    # 100000.0

    aput-wide v24, v19, v22

    .line 496
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 513
    .end local v18    # "j":I
    :cond_6
    const/16 v18, 0x1

    .restart local v18    # "j":I
    :goto_3
    move/from16 v0, v18

    if-gt v0, v4, :cond_7

    .line 514
    const/16 v19, 0x0

    aget-object v19, v5, v19

    const-wide v22, 0x40f86a0000000000L    # 100000.0

    aput-wide v22, v19, v18

    .line 515
    const/16 v19, 0x0

    aget-object v19, v10, v19

    const/16 v22, 0x0

    aput v22, v19, v18

    .line 513
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 517
    :cond_7
    const/16 v19, 0x0

    aget-object v19, v5, v19

    const/16 v22, 0x0

    const-wide/16 v24, 0x0

    aput-wide v24, v19, v22

    .line 518
    const/16 v19, 0x0

    aget-object v19, v10, v19

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v19, v22

    .line 519
    const/4 v12, 0x1

    :goto_4
    if-gt v12, v13, :cond_9

    .line 520
    const/16 v18, 0x1

    :goto_5
    move/from16 v0, v18

    if-gt v0, v4, :cond_8

    .line 521
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

    .line 522
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

    .line 523
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

    .line 524
    .local v20, "substitutionCost":D
    aget-object v19, v5, v12

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    aput-wide v22, v19, v18

    .line 520
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 519
    .end local v6    # "deleteCost":D
    .end local v14    # "insertCost":D
    .end local v20    # "substitutionCost":D
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 527
    :cond_9
    aget-object v19, v5, v13

    aget-wide v22, v19, v4

    mul-int/lit8 v19, v13, 0x2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    goto/16 :goto_0
.end method

.method private createGestureCode(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, "deltaPosX_":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "deltaPosY_":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "code":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v12, "dist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v14, 0x0

    .line 561
    .local v14, "dist_total":F
    const/4 v7, 0x0

    .local v7, "accm_x":F
    const/4 v8, 0x0

    .local v8, "accm_y":F
    const/4 v6, 0x0

    .line 562
    .local v6, "accm_d":F
    const/4 v15, 0x0

    .local v15, "dx":F
    const/16 v16, 0x0

    .line 563
    .local v16, "dy":F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 565
    .local v19, "traceLength":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 566
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    mul-int v21, v21, v20

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    mul-int v20, v20, v22

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v11, v0

    .line 567
    .local v11, "d":F
    add-float/2addr v14, v11

    .line 568
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 571
    .end local v11    # "d":F
    :cond_0
    float-to-double v0, v14

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_1

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    move-object/from16 v20, v0

    const-string v21, "Trace not long enough!"

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 573
    const/16 v20, 0x0

    .line 607
    :goto_1
    return v20

    .line 576
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v13, v14, v20

    .line 577
    .local v13, "dist_avg":F
    const/16 v18, 0x0

    .line 580
    .local v18, "k":I
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 581
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v7, v7, v20

    .line 582
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v8, v8, v20

    .line 583
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    add-float v6, v6, v20

    .line 585
    :goto_3
    cmpl-float v20, v6, v13

    if-ltz v20, :cond_2

    .line 586
    sub-float v21, v6, v13

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    div-float v9, v21, v20

    .line 587
    .local v9, "alfa":F
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v9

    sub-float v15, v7, v20

    .line 588
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v9

    sub-float v16, v8, v20

    .line 589
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v20, v0

    float-to-double v0, v15

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->codeFromDeltaPos(DD)F

    move-result v10

    .line 590
    .local v10, "curvalue":F
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    add-int/lit8 v18, v18, 0x1

    .line 592
    sub-float/2addr v6, v13

    .line 593
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v7, v9, v20

    .line 594
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v8, v9, v20

    goto/16 :goto_3

    .line 580
    .end local v9    # "alfa":F
    .end local v10    # "curvalue":F
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 599
    :cond_3
    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-lez v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 600
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v20, v0

    float-to-double v0, v15

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->codeFromDeltaPos(DD)F

    move-result v10

    .line 601
    .restart local v10    # "curvalue":F
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    .end local v10    # "curvalue":F
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 605
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 607
    :cond_5
    const/16 v20, 0x1

    goto/16 :goto_1
.end method

.method private displayDebugInfo(D)V
    .locals 0
    .param p1, "bestCostRatio"    # D

    .prologue
    .line 540
    return-void
.end method

.method private displayMatchResult()V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method private gestureMatchProcess()D
    .locals 32

    .prologue
    .line 408
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    .line 409
    .local v18, "bestCostRatio":D
    const-string v4, ""

    .line 411
    .local v4, "bestMatchName":Ljava/lang/String;
    const/4 v5, -0x4

    move-object/from16 v0, p0

    iput-byte v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    .line 413
    const/16 v29, -0x1

    .line 415
    .local v29, "matchIndex":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureNormalize()V

    .line 419
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v25, "gestureNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v24, "gestureCostRatio":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->actualGestureCode_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 423
    .local v2, "actualLength":I
    const/4 v5, 0x4

    if-ge v2, v5, :cond_1

    .line 424
    const/16 v29, -0x1

    .line 425
    const/4 v5, -0x4

    move-object/from16 v0, p0

    iput-byte v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    .line 449
    .end local v2    # "actualLength":I
    .end local v24    # "gestureCostRatio":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v25    # "gestureNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->mouseTraceX_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 450
    .local v22, "dataLength":I
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v30, v0

    .line 451
    .local v30, "mouseTraceArrayX":[Ljava/lang/Integer;
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v31, v0

    .line 452
    .local v31, "mouseTraceArrayY":[Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->mouseTraceX_:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "mouseTraceArrayX":[Ljava/lang/Integer;
    check-cast v30, [Ljava/lang/Integer;

    .line 453
    .restart local v30    # "mouseTraceArrayX":[Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->mouseTraceY_:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "mouseTraceArrayY":[Ljava/lang/Integer;
    check-cast v31, [Ljava/lang/Integer;

    .line 455
    .restart local v31    # "mouseTraceArrayY":[Ljava/lang/Integer;
    const/4 v5, 0x2

    move/from16 v0, v22

    filled-new-array {v0, v5}, [I

    move-result-object v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 457
    .local v7, "data":[[I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 458
    aget-object v5, v7, v26

    const/4 v8, 0x0

    aget-object v9, v30, v26

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v5, v8

    .line 459
    aget-object v5, v7, v26

    const/4 v8, 0x1

    aget-object v9, v31, v26

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v5, v8

    .line 457
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 427
    .end local v7    # "data":[[I
    .end local v22    # "dataLength":I
    .end local v26    # "i":I
    .end local v30    # "mouseTraceArrayX":[Ljava/lang/Integer;
    .end local v31    # "mouseTraceArrayY":[Ljava/lang/Integer;
    .restart local v2    # "actualLength":I
    .restart local v24    # "gestureCostRatio":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v25    # "gestureNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/16 v26, -0x1

    .line 428
    .restart local v26    # "i":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    .line 429
    .local v23, "gesture":Lcom/hcrest/motionengine/cursor/gesture/Gesture;
    invoke-virtual/range {v23 .. v23}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->getCode()Ljava/util/ArrayList;

    move-result-object v28

    .line 430
    .local v28, "idealCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    add-int/lit8 v26, v26, 0x1

    .line 431
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->actualGestureCode_:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v5, v1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->costProcess(Ljava/util/ArrayList;Ljava/util/ArrayList;)D

    move-result-wide v20

    .line 433
    .local v20, "costRatio":D
    cmpg-double v5, v20, v18

    if-gez v5, :cond_2

    .line 434
    move-wide/from16 v18, v20

    .line 436
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v20, v8

    if-gez v5, :cond_2

    .line 437
    move/from16 v29, v26

    .line 438
    const/4 v5, -0x5

    move-object/from16 v0, p0

    iput-byte v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    .line 439
    invoke-virtual/range {v23 .. v23}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 462
    .end local v2    # "actualLength":I
    .end local v20    # "costRatio":D
    .end local v23    # "gesture":Lcom/hcrest/motionengine/cursor/gesture/Gesture;
    .end local v24    # "gestureCostRatio":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v25    # "gestureNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v28    # "idealCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v7    # "data":[[I
    .restart local v22    # "dataLength":I
    .restart local v30    # "mouseTraceArrayX":[Ljava/lang/Integer;
    .restart local v31    # "mouseTraceArrayY":[Ljava/lang/Integer;
    :cond_3
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v8, v18

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 464
    .local v6, "probability":I
    move-object/from16 v0, p0

    iget-byte v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    const/4 v8, -0x5

    if-ne v5, v8, :cond_4

    .line 465
    new-instance v3, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    invoke-virtual {v5}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->getImageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureStartTime_:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureEndTime_:J

    invoke-direct/range {v3 .. v11}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[IJJ)V

    .line 466
    .local v3, "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    const-string v5, "Status"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    .line 471
    :goto_2
    return-wide v18

    .line 468
    .end local v3    # "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    :cond_4
    new-instance v3, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    sget-object v5, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->GESTURE_STATUS:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-byte v8, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    neg-int v8, v8

    aget-object v10, v5, v8

    const-string v11, "Gesture_noMatch.png"

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object v9, v3

    move v12, v6

    move-object v13, v7

    invoke-direct/range {v9 .. v17}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[IJJ)V

    .line 469
    .restart local v3    # "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    const-string v5, "Status"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private gestureNormalize()V
    .locals 14

    .prologue
    .line 349
    iget v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    if-nez v10, :cond_1

    .line 405
    :cond_0
    return-void

    .line 353
    :cond_1
    iget v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v9, v10, 0x4

    .line 354
    .local v9, "minEffectLength":I
    iget v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v8, v10, 0x2

    .line 355
    .local v8, "maxEffectLength":I
    iget-object v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosX_:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 356
    .local v2, "actualLength":I
    const/4 v3, 0x0

    .line 360
    .local v3, "curValue":F
    move v4, v2

    .line 361
    .local v4, "currentLength":I
    const/4 v7, 0x1

    .line 362
    .local v7, "k":I
    if-ge v2, v9, :cond_4

    const/4 v10, 0x4

    if-lt v2, v10, :cond_4

    .line 363
    :goto_0
    if-gt v4, v9, :cond_2

    .line 364
    add-int/lit8 v7, v7, 0x1

    .line 365
    mul-int v4, v2, v7

    goto :goto_0

    .line 369
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 370
    iget-object v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosY_:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v12, v10

    iget-object v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosX_:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v10, v10

    invoke-direct {p0, v12, v13, v10, v11}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->codeFromDeltaPos(DD)F

    move-result v3

    .line 371
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v7, :cond_3

    .line 372
    iget-object v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->actualGestureCode_:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 369
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 375
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_4
    if-le v2, v8, :cond_7

    .line 377
    iget v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    div-int v10, v2, v10

    sub-int/2addr v2, v10

    .line 380
    iget v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    shr-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v2

    iget v11, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    div-int v7, v10, v11

    .line 381
    add-int v10, v2, v7

    add-int/lit8 v10, v10, -0x1

    div-int v4, v10, v7

    .line 384
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v2, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "accumX":F
    const/4 v1, 0x0

    .line 387
    .local v1, "accumY":F
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_4
    if-ge v6, v7, :cond_5

    .line 388
    add-int v10, v5, v6

    if-lt v10, v2, :cond_6

    .line 395
    :cond_5
    float-to-double v10, v1

    float-to-double v12, v0

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->codeFromDeltaPos(DD)F

    move-result v3

    .line 396
    iget-object v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->actualGestureCode_:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/2addr v5, v7

    goto :goto_3

    .line 391
    :cond_6
    iget-object v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosX_:Ljava/util/ArrayList;

    add-int v11, v5, v6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v0, v10

    .line 392
    iget-object v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosY_:Ljava/util/ArrayList;

    add-int v11, v5, v6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v1, v10

    .line 387
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 400
    .end local v0    # "accumX":F
    .end local v1    # "accumY":F
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    if-ge v5, v2, :cond_0

    .line 401
    iget-object v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosY_:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v12, v10

    iget-object v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosX_:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v10, v10

    invoke-direct {p0, v12, v13, v10, v11}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->codeFromDeltaPos(DD)F

    move-result v3

    .line 402
    iget-object v10, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->actualGestureCode_:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method public static getXmlUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    const-class v1, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;

    const-string v2, "GesturePatterns.xml"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 117
    .local v0, "xmlFilename":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCapturing([I)V
    .locals 22
    .param p1, "deltaPointer"    # [I

    .prologue
    .line 266
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v6, v0, [D

    fill-array-data v6, :array_0

    .line 267
    .local v6, "diffGesturePos":[D
    const-wide/16 v8, 0x0

    .line 268
    .local v8, "diffSqr":D
    const-wide/high16 v14, 0x4050000000000000L    # 64.0

    .line 269
    .local v14, "threshold":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosX_:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 270
    .local v2, "actualLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->mouseTraceX_:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 271
    .local v11, "traceLength":I
    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    .line 273
    .local v12, "samplePeriodms_":D
    int-to-double v0, v11

    move-wide/from16 v16, v0

    const-wide v18, 0x40c3880000000000L    # 10000.0

    div-double v18, v18, v12

    cmpl-double v16, v16, v18

    if-ltz v16, :cond_1

    .line 274
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureFull_:I

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    int-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide v18, 0x4083880000000000L    # 625.0

    cmpl-double v16, v16, v18

    if-ltz v16, :cond_2

    .line 278
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureFull_:I

    goto :goto_0

    .line 285
    :cond_2
    if-nez v2, :cond_3

    .line 286
    const-wide/high16 v14, 0x4099000000000000L    # 1600.0

    .line 291
    :cond_3
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v3, v0, :cond_4

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gesturePos_:[J

    move-object/from16 v16, v0

    aget-wide v18, v16, v3

    aget v17, p1, v3

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    aput-wide v18, v16, v3

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gesturePos_:[J

    move-object/from16 v16, v0

    aget-wide v16, v16, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->lastGesturePos_:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v3

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    aput-wide v16, v6, v3

    .line 294
    aget-wide v16, v6, v3

    aget-wide v18, v6, v3

    mul-double v16, v16, v18

    add-double v8, v8, v16

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 296
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->mouseTraceX_:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gesturePos_:[J

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-wide v18, v17, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->mouseTraceY_:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gesturePos_:[J

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-wide v18, v17, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    cmpl-double v16, v8, v14

    if-ltz v16, :cond_0

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->lastGesturePos_:[J

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gesturePos_:[J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-wide v18, v18, v19

    aput-wide v18, v16, v17

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->lastGesturePos_:[J

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gesturePos_:[J

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    aput-wide v18, v16, v17

    .line 303
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    div-double v18, v8, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v10, v0

    .line 304
    .local v10, "k":I
    const/16 v16, 0x0

    aget-wide v16, v6, v16

    int-to-double v0, v10

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v4, v0

    .line 305
    .local v4, "deltaX_pt":F
    const/16 v16, 0x1

    aget-wide v16, v6, v16

    int-to-double v0, v10

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v5, v0

    .line 306
    .local v5, "deltaY_pt":F
    if-nez v2, :cond_5

    .line 307
    const/high16 v16, 0x40a00000    # 5.0f

    div-float v4, v4, v16

    .line 308
    const/high16 v16, 0x40a00000    # 5.0f

    div-float v5, v5, v16

    .line 310
    :cond_5
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2
    if-gt v7, v10, :cond_0

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosX_:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosY_:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 266
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private handleLearning([I)V
    .locals 8
    .param p1, "deltaPointer"    # [I

    .prologue
    .line 612
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->deltaPosX_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 613
    .local v0, "traceLength":I
    int-to-double v2, v0

    const-wide v4, 0x40c3880000000000L    # 10000.0

    iget-wide v6, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->samplePeriodms_:D

    div-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->deltaPosX_:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->deltaPosY_:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    :cond_0
    return-void
.end method

.method private handleStartCapture()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureStartTime_:J

    .line 322
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->lastGesturePos_:[J

    aput-wide v4, v1, v0

    .line 324
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gesturePos_:[J

    aput-wide v4, v1, v0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->actualGestureCode_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 329
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->mouseTraceX_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 330
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->mouseTraceY_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosX_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 332
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->accumDeltaPosY_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 333
    const/4 v1, 0x0

    iput v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureFull_:I

    .line 334
    return-void
.end method

.method private handleStopCapture()V
    .locals 4

    .prologue
    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureEndTime_:J

    .line 339
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureMatchProcess()D

    move-result-wide v0

    .line 341
    .local v0, "bestCostRatio":D
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->displayMatchResult()V

    .line 343
    invoke-direct {p0, v0, v1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->displayDebugInfo(D)V

    .line 344
    const/4 v2, 0x0

    iput v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->stateRelay_:I

    .line 345
    return-void
.end method

.method private loadXML(Lcom/hcrest/motionengine/cursor/gesture/GestureXml;Ljava/lang/String;)V
    .locals 11
    .param p1, "gestureXml"    # Lcom/hcrest/motionengine/cursor/gesture/GestureXml;
    .param p2, "gestureGroup"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 169
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->getGestures()Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    .line 170
    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    invoke-virtual {v2}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->getCode()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    .line 172
    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    .line 173
    .local v0, "g":Lcom/hcrest/motionengine/cursor/gesture/Gesture;
    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    .end local v0    # "g":Lcom/hcrest/motionengine/cursor/gesture/Gesture;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1, p2}, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 175
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " gestures."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 177
    const/4 v5, 0x0

    check-cast v5, [[I

    .line 178
    .local v5, "data":[[I
    new-instance v1, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    const-string v2, "Loaded gesture XML file"

    const-string v3, "logo.png"

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[IJJ)V

    .line 179
    .local v1, "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    const-string v2, "Status"

    invoke-virtual {p0, v2, v1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method private startLearning()V
    .locals 11

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 543
    iput v4, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    .line 544
    iput-object v5, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureName_:Ljava/lang/String;

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesDraft_:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesAvg_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 550
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->deltaPosX_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 551
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->deltaPosY_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 552
    const-string v10, "Status"

    new-instance v1, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    const-string v2, "START LEARNING"

    const-string v3, "logo.png"

    check-cast v5, [[I

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[IJJ)V

    invoke-virtual {p0, v10, v1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    .line 555
    return-void
.end method

.method private startLearningTrajectory()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->deltaPosX_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 816
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->deltaPosY_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 817
    return-void
.end method

.method private stopLearning()Z
    .locals 32

    .prologue
    .line 621
    const/16 v3, 0x64

    new-array v0, v3, [D

    move-object/from16 v18, v0

    .line 622
    .local v18, "distance":[D
    const-wide/16 v24, 0x0

    .line 623
    .local v24, "max_dist":D
    const/16 v3, 0x64

    const/16 v4, 0x64

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [[D

    .line 624
    .local v16, "cost":[[D
    const/16 v3, 0x64

    new-array v0, v3, [Z

    move-object/from16 v28, v0

    .line 632
    .local v28, "select":[Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    if-nez v3, :cond_0

    .line 633
    const/16 v29, 0x0

    .line 634
    .local v29, "status":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    const-string v4, "Gesture learning failed.\n"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move/from16 v30, v29

    .line 737
    .end local v29    # "status":Z
    .local v30, "status":I
    :goto_0
    return v30

    .line 639
    .end local v30    # "status":I
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 640
    const/16 v29, 0x1

    .line 641
    .restart local v29    # "status":Z
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesDraft_:[Ljava/util/ArrayList;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v15, v4

    .line 643
    .local v15, "codei":I
    const/16 v3, 0x9

    if-ne v15, v3, :cond_1

    const/4 v15, 0x1

    .line 644
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesAvg_:Ljava/util/ArrayList;

    int-to-float v4, v15

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 646
    .end local v15    # "codei":I
    :cond_2
    const/high16 v27, 0x42c80000    # 100.0f

    .line 733
    .local v27, "quality":F
    :goto_2
    new-instance v3, Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    const-string v4, "User Created"

    const-string v5, "User Defined"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesAvg_:Ljava/util/ArrayList;

    const-string v7, "Gesture_bg.png"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    .line 734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gesture learning is successful with quality "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 735
    const-string v31, "Learning"

    new-instance v3, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    const-string v4, "Gesture learning is successful"

    const-string v5, "logo.png"

    move/from16 v0, v27

    float-to-int v6, v0

    const/4 v7, 0x0

    check-cast v7, [[I

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[IJJ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v3}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    move/from16 v30, v29

    .line 737
    .restart local v30    # "status":I
    goto/16 :goto_0

    .line 652
    .end local v19    # "i":I
    .end local v27    # "quality":F
    .end local v29    # "status":Z
    .end local v30    # "status":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    move/from16 v26, v0

    .line 653
    .local v26, "numSelectGesture_":I
    const/16 v21, 0x0

    .line 654
    .local v21, "k":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_6

    .line 656
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 657
    aget-object v3, v16, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesDraft_:[Ljava/util/ArrayList;

    aget-object v4, v4, v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesDraft_:[Ljava/util/ArrayList;

    aget-object v5, v5, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->costProcess(Ljava/util/ArrayList;Ljava/util/ArrayList;)D

    move-result-wide v4

    aput-wide v4, v3, v20

    .line 658
    aget-wide v4, v18, v19

    aget-object v3, v16, v19

    aget-wide v6, v3, v20

    add-double/2addr v4, v6

    aput-wide v4, v18, v19

    .line 656
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 660
    :cond_4
    aget-wide v4, v18, v19

    cmpg-double v3, v24, v4

    if-gez v3, :cond_5

    .line 661
    move/from16 v21, v19

    .line 662
    aget-wide v24, v18, v19

    .line 664
    :cond_5
    const/4 v3, 0x1

    aput-boolean v3, v28, v19

    .line 654
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 668
    .end local v20    # "j":I
    :cond_6
    const-wide v4, 0x3fd5c28f5c28f5c2L    # 0.33999999999999997

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v0, v4

    move/from16 v23, v0

    .line 669
    .local v23, "max_num_remove":I
    const/16 v20, 0x1

    .restart local v20    # "j":I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v23

    if-gt v0, v1, :cond_7

    .line 670
    add-int/lit8 v3, v26, -0x1

    int-to-double v4, v3

    div-double v4, v24, v4

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_8

    .line 693
    :cond_7
    add-int/lit8 v3, v26, -0x1

    int-to-double v4, v3

    div-double v4, v24, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_b

    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    const-string v4, "Gesture inputs are NOT consistent!"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 695
    const/16 v29, 0x0

    .line 696
    .restart local v29    # "status":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    const-string v4, "Gesture learning failed.\n"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    move/from16 v30, v29

    .line 697
    .restart local v30    # "status":I
    goto/16 :goto_0

    .line 674
    .end local v29    # "status":Z
    .end local v30    # "status":I
    :cond_8
    const/4 v3, 0x0

    aput-boolean v3, v28, v21

    .line 675
    add-int/lit8 v26, v26, -0x1

    .line 678
    const-wide/16 v24, 0x0

    .line 679
    const/16 v22, 0x0

    .line 680
    .local v22, "kk":I
    const/16 v19, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_a

    .line 681
    aget-boolean v3, v28, v19

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 682
    aget-wide v4, v18, v19

    aget-object v3, v16, v19

    aget-wide v6, v3, v21

    sub-double/2addr v4, v6

    aput-wide v4, v18, v19

    .line 683
    aget-wide v4, v18, v19

    cmpg-double v3, v24, v4

    if-gez v3, :cond_9

    .line 684
    move/from16 v22, v19

    .line 685
    aget-wide v24, v18, v19

    .line 680
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 689
    :cond_a
    move/from16 v21, v22

    .line 669
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 701
    .end local v22    # "kk":I
    :cond_b
    const/16 v29, 0x1

    .line 702
    .restart local v29    # "status":Z
    const/16 v19, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestureLength_:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_f

    .line 703
    const/4 v2, 0x0

    .line 704
    .local v2, "accmX":F
    const/4 v12, 0x0

    .line 705
    .local v12, "accmY":F
    const/16 v20, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    move/from16 v0, v20

    if-ge v0, v3, :cond_d

    .line 706
    aget-boolean v3, v28, v20

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesDraft_:[Ljava/util/ArrayList;

    aget-object v3, v3, v20

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 708
    .local v14, "code":F
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v14, v3

    float-to-double v4, v3

    const-wide v6, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb4d12d84aL    # 3.1415926

    sub-double/2addr v4, v6

    double-to-float v13, v4

    .line 709
    .local v13, "angle":F
    float-to-double v4, v2

    float-to-double v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 710
    float-to-double v4, v12

    float-to-double v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v12, v4

    .line 705
    .end local v13    # "angle":F
    .end local v14    # "code":F
    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 713
    :cond_d
    float-to-double v4, v12

    float-to-double v6, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->codeFromDeltaPos(DD)F

    move-result v17

    .line 714
    .local v17, "curvalue":F
    move/from16 v0, v17

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v15, v4

    .line 715
    .restart local v15    # "codei":I
    const/16 v3, 0x9

    if-ne v15, v3, :cond_e

    .line 716
    const/4 v15, 0x1

    .line 718
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesAvg_:Ljava/util/ArrayList;

    int-to-float v4, v15

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 722
    .end local v2    # "accmX":F
    .end local v12    # "accmY":F
    .end local v15    # "codei":I
    .end local v17    # "curvalue":F
    :cond_f
    const-wide/16 v24, 0x0

    .line 723
    const/16 v20, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    move/from16 v0, v20

    if-ge v0, v3, :cond_11

    .line 724
    aget-boolean v3, v28, v20

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesDraft_:[Ljava/util/ArrayList;

    aget-object v3, v3, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesAvg_:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->costProcess(Ljava/util/ArrayList;Ljava/util/ArrayList;)D

    move-result-wide v4

    aput-wide v4, v18, v20

    .line 726
    aget-wide v4, v18, v20

    cmpg-double v3, v24, v4

    if-gez v3, :cond_10

    aget-wide v24, v18, v20

    .line 723
    :cond_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 729
    :cond_11
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, v24

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-float v0, v4

    move/from16 v27, v0

    .restart local v27    # "quality":F
    goto/16 :goto_2
.end method

.method private stopLearningTrajectory()V
    .locals 5

    .prologue
    .line 822
    iget v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 823
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->deltaPosX_:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->deltaPosY_:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesDraft_:[Ljava/util/ArrayList;

    iget v4, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    aget-object v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->createGestureCode(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 824
    .local v0, "createSuccess":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 825
    iget v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    .line 834
    .end local v0    # "createSuccess":Z
    :goto_0
    return-void

    .line 827
    .restart local v0    # "createSuccess":Z
    :cond_0
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesDraft_:[Ljava/util/ArrayList;

    iget v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numLearnedGesture_:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 831
    .end local v0    # "createSuccess":Z
    :cond_1
    iget-object v1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    const-string v2, "Max number of trajectory reached. This trajectory will be ignored.\n"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateGestureLibrary()V
    .locals 30

    .prologue
    .line 744
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 745
    .local v18, "bestCostRatio":D
    const/16 v25, -0x1

    .line 747
    .local v25, "matchIndex":I
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_1

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    invoke-virtual {v2}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->getCode()Ljava/util/ArrayList;

    move-result-object v23

    .line 749
    .local v23, "idealCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesAvg_:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->costProcess(Ljava/util/ArrayList;Ljava/util/ArrayList;)D

    move-result-wide v20

    .line 751
    .local v20, "costRatio":D
    cmpg-double v2, v20, v18

    if-gez v2, :cond_0

    .line 752
    move-wide/from16 v18, v20

    .line 753
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpg-double v2, v20, v2

    if-gez v2, :cond_0

    .line 754
    move/from16 v25, v24

    .line 747
    :cond_0
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 759
    .end local v20    # "costRatio":D
    .end local v23    # "idealCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_1
    const/4 v2, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_4

    .line 760
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numUserAddedCode_:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numUserAddedCode_:I

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureName_:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->numUserAddedCode_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureName_:Ljava/lang/String;

    .line 764
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureName_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->setName(Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGesture_:Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    const-string v3, "New code is saved to library.\n"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesAvg_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v7, v2, [I

    .line 769
    .local v7, "pattern":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    array-length v2, v7

    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureCodesAvg_:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v2, v2

    aput v2, v7, v22

    .line 769
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 772
    :cond_3
    const-string v12, "Learning"

    new-instance v2, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New gesture recognized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "logo.png"

    const/4 v5, 0x0

    const/4 v6, 0x0

    check-cast v6, [[I

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[I[IJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    .line 781
    .end local v7    # "pattern":[I
    .end local v22    # "i":I
    :goto_2
    return-void

    .line 776
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->gestures_:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcrest/motionengine/cursor/gesture/Gesture;

    invoke-virtual {v2}, Lcom/hcrest/motionengine/cursor/gesture/Gesture;->getName()Ljava/lang/String;

    move-result-object v26

    .line 777
    .local v26, "name":Ljava/lang/String;
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, v2, v18

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v28, v2, v4

    .line 778
    .local v28, "percentage":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User input matched to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v28

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%, not saved.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 779
    const-string v2, "Learning"

    new-instance v9, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User input matched to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "logo.png"

    move-wide/from16 v0, v28

    double-to-int v12, v0

    const/4 v13, 0x0

    check-cast v13, [[I

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v9 .. v17}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[IJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public getLearnedGestureName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureName_:Ljava/lang/String;

    return-object v0
.end method

.method protected handleBodyFrame([IZ)V
    .locals 10
    .param p1, "deltaPointer"    # [I
    .param p2, "isCapturing"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v2, -0x3

    const/4 v4, -0x4

    const/4 v3, -0x5

    .line 193
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learningMode_:Z

    if-eqz v0, :cond_4

    .line 195
    if-eqz p2, :cond_3

    .line 196
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->wasCapturing_:Z

    if-nez v0, :cond_2

    .line 197
    iput-byte v6, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    .line 198
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->startLearningTrajectory()V

    .line 238
    :cond_0
    :goto_0
    iput-boolean p2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->wasCapturing_:Z

    .line 239
    iget-byte v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    if-eq v0, v3, :cond_1

    iget-byte v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    if-eq v0, v4, :cond_1

    .line 240
    new-instance v1, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    sget-object v0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->GESTURE_STATUS:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    neg-int v2, v2

    aget-object v2, v0, v2

    const-string v3, "Gesture_bg.png"

    const/4 v4, 0x0

    const/4 v5, 0x0

    check-cast v5, [[I

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[IJJ)V

    .line 241
    .local v1, "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    const-string v0, "Status"

    invoke-virtual {p0, v0, v1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    .end local v1    # "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    :cond_1
    return-void

    .line 200
    :cond_2
    iput-byte v5, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    .line 201
    invoke-direct {p0, p1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->handleLearning([I)V

    goto :goto_0

    .line 204
    :cond_3
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->wasCapturing_:Z

    if-eqz v0, :cond_0

    .line 205
    iput-byte v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    .line 206
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->stopLearningTrajectory()V

    goto :goto_0

    .line 211
    :cond_4
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->wasCapturing_:Z

    if-eqz v0, :cond_6

    .line 212
    if-eqz p2, :cond_5

    .line 213
    iput-byte v5, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    .line 214
    invoke-direct {p0, p1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->handleCapturing([I)V

    goto :goto_0

    .line 216
    :cond_5
    iput-byte v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    .line 217
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->handleStopCapture()V

    goto :goto_0

    .line 221
    :cond_6
    if-eqz p2, :cond_7

    .line 222
    iput-byte v6, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    .line 223
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->handleStartCapture()V

    goto :goto_0

    .line 225
    :cond_7
    iget-byte v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    if-eq v0, v3, :cond_8

    iget-byte v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    if-ne v0, v4, :cond_9

    .line 226
    :cond_8
    iget v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->stateRelay_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->stateRelay_:I

    .line 228
    :cond_9
    iget v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->stateRelay_:I

    const/16 v2, 0x3e

    if-le v0, v2, :cond_0

    .line 231
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->state_:B

    goto :goto_0
.end method

.method protected handleUserFrame()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method protected load()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected load(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10
    .param p1, "xmlInputStream"    # Ljava/io/InputStream;
    .param p2, "gestureGroup"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 151
    new-instance v0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;

    invoke-direct {v0}, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;-><init>()V

    .line 152
    .local v0, "gestureXml":Lcom/hcrest/motionengine/cursor/gesture/GestureXml;
    if-nez p1, :cond_0

    .line 154
    invoke-static {}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->getXmlUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    invoke-virtual {v0, p1}, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->load(Ljava/io/InputStream;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    const/4 v5, 0x0

    check-cast v5, [[I

    .line 158
    .local v5, "data":[[I
    new-instance v1, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    const-string v2, "Could not open gesture XML file"

    const-string v3, "logo.png"

    const/4 v4, 0x0

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[IJJ)V

    .line 159
    .local v1, "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    const-string v2, "Status"

    invoke-virtual {p0, v2, v1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    .end local v1    # "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    .end local v5    # "data":[[I
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->loadXML(Lcom/hcrest/motionengine/cursor/gesture/GestureXml;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "gestureXmlFilepath"    # Ljava/lang/String;
    .param p2, "gestureGroup"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 132
    iget-object v2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->log_:Ljava/util/logging/Logger;

    const-string v3, "Gesture linking in to event channel."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;

    invoke-direct {v0}, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;-><init>()V

    .line 135
    .local v0, "gestureXml":Lcom/hcrest/motionengine/cursor/gesture/GestureXml;
    if-nez p1, :cond_0

    .line 136
    invoke-static {}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->getXmlUrl()Ljava/lang/String;

    move-result-object p1

    .line 138
    :cond_0
    invoke-virtual {v0, p1}, Lcom/hcrest/motionengine/cursor/gesture/GestureXml;->load(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    const/4 v5, 0x0

    check-cast v5, [[I

    .line 140
    .local v5, "data":[[I
    new-instance v1, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    const-string v2, "Could not open gesture XML file"

    const-string v3, "logo.png"

    const/4 v4, 0x0

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[IJJ)V

    .line 141
    .local v1, "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    const-string v2, "Status"

    invoke-virtual {p0, v2, v1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    .end local v1    # "update":Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;
    .end local v5    # "data":[[I
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->loadXML(Lcom/hcrest/motionengine/cursor/gesture/GestureXml;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 184
    return-void
.end method

.method public setLearnedGestureName(Ljava/lang/String;)V
    .locals 0
    .param p1, "learnedGestureName"    # Ljava/lang/String;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureName_:Ljava/lang/String;

    .line 842
    return-void
.end method

.method public setLearning(Z)V
    .locals 1
    .param p1, "isLearning"    # Z

    .prologue
    .line 793
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->setLearning(ZLjava/lang/String;)V

    .line 794
    return-void
.end method

.method public setLearning(ZLjava/lang/String;)V
    .locals 10
    .param p1, "isLearning"    # Z
    .param p2, "gestureName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 797
    iput-object p2, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learnedGestureName_:Ljava/lang/String;

    .line 799
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learningMode_:Z

    if-eq v0, p1, :cond_0

    .line 800
    iput-boolean p1, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learningMode_:Z

    .line 801
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learningMode_:Z

    if-eqz v0, :cond_1

    .line 802
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->startLearning()V

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->stopLearning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->updateGestureLibrary()V

    goto :goto_0

    .line 807
    :cond_2
    const-string v0, "Learning"

    new-instance v1, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;

    const-string v2, "Gesture learning failed."

    const-string v3, "logo.png"

    const/4 v4, 0x0

    const/4 v5, 0x0

    check-cast v5, [[I

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lcom/hcrest/motionengine/cursor/gesture/GestureUpdate;-><init>(Ljava/lang/String;Ljava/lang/String;I[[IJJ)V

    invoke-virtual {p0, v0, v1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->sendPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toggleLearning()V
    .locals 2

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learningMode_:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->setLearning(ZLjava/lang/String;)V

    .line 785
    return-void

    .line 784
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleLearning(Ljava/lang/String;)V
    .locals 1
    .param p1, "gestureName"    # Ljava/lang/String;

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->learningMode_:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/hcrest/motionengine/cursor/gesture/GestureRecognitionCore;->setLearning(ZLjava/lang/String;)V

    .line 789
    return-void

    .line 788
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
