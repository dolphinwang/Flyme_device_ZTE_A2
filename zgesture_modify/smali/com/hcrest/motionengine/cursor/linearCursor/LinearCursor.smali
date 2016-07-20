.class public Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;
.super Lcom/hcrest/sensors/AbstractMotionDetector;
.source "LinearCursor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hcrest/sensors/AbstractMotionDetector",
        "<",
        "Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final MAX_BUFFER_SIZE:I

.field private accBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;"
        }
    .end annotation
.end field

.field private angVelHi:D

.field private angVelLo:D

.field private capturing:Z

.field private deltaTimeBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private doubleIntegrator:Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

.field private doubleIntegratorTrim:Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

.field private edgeTrimOnly:I

.field private listener:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;

.field private middlePoint:I

.field private pathBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;"
        }
    .end annotation
.end field

.field private pathLengthHi:D

.field private pathLengthLo:D

.field private prevAngPos:Lcom/hcrest/sensors/util/Quaternion;

.field private prevLinAccNoGrav:Lcom/hcrest/sensors/util/Vector3D;

.field private prevTimestamp:J

.field private rotBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Quaternion;",
            ">;"
        }
    .end annotation
.end field

.field private singleIntegrator_acc2Vel:Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

.field private singleIntegrator_vel2PosTrim:Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

.field private trimOption:I

.field private vectors:[Lcom/hcrest/sensors/util/Vector3D;

.field private velBuffer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;)V
    .locals 1
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;

    .prologue
    .line 93
    new-instance v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    invoke-direct {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;)V
    .locals 4
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;
    .param p2, "config"    # Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 28
    const/16 v0, 0x1388

    iput v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->MAX_BUFFER_SIZE:I

    .line 31
    iput-boolean v3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->capturing:Z

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->velBuffer:Ljava/util/Vector;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->accBuffer:Ljava/util/Vector;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->deltaTimeBuffer:Ljava/util/Vector;

    .line 49
    iput v3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->edgeTrimOnly:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->trimOption:I

    .line 51
    iput v3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->middlePoint:I

    .line 54
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->angVelHi:D

    .line 55
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->angVelLo:D

    .line 56
    const-wide v0, 0x405f400000000000L    # 125.0

    iput-wide v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathLengthHi:D

    .line 57
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    iput-wide v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathLengthLo:D

    .line 61
    iput-object v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->listener:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;

    .line 64
    iput-object v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->doubleIntegrator:Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

    .line 67
    iput-object v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->doubleIntegratorTrim:Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

    .line 70
    iput-object v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->singleIntegrator_acc2Vel:Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

    .line 73
    iput-object v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->singleIntegrator_vel2PosTrim:Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hcrest/sensors/util/Vector3D;

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->vectors:[Lcom/hcrest/sensors/util/Vector3D;

    .line 79
    iput-object v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->prevAngPos:Lcom/hcrest/sensors/util/Quaternion;

    .line 82
    iput-object v2, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->prevLinAccNoGrav:Lcom/hcrest/sensors/util/Vector3D;

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->prevTimestamp:J

    .line 105
    return-void
.end method

.method private getDeviceAxes(Ljava/util/Vector;)[Lcom/hcrest/sensors/util/Vector3D;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Quaternion;",
            ">;)[",
            "Lcom/hcrest/sensors/util/Vector3D;"
        }
    .end annotation

    .prologue
    .line 664
    .local p1, "rotations":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Quaternion;>;"
    sget-object v0, Lcom/hcrest/sensors/util/Quaternion;->IDENTITY:Lcom/hcrest/sensors/util/Quaternion;

    .line 665
    .local v0, "angPos":Lcom/hcrest/sensors/util/Quaternion;
    const/4 v9, 0x3

    new-array v1, v9, [Lcom/hcrest/sensors/util/Vector3D;

    .line 668
    .local v1, "axes":[Lcom/hcrest/sensors/util/Vector3D;
    iget v9, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->middlePoint:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_1

    .line 669
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v9

    div-int/lit8 v6, v9, 0x2

    .line 670
    .local v6, "i":I
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 671
    invoke-virtual {p1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "angPos":Lcom/hcrest/sensors/util/Quaternion;
    check-cast v0, Lcom/hcrest/sensors/util/Quaternion;

    .line 672
    .restart local v0    # "angPos":Lcom/hcrest/sensors/util/Quaternion;
    const/4 v9, 0x0

    new-instance v10, Lcom/hcrest/sensors/util/Vector3D;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v10}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v10

    aput-object v10, v1, v9

    .line 673
    const/4 v9, 0x1

    new-instance v10, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v10}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v10

    aput-object v10, v1, v9

    .line 674
    const/4 v9, 0x2

    new-instance v10, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v10}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v10

    aput-object v10, v1, v9

    .line 696
    .end local v6    # "i":I
    :goto_0
    return-object v1

    .line 677
    :cond_1
    const/4 v8, 0x6

    .line 678
    .local v8, "n":I
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v9

    div-int v5, v9, v8

    .line 679
    .local v5, "dt":I
    invoke-virtual {p1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "angPos":Lcom/hcrest/sensors/util/Quaternion;
    check-cast v0, Lcom/hcrest/sensors/util/Quaternion;

    .line 680
    .restart local v0    # "angPos":Lcom/hcrest/sensors/util/Quaternion;
    new-instance v9, Lcom/hcrest/sensors/util/Vector3D;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v9}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v2

    .line 681
    .local v2, "axesX":Lcom/hcrest/sensors/util/Vector3D;
    new-instance v9, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v9}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v3

    .line 682
    .local v3, "axesY":Lcom/hcrest/sensors/util/Vector3D;
    new-instance v9, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v9}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v4

    .line 684
    .local v4, "axesZ":Lcom/hcrest/sensors/util/Vector3D;
    const/4 v7, 0x2

    .local v7, "j":I
    :goto_1
    if-ge v7, v8, :cond_2

    .line 685
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v9

    mul-int/2addr v9, v7

    div-int v5, v9, v8

    .line 686
    invoke-virtual {p1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "angPos":Lcom/hcrest/sensors/util/Quaternion;
    check-cast v0, Lcom/hcrest/sensors/util/Quaternion;

    .line 687
    .restart local v0    # "angPos":Lcom/hcrest/sensors/util/Quaternion;
    new-instance v9, Lcom/hcrest/sensors/util/Vector3D;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v9}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/hcrest/sensors/util/Vector3D;->add(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v2

    .line 688
    new-instance v9, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v9}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/hcrest/sensors/util/Vector3D;->add(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v3

    .line 689
    new-instance v9, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v9}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/hcrest/sensors/util/Vector3D;->add(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v4

    .line 684
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 691
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/hcrest/sensors/util/Vector3D;->normalize()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v10

    aput-object v10, v1, v9

    .line 692
    const/4 v9, 0x1

    invoke-virtual {v3}, Lcom/hcrest/sensors/util/Vector3D;->normalize()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v10

    aput-object v10, v1, v9

    .line 693
    const/4 v9, 0x2

    invoke-virtual {v4}, Lcom/hcrest/sensors/util/Vector3D;->normalize()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v10

    aput-object v10, v1, v9

    goto/16 :goto_0
.end method

.method private getPlaneNormal(Ljava/util/Vector;)Lcom/hcrest/sensors/util/Vector3D;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;)",
            "Lcom/hcrest/sensors/util/Vector3D;"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, "path3d":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v14

    div-int/lit8 v9, v14, 0xa

    .line 773
    .local v9, "i0":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcrest/sensors/util/Vector3D;

    .line 774
    .local v2, "a":Lcom/hcrest/sensors/util/Vector3D;
    const/4 v3, 0x0

    .line 775
    .local v3, "b":Lcom/hcrest/sensors/util/Vector3D;
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 777
    .local v10, "maxDist":D
    move v5, v9

    .local v5, "i":I
    :goto_0
    int-to-double v14, v5

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3feb333333333333L    # 0.85

    mul-double v16, v16, v18

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1

    .line 778
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hcrest/sensors/util/Vector3D;

    .line 779
    .local v13, "p":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual {v13, v2}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v14

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v6

    .line 780
    .local v6, "dist":D
    cmpl-double v14, v6, v10

    if-lez v14, :cond_0

    .line 781
    move-wide v10, v6

    .line 782
    move-object v3, v13

    .line 777
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 785
    .end local v6    # "dist":D
    .end local v13    # "p":Lcom/hcrest/sensors/util/Vector3D;
    :cond_1
    move v5, v9

    :goto_1
    int-to-double v14, v5

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3feb333333333333L    # 0.85

    mul-double v16, v16, v18

    cmpg-double v14, v14, v16

    if-gez v14, :cond_3

    .line 786
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hcrest/sensors/util/Vector3D;

    .line 787
    .restart local v13    # "p":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual {v3, v13}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v14

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v6

    .line 788
    .restart local v6    # "dist":D
    cmpl-double v14, v6, v10

    if-lez v14, :cond_2

    .line 789
    move-wide v10, v6

    .line 790
    move-object v2, v13

    .line 785
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 795
    .end local v6    # "dist":D
    .end local v13    # "p":Lcom/hcrest/sensors/util/Vector3D;
    :cond_3
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 796
    const/4 v4, 0x0

    .line 797
    .local v4, "c":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hcrest/sensors/util/Vector3D;

    .line 798
    .restart local v13    # "p":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual {v13, v2, v3}, Lcom/hcrest/sensors/util/Vector3D;->distanceFromLine(Lcom/hcrest/sensors/util/Vector3D;Lcom/hcrest/sensors/util/Vector3D;)F

    move-result v14

    float-to-double v6, v14

    .line 799
    .restart local v6    # "dist":D
    cmpl-double v14, v6, v10

    if-lez v14, :cond_4

    .line 800
    move-wide v10, v6

    .line 801
    move-object v4, v13

    goto :goto_2

    .line 804
    .end local v6    # "dist":D
    .end local v13    # "p":Lcom/hcrest/sensors/util/Vector3D;
    :cond_5
    invoke-virtual {v3, v2}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v14

    invoke-virtual {v4, v2}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/hcrest/sensors/util/Vector3D;->crossProduct(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v14

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->normalize()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v12

    .line 805
    .local v12, "normal":Lcom/hcrest/sensors/util/Vector3D;
    const/4 v14, 0x4

    new-array v14, v14, [Lcom/hcrest/sensors/util/Vector3D;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    const/4 v15, 0x2

    aput-object v3, v14, v15

    const/4 v15, 0x3

    aput-object v4, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->vectors:[Lcom/hcrest/sensors/util/Vector3D;

    .line 806
    return-object v12
.end method

.method private process()V
    .locals 51

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/Vector;->size()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_1d

    .line 242
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 243
    .local v17, "path":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    new-instance v34, Ljava/util/Vector;

    invoke-direct/range {v34 .. v34}, Ljava/util/Vector;-><init>()V

    .line 244
    .local v34, "rotations":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Quaternion;>;"
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    .line 245
    .local v18, "path2d":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    new-instance v16, Lcom/hcrest/sensors/util/Vector3D;

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    .line 246
    .local v16, "normal":Lcom/hcrest/sensors/util/Vector3D;
    const/16 v46, 0x3

    move/from16 v0, v46

    new-array v7, v0, [Lcom/hcrest/sensors/util/Vector3D;

    .line 247
    .local v7, "axes":[Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual/range {p0 .. p0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;

    move-result-object v46

    check-cast v46, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->trimToPeakActivity:Z

    move/from16 v46, v0

    if-eqz v46, :cond_13

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->velBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/Vector;->size()I

    move-result v46

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v35, v0

    .line 257
    .local v35, "trimFlag":[I
    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v14, v0, [I

    .line 258
    .local v14, "indexBounds":[I
    const/high16 v47, 0x43480000    # 200.0f

    const/high16 v48, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    move-object/from16 v46, v0

    check-cast v46, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->linBalance:F

    move/from16 v46, v0

    sub-float v46, v48, v46

    mul-float v33, v47, v46

    .line 259
    .local v33, "radius":F
    const/high16 v47, 0x44fa0000    # 2000.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    move-object/from16 v46, v0

    check-cast v46, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->linBalance:F

    move/from16 v46, v0

    mul-float v15, v47, v46

    .line 261
    .local v15, "linFactor":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->edgeTrimOnly:I

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_1

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->velBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    const v47, 0x3da3d70a    # 0.08f

    const/16 v48, 0x32

    const/16 v49, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->timeTrimmer(Ljava/util/Vector;FII)[I

    move-result-object v14

    .line 263
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    if-ge v13, v0, :cond_2

    .line 264
    const/16 v46, 0x0

    aget v46, v14, v46

    move/from16 v0, v46

    if-lt v13, v0, :cond_0

    const/16 v46, 0x1

    aget v46, v14, v46

    move/from16 v0, v46

    if-ge v13, v0, :cond_0

    .line 265
    const/16 v46, 0x1

    aput v46, v35, v13

    .line 263
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 267
    :cond_0
    const/16 v46, 0x0

    aput v46, v35, v13

    goto :goto_1

    .line 271
    .end local v13    # "i":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->velBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    const v47, 0x3da3d70a    # 0.08f

    const/16 v48, 0x32

    const/16 v49, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->timeTrimmerFlag(Ljava/util/Vector;FII)[I

    move-result-object v35

    .line 274
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->trimOption:I

    move/from16 v46, v0

    packed-switch v46, :pswitch_data_0

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    move-object/from16 v17, v0

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    move-object/from16 v34, v0

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getDeviceAxes(Ljava/util/Vector;)[Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v7

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getPlaneNormal(Ljava/util/Vector;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v16

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v7, v2}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->project2dPath(Ljava/util/Vector;[Lcom/hcrest/sensors/util/Vector3D;Lcom/hcrest/sensors/util/Vector3D;)Ljava/util/Vector;

    move-result-object v18

    .line 404
    .end local v14    # "indexBounds":[I
    .end local v15    # "linFactor":F
    .end local v33    # "radius":F
    .end local v35    # "trimFlag":[I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->velBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/Vector;->size()I

    move-result v46

    move/from16 v0, v46

    new-array v6, v0, [D

    .line 405
    .local v6, "angNorm":[D
    const-wide/16 v22, 0x1

    .line 406
    .local v22, "peakAngVel":D
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->velBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/Vector;->size()I

    move-result v46

    move/from16 v0, v46

    if-ge v13, v0, :cond_14

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->velBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/hcrest/sensors/util/Vector3D;

    .line 408
    .local v36, "v":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual/range {v36 .. v36}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v46

    invoke-virtual/range {v36 .. v36}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v47

    mul-float v46, v46, v47

    invoke-virtual/range {v36 .. v36}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v47

    invoke-virtual/range {v36 .. v36}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v48

    mul-float v47, v47, v48

    add-float v46, v46, v47

    invoke-virtual/range {v36 .. v36}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v47

    invoke-virtual/range {v36 .. v36}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v48

    mul-float v47, v47, v48

    add-float v46, v46, v47

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v46

    aput-wide v46, v6, v13

    .line 409
    aget-wide v46, v6, v13

    cmpl-double v46, v46, v22

    if-lez v46, :cond_3

    .line 410
    aget-wide v22, v6, v13

    .line 406
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 276
    .end local v6    # "angNorm":[D
    .end local v13    # "i":I
    .end local v22    # "peakAngVel":D
    .end local v36    # "v":Lcom/hcrest/sensors/util/Vector3D;
    .restart local v14    # "indexBounds":[I
    .restart local v15    # "linFactor":F
    .restart local v33    # "radius":F
    .restart local v35    # "trimFlag":[I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    move-object/from16 v17, v0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    move-object/from16 v34, v0

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getDeviceAxes(Ljava/util/Vector;)[Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v7

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getPlaneNormal(Ljava/util/Vector;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v16

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v7, v2}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->project2dPath(Ljava/util/Vector;[Lcom/hcrest/sensors/util/Vector3D;Lcom/hcrest/sensors/util/Vector3D;)Ljava/util/Vector;

    move-result-object v18

    .line 282
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 283
    .local v19, "path2dTrimmed":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    new-instance v10, Lcom/hcrest/sensors/util/Vector3D;

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v10, v0, v1, v2}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    .line 284
    .local v10, "deltaPath":Lcom/hcrest/sensors/util/Vector3D;
    new-instance v31, Lcom/hcrest/sensors/util/Vector3D;

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    .line 286
    .local v31, "prevPath":Lcom/hcrest/sensors/util/Vector3D;
    const/16 v46, 0x0

    aget v46, v35, v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_6

    .line 287
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 292
    :goto_4
    const/4 v13, 0x1

    .restart local v13    # "i":I
    :goto_5
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    if-ge v13, v0, :cond_8

    .line 293
    aget v46, v35, v13

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_7

    .line 294
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hcrest/sensors/util/Vector3D;

    .line 295
    .local v8, "currPath":Lcom/hcrest/sensors/util/Vector3D;
    add-int/lit8 v46, v13, -0x1

    aget v46, v35, v46

    if-nez v46, :cond_4

    .line 296
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/hcrest/sensors/util/Vector3D;

    move-object/from16 v0, v46

    invoke-virtual {v10, v0}, Lcom/hcrest/sensors/util/Vector3D;->add(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v10

    .line 297
    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v10

    .line 300
    :cond_4
    invoke-virtual {v8, v10}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v8

    .line 301
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v8    # "currPath":Lcom/hcrest/sensors/util/Vector3D;
    :cond_5
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 289
    .end local v13    # "i":I
    :cond_6
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "prevPath":Lcom/hcrest/sensors/util/Vector3D;
    check-cast v31, Lcom/hcrest/sensors/util/Vector3D;

    .restart local v31    # "prevPath":Lcom/hcrest/sensors/util/Vector3D;
    goto :goto_4

    .line 303
    .restart local v13    # "i":I
    :cond_7
    add-int/lit8 v46, v13, -0x1

    aget v46, v35, v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_5

    .line 304
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "prevPath":Lcom/hcrest/sensors/util/Vector3D;
    check-cast v31, Lcom/hcrest/sensors/util/Vector3D;

    .restart local v31    # "prevPath":Lcom/hcrest/sensors/util/Vector3D;
    goto :goto_6

    .line 308
    :cond_8
    move-object/from16 v18, v19

    .line 310
    goto/16 :goto_2

    .line 313
    .end local v10    # "deltaPath":Lcom/hcrest/sensors/util/Vector3D;
    .end local v13    # "i":I
    .end local v19    # "path2dTrimmed":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    .end local v31    # "prevPath":Lcom/hcrest/sensors/util/Vector3D;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->edgeTrimOnly:I

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_9

    .line 314
    const/16 v46, 0x0

    aget v13, v14, v46

    .restart local v13    # "i":I
    :goto_7
    const/16 v46, 0x1

    aget v46, v14, v46

    move/from16 v0, v46

    if-ge v13, v0, :cond_e

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 319
    .end local v13    # "i":I
    :cond_9
    new-instance v11, Lcom/hcrest/sensors/util/Vector3D;

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v11, v0, v1, v2}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    .line 320
    .local v11, "deltaPos":Lcom/hcrest/sensors/util/Vector3D;
    new-instance v32, Lcom/hcrest/sensors/util/Vector3D;

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-direct {v0, v1, v2, v3}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    .line 322
    .local v32, "prevPos":Lcom/hcrest/sensors/util/Vector3D;
    const/16 v46, 0x0

    aget v46, v35, v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_c

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 329
    :goto_8
    const/4 v13, 0x1

    .restart local v13    # "i":I
    :goto_9
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    if-ge v13, v0, :cond_e

    .line 330
    aget v46, v35, v13

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_d

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hcrest/sensors/util/Vector3D;

    .line 332
    .local v9, "currPos":Lcom/hcrest/sensors/util/Vector3D;
    add-int/lit8 v46, v13, -0x1

    aget v46, v35, v46

    if-nez v46, :cond_a

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/hcrest/sensors/util/Vector3D;

    move-object/from16 v0, v46

    invoke-virtual {v11, v0}, Lcom/hcrest/sensors/util/Vector3D;->add(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v11

    .line 334
    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v11

    .line 336
    :cond_a
    invoke-virtual {v9, v11}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v9

    .line 337
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v9    # "currPos":Lcom/hcrest/sensors/util/Vector3D;
    :cond_b
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 326
    .end local v13    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "prevPos":Lcom/hcrest/sensors/util/Vector3D;
    check-cast v32, Lcom/hcrest/sensors/util/Vector3D;

    .restart local v32    # "prevPos":Lcom/hcrest/sensors/util/Vector3D;
    goto :goto_8

    .line 341
    .restart local v13    # "i":I
    :cond_d
    add-int/lit8 v46, v13, -0x1

    aget v46, v35, v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_b

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "prevPos":Lcom/hcrest/sensors/util/Vector3D;
    check-cast v32, Lcom/hcrest/sensors/util/Vector3D;

    .restart local v32    # "prevPos":Lcom/hcrest/sensors/util/Vector3D;
    goto :goto_a

    .line 348
    .end local v11    # "deltaPos":Lcom/hcrest/sensors/util/Vector3D;
    .end local v32    # "prevPos":Lcom/hcrest/sensors/util/Vector3D;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getDeviceAxes(Ljava/util/Vector;)[Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v7

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getPlaneNormal(Ljava/util/Vector;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v16

    .line 350
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v7, v2}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->project2dPath(Ljava/util/Vector;[Lcom/hcrest/sensors/util/Vector3D;Lcom/hcrest/sensors/util/Vector3D;)Ljava/util/Vector;

    move-result-object v18

    .line 351
    goto/16 :goto_2

    .line 354
    .end local v13    # "i":I
    :pswitch_2
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_b
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    if-ge v13, v0, :cond_10

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->singleIntegrator_acc2Vel:Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->accBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/hcrest/sensors/util/Vector3D;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->deltaTimeBuffer:Ljava/util/Vector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Float;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Float;->floatValue()F

    move-result v47

    move-object/from16 v0, v48

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->process(Lcom/hcrest/sensors/util/Vector3D;F)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v37

    .line 356
    .local v37, "velocity":Lcom/hcrest/sensors/util/Vector3D;
    aget v46, v35, v13

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_f

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->singleIntegrator_vel2PosTrim:Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->deltaTimeBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Float;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Float;->floatValue()F

    move-result v46

    move-object/from16 v0, v47

    move-object/from16 v1, v37

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->process(Lcom/hcrest/sensors/util/Vector3D;F)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v30

    .line 358
    .local v30, "position":Lcom/hcrest/sensors/util/Vector3D;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/hcrest/sensors/util/Quaternion;

    new-instance v47, Lcom/hcrest/sensors/util/Vector3D;

    const/high16 v48, 0x3f800000    # 1.0f

    const/16 v49, 0x0

    const/16 v50, 0x0

    invoke-direct/range {v47 .. v50}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual/range {v46 .. v47}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v25

    .line 359
    .local v25, "pointer":Lcom/hcrest/sensors/util/Vector3D;
    sget-object v46, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    move-object/from16 v0, v46

    move-object/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Lcom/hcrest/sensors/util/Vector3D;->add(FLcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v33

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/sensors/util/Vector3D;->add(FLcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v24

    .line 360
    .local v24, "point":Lcom/hcrest/sensors/util/Vector3D;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v24    # "point":Lcom/hcrest/sensors/util/Vector3D;
    .end local v25    # "pointer":Lcom/hcrest/sensors/util/Vector3D;
    .end local v30    # "position":Lcom/hcrest/sensors/util/Vector3D;
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 364
    .end local v37    # "velocity":Lcom/hcrest/sensors/util/Vector3D;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getDeviceAxes(Ljava/util/Vector;)[Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v7

    .line 365
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getPlaneNormal(Ljava/util/Vector;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v16

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v7, v2}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->project2dPath(Ljava/util/Vector;[Lcom/hcrest/sensors/util/Vector3D;Lcom/hcrest/sensors/util/Vector3D;)Ljava/util/Vector;

    move-result-object v18

    .line 367
    goto/16 :goto_2

    .line 370
    .end local v13    # "i":I
    :pswitch_3
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_c
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    if-ge v13, v0, :cond_12

    .line 371
    aget v46, v35, v13

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_11

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->doubleIntegratorTrim:Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->accBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/hcrest/sensors/util/Vector3D;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->deltaTimeBuffer:Ljava/util/Vector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/Float;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Float;->floatValue()F

    move-result v47

    move-object/from16 v0, v48

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->process(Lcom/hcrest/sensors/util/Vector3D;F)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v30

    .line 373
    .restart local v30    # "position":Lcom/hcrest/sensors/util/Vector3D;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/hcrest/sensors/util/Quaternion;

    new-instance v47, Lcom/hcrest/sensors/util/Vector3D;

    const/high16 v48, 0x3f800000    # 1.0f

    const/16 v49, 0x0

    const/16 v50, 0x0

    invoke-direct/range {v47 .. v50}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual/range {v46 .. v47}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v25

    .line 374
    .restart local v25    # "pointer":Lcom/hcrest/sensors/util/Vector3D;
    sget-object v46, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    move-object/from16 v0, v46

    move-object/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Lcom/hcrest/sensors/util/Vector3D;->add(FLcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v33

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/sensors/util/Vector3D;->add(FLcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v24

    .line 375
    .restart local v24    # "point":Lcom/hcrest/sensors/util/Vector3D;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v34

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 370
    .end local v24    # "point":Lcom/hcrest/sensors/util/Vector3D;
    .end local v25    # "pointer":Lcom/hcrest/sensors/util/Vector3D;
    .end local v30    # "position":Lcom/hcrest/sensors/util/Vector3D;
    :goto_d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_c

    .line 378
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->doubleIntegratorTrim:Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->resetVelocity()V

    goto :goto_d

    .line 381
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getDeviceAxes(Ljava/util/Vector;)[Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v7

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getPlaneNormal(Ljava/util/Vector;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v16

    .line 383
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v7, v2}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->project2dPath(Ljava/util/Vector;[Lcom/hcrest/sensors/util/Vector3D;Lcom/hcrest/sensors/util/Vector3D;)Ljava/util/Vector;

    move-result-object v18

    .line 385
    goto/16 :goto_2

    .line 396
    .end local v13    # "i":I
    .end local v14    # "indexBounds":[I
    .end local v15    # "linFactor":F
    .end local v33    # "radius":F
    .end local v35    # "trimFlag":[I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    move-object/from16 v17, v0

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    move-object/from16 v34, v0

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getDeviceAxes(Ljava/util/Vector;)[Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v7

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getPlaneNormal(Ljava/util/Vector;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v16

    .line 400
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v7, v2}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->project2dPath(Ljava/util/Vector;[Lcom/hcrest/sensors/util/Vector3D;Lcom/hcrest/sensors/util/Vector3D;)Ljava/util/Vector;

    move-result-object v18

    goto/16 :goto_2

    .line 414
    .restart local v6    # "angNorm":[D
    .restart local v13    # "i":I
    .restart local v22    # "peakAngVel":D
    :cond_14
    const-wide/16 v40, 0x0

    .local v40, "xMin":D
    const-wide/16 v38, 0x0

    .local v38, "xMax":D
    const-wide/16 v44, 0x0

    .local v44, "yMin":D
    const-wide/16 v42, 0x0

    .line 415
    .local v42, "yMax":D
    const/4 v13, 0x0

    :goto_e
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v46

    move/from16 v0, v46

    if-ge v13, v0, :cond_19

    .line 416
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual/range {v46 .. v46}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v26, v0

    .line 417
    .local v26, "pointX":D
    cmpl-double v46, v26, v38

    if-lez v46, :cond_15

    move-wide/from16 v38, v26

    .line 418
    :cond_15
    cmpg-double v46, v26, v40

    if-gez v46, :cond_16

    move-wide/from16 v40, v26

    .line 419
    :cond_16
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual/range {v46 .. v46}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v28, v0

    .line 420
    .local v28, "pointY":D
    cmpl-double v46, v28, v42

    if-lez v46, :cond_17

    move-wide/from16 v42, v28

    .line 421
    :cond_17
    cmpg-double v46, v28, v44

    if-gez v46, :cond_18

    move-wide/from16 v44, v28

    .line 415
    :cond_18
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 423
    .end local v26    # "pointX":D
    .end local v28    # "pointY":D
    :cond_19
    sub-double v46, v38, v40

    sub-double v48, v42, v44

    add-double v20, v46, v48

    .line 425
    .local v20, "pathLength":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->angVelLo:D

    move-wide/from16 v46, v0

    cmpg-double v46, v22, v46

    if-gez v46, :cond_1a

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathLengthHi:D

    move-wide/from16 v46, v0

    cmpg-double v46, v20, v46

    if-ltz v46, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathLengthLo:D

    move-wide/from16 v46, v0

    cmpg-double v46, v20, v46

    if-gez v46, :cond_1c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->angVelHi:D

    move-wide/from16 v46, v0

    cmpg-double v46, v22, v46

    if-gez v46, :cond_1c

    .line 426
    :cond_1b
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V

    .line 430
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->listener:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1d

    .line 431
    new-instance v12, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;-><init>(Ljava/lang/Object;)V

    .line 432
    .local v12, "event":Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;->setPath(Ljava/util/Vector;)V

    .line 433
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;->setRawPath(Ljava/util/Vector;)V

    .line 434
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;->setNormal(Lcom/hcrest/sensors/util/Vector3D;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->vectors:[Lcom/hcrest/sensors/util/Vector3D;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iput-object v0, v12, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;->vectors:[Lcom/hcrest/sensors/util/Vector3D;

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->listener:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-interface {v0, v12}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;->onLinearCursorEvent(Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;)V

    .line 439
    .end local v6    # "angNorm":[D
    .end local v7    # "axes":[Lcom/hcrest/sensors/util/Vector3D;
    .end local v12    # "event":Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;
    .end local v13    # "i":I
    .end local v16    # "normal":Lcom/hcrest/sensors/util/Vector3D;
    .end local v17    # "path":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    .end local v18    # "path2d":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    .end local v20    # "pathLength":D
    .end local v22    # "peakAngVel":D
    .end local v34    # "rotations":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Quaternion;>;"
    .end local v38    # "xMax":D
    .end local v40    # "xMin":D
    .end local v42    # "yMax":D
    .end local v44    # "yMin":D
    :cond_1d
    return-void

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private project2dPath(Ljava/util/Vector;[Lcom/hcrest/sensors/util/Vector3D;Lcom/hcrest/sensors/util/Vector3D;)Ljava/util/Vector;
    .locals 27
    .param p2, "axes"    # [Lcom/hcrest/sensors/util/Vector3D;
    .param p3, "normal"    # Lcom/hcrest/sensors/util/Vector3D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;[",
            "Lcom/hcrest/sensors/util/Vector3D;",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "path3d":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    new-instance v15, Ljava/util/Vector;

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/util/Vector;-><init>(I)V

    .line 703
    .local v15, "path2d":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v17, v0

    .line 704
    .local v17, "proAng":[D
    const-wide/16 v12, 0x0

    .line 705
    .local v12, "maxAng":D
    const/4 v11, -0x1

    .line 706
    .local v11, "maxAngIdx":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_1

    .line 707
    aget-object v22, p2, v9

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/util/Vector3D;->dotProduct(Lcom/hcrest/sensors/util/Vector3D;)F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v17, v9

    .line 708
    aget-wide v22, v17, v9

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 709
    .local v4, "ang":D
    cmpl-double v22, v4, v12

    if-lez v22, :cond_0

    .line 710
    move-wide v12, v4

    .line 711
    move v11, v9

    .line 706
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 717
    .end local v4    # "ang":D
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3feccccccccccccdL    # 0.9

    cmpg-double v22, v22, v24

    if-gez v22, :cond_5

    .line 719
    new-instance v18, Lcom/hcrest/sensors/util/Vector3D;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, -0x40800000    # -1.0f

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    .line 720
    .local v18, "up":Lcom/hcrest/sensors/util/Vector3D;
    aget-wide v22, v17, v11

    const-wide/16 v24, 0x0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_4

    .line 721
    if-eqz v11, :cond_2

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v11, v0, :cond_3

    .line 722
    :cond_2
    sget-object v22, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v8

    .line 745
    .local v8, "eye":Lcom/hcrest/sensors/util/Vector3D;
    :goto_1
    sget-object v6, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    .line 746
    .local v6, "at":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual {v6, v8}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v21

    .line 747
    .local v21, "zaxis":Lcom/hcrest/sensors/util/Vector3D;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/util/Vector3D;->crossProduct(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v19

    .line 748
    .local v19, "xaxis":Lcom/hcrest/sensors/util/Vector3D;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/util/Vector3D;->crossProduct(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v20

    .line 750
    .local v20, "yaxis":Lcom/hcrest/sensors/util/Vector3D;
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v7, v0, [[F

    const/16 v22, 0x0

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x2

    invoke-virtual/range {v19 .. v19}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v25

    aput v25, v23, v24

    aput-object v23, v7, v22

    const/16 v22, 0x1

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual/range {v20 .. v20}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x2

    invoke-virtual/range {v20 .. v20}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v25

    aput v25, v23, v24

    aput-object v23, v7, v22

    const/16 v22, 0x2

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v25

    aput v25, v23, v24

    const/16 v24, 0x2

    invoke-virtual/range {v21 .. v21}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v25

    aput v25, v23, v24

    aput-object v23, v7, v22

    .line 754
    .local v7, "dcm":[[F
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/hcrest/sensors/util/Vector3D;

    .line 755
    .local v14, "p":Lcom/hcrest/sensors/util/Vector3D;
    new-instance v16, Lcom/hcrest/sensors/util/Vector3D;

    const/16 v22, 0x0

    aget-object v22, v7, v22

    const/16 v23, 0x0

    aget v22, v22, v23

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v23

    mul-float v22, v22, v23

    const/16 v23, 0x0

    aget-object v23, v7, v23

    const/16 v24, 0x1

    aget v23, v23, v24

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v24

    mul-float v23, v23, v24

    add-float v22, v22, v23

    const/16 v23, 0x0

    aget-object v23, v7, v23

    const/16 v24, 0x2

    aget v23, v23, v24

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v24

    mul-float v23, v23, v24

    add-float v22, v22, v23

    const/16 v23, 0x1

    aget-object v23, v7, v23

    const/16 v24, 0x0

    aget v23, v23, v24

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v24

    mul-float v23, v23, v24

    const/16 v24, 0x1

    aget-object v24, v7, v24

    const/16 v25, 0x1

    aget v24, v24, v25

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    const/16 v24, 0x1

    aget-object v24, v7, v24

    const/16 v25, 0x2

    aget v24, v24, v25

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v25

    mul-float v24, v24, v25

    add-float v23, v23, v24

    const/16 v24, 0x2

    aget-object v24, v7, v24

    const/16 v25, 0x0

    aget v24, v24, v25

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v25

    mul-float v24, v24, v25

    const/16 v25, 0x2

    aget-object v25, v7, v25

    const/16 v26, 0x1

    aget v25, v25, v26

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    const/16 v25, 0x2

    aget-object v25, v7, v25

    const/16 v26, 0x2

    aget v25, v25, v26

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    .line 763
    .local v16, "pp":Lcom/hcrest/sensors/util/Vector3D;
    new-instance v22, Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual/range {v16 .. v16}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v23

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v16 .. v16}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v24

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-direct/range {v22 .. v25}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 726
    .end local v6    # "at":Lcom/hcrest/sensors/util/Vector3D;
    .end local v7    # "dcm":[[F
    .end local v8    # "eye":Lcom/hcrest/sensors/util/Vector3D;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "p":Lcom/hcrest/sensors/util/Vector3D;
    .end local v16    # "pp":Lcom/hcrest/sensors/util/Vector3D;
    .end local v19    # "xaxis":Lcom/hcrest/sensors/util/Vector3D;
    .end local v20    # "yaxis":Lcom/hcrest/sensors/util/Vector3D;
    .end local v21    # "zaxis":Lcom/hcrest/sensors/util/Vector3D;
    :cond_3
    move-object/from16 v8, p3

    .restart local v8    # "eye":Lcom/hcrest/sensors/util/Vector3D;
    goto/16 :goto_1

    .line 729
    .end local v8    # "eye":Lcom/hcrest/sensors/util/Vector3D;
    :cond_4
    move-object/from16 v8, p3

    .restart local v8    # "eye":Lcom/hcrest/sensors/util/Vector3D;
    goto/16 :goto_1

    .line 732
    .end local v8    # "eye":Lcom/hcrest/sensors/util/Vector3D;
    .end local v18    # "up":Lcom/hcrest/sensors/util/Vector3D;
    :cond_5
    const/16 v22, 0x2

    aget-wide v22, v17, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    const-wide v24, 0x3feccccccccccccdL    # 0.9

    cmpl-double v22, v22, v24

    if-lez v22, :cond_6

    .line 733
    new-instance v8, Lcom/hcrest/sensors/util/Vector3D;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v8, v0, v1, v2}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    .line 734
    .restart local v8    # "eye":Lcom/hcrest/sensors/util/Vector3D;
    const/16 v22, 0x0

    aget-object v18, p2, v22

    .restart local v18    # "up":Lcom/hcrest/sensors/util/Vector3D;
    goto/16 :goto_1

    .line 736
    .end local v8    # "eye":Lcom/hcrest/sensors/util/Vector3D;
    .end local v18    # "up":Lcom/hcrest/sensors/util/Vector3D;
    :cond_6
    const/16 v22, 0x2

    aget-wide v22, v17, v22

    const-wide/16 v24, 0x0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_7

    .line 737
    sget-object v22, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/util/Vector3D;->subtract(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v8

    .line 741
    .restart local v8    # "eye":Lcom/hcrest/sensors/util/Vector3D;
    :goto_3
    const/16 v22, 0x0

    aget-object v18, p2, v22

    .restart local v18    # "up":Lcom/hcrest/sensors/util/Vector3D;
    goto/16 :goto_1

    .line 739
    .end local v8    # "eye":Lcom/hcrest/sensors/util/Vector3D;
    .end local v18    # "up":Lcom/hcrest/sensors/util/Vector3D;
    :cond_7
    move-object/from16 v8, p3

    .restart local v8    # "eye":Lcom/hcrest/sensors/util/Vector3D;
    goto :goto_3

    .line 766
    .restart local v6    # "at":Lcom/hcrest/sensors/util/Vector3D;
    .restart local v7    # "dcm":[[F
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v18    # "up":Lcom/hcrest/sensors/util/Vector3D;
    .restart local v19    # "xaxis":Lcom/hcrest/sensors/util/Vector3D;
    .restart local v20    # "yaxis":Lcom/hcrest/sensors/util/Vector3D;
    .restart local v21    # "zaxis":Lcom/hcrest/sensors/util/Vector3D;
    :cond_8
    return-object v15
.end method

.method private timeTrimmer(Ljava/util/Vector;FII)[I
    .locals 31
    .param p2, "threshold"    # F
    .param p3, "windowSize"    # I
    .param p4, "windowShift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;FII)[I"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "angVel_body":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v16, v28

    const/16 v28, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    aput v29, v16, v28

    .line 466
    .local v16, "indexStartEnd":[I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v28

    const/16 v29, 0x64

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 546
    :goto_0
    return-object v16

    .line 471
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v2, v0, [D

    .line 472
    .local v2, "angNorm":[D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v11, v0, :cond_1

    .line 473
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/hcrest/sensors/util/Vector3D;

    .line 474
    .local v25, "v":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual/range {v25 .. v25}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v28

    invoke-virtual/range {v25 .. v25}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v29

    mul-float v28, v28, v29

    invoke-virtual/range {v25 .. v25}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v29

    invoke-virtual/range {v25 .. v25}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v30

    mul-float v29, v29, v30

    add-float v28, v28, v29

    invoke-virtual/range {v25 .. v25}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v29

    invoke-virtual/range {v25 .. v25}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v30

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    aput-wide v28, v2, v11

    .line 472
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 477
    .end local v25    # "v":Lcom/hcrest/sensors/util/Vector3D;
    :cond_1
    array-length v0, v2

    move/from16 v28, v0

    div-int v28, v28, p4

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v4, v0

    .line 478
    .local v4, "angNormAvgLength":I
    new-array v5, v4, [D

    .line 481
    .local v5, "angNormWinAvg":[D
    const/4 v3, 0x0

    .line 482
    .local v3, "angNormAvgIdx":I
    const/16 v23, 0x0

    .local v23, "startIdx":I
    :goto_2
    array-length v0, v2

    move/from16 v28, v0

    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    array-length v0, v5

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v3, v0, :cond_3

    .line 483
    const-wide/16 v26, 0x0

    .line 484
    .local v26, "sum":D
    array-length v0, v2

    move/from16 v28, v0

    sub-int v28, v28, v23

    move/from16 v0, p3

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 486
    .local v22, "size":I
    move/from16 v15, v23

    .local v15, "ii":I
    :goto_3
    add-int v28, v23, v22

    move/from16 v0, v28

    if-ge v15, v0, :cond_2

    .line 487
    aget-wide v28, v2, v15

    add-double v26, v26, v28

    .line 486
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 489
    :cond_2
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v28, v26, v28

    aput-wide v28, v5, v3

    .line 482
    add-int v23, v23, p4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 492
    .end local v15    # "ii":I
    .end local v22    # "size":I
    .end local v26    # "sum":D
    :cond_3
    const-wide/16 v20, 0x1

    .line 493
    .local v20, "peakValue":D
    move-object v8, v5

    .local v8, "arr$":[D
    array-length v0, v8

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_4
    move/from16 v0, v18

    if-ge v14, v0, :cond_5

    aget-wide v28, v8, v14

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 494
    .local v9, "d":Ljava/lang/Double;
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    cmpl-double v28, v28, v20

    if-lez v28, :cond_4

    .line 495
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 493
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 502
    .end local v9    # "d":Ljava/lang/Double;
    :cond_5
    const/16 v28, 0x0

    cmpl-float v28, p2, v28

    if-ltz v28, :cond_6

    .line 503
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v6, v20, v28

    .line 509
    .local v6, "angThld":D
    :goto_5
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    mul-double v12, v20, v28

    .line 510
    .local v12, "halfPeak":D
    const/16 v17, 0x0

    .line 511
    .local v17, "leftHalfPeakIndx":I
    :goto_6
    aget-wide v28, v5, v17

    cmpg-double v28, v28, v12

    if-gez v28, :cond_7

    .line 512
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 505
    .end local v6    # "angThld":D
    .end local v12    # "halfPeak":D
    .end local v17    # "leftHalfPeakIndx":I
    :cond_6
    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-double v6, v0

    .restart local v6    # "angThld":D
    goto :goto_5

    .line 515
    .restart local v12    # "halfPeak":D
    .restart local v17    # "leftHalfPeakIndx":I
    :cond_7
    add-int/lit8 v19, v4, -0x1

    .line 516
    .local v19, "rightHalfPeakIndx":I
    :goto_7
    aget-wide v28, v5, v19

    cmpg-double v28, v28, v12

    if-gez v28, :cond_8

    .line 517
    add-int/lit8 v19, v19, -0x1

    goto :goto_7

    .line 523
    :cond_8
    move/from16 v24, v17

    .local v24, "startWindow":I
    :goto_8
    if-lez v24, :cond_9

    .line 524
    aget-wide v28, v5, v24

    cmpg-double v28, v28, v6

    if-gez v28, :cond_b

    .line 528
    :cond_9
    aget-wide v28, v5, v24

    cmpg-double v28, v28, v6

    if-gez v28, :cond_c

    .line 529
    const/16 v28, 0x0

    mul-int v29, v24, p4

    add-int v29, v29, p3

    sub-int v29, v29, p4

    array-length v0, v2

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v29

    aput v29, v16, v28

    .line 535
    :goto_9
    move/from16 v10, v19

    .local v10, "endWindow":I
    :goto_a
    array-length v0, v5

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ge v10, v0, :cond_a

    .line 536
    aget-wide v28, v5, v10

    cmpg-double v28, v28, v6

    if-gez v28, :cond_d

    .line 540
    :cond_a
    aget-wide v28, v5, v10

    cmpg-double v28, v28, v6

    if-gez v28, :cond_e

    .line 541
    const/16 v28, 0x1

    mul-int v29, v10, p4

    array-length v0, v2

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v29

    aput v29, v16, v28

    goto/16 :goto_0

    .line 523
    .end local v10    # "endWindow":I
    :cond_b
    add-int/lit8 v24, v24, -0x1

    goto :goto_8

    .line 531
    :cond_c
    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v16, v28

    goto :goto_9

    .line 535
    .restart local v10    # "endWindow":I
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 543
    :cond_e
    const/16 v28, 0x1

    array-length v0, v2

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    aput v29, v16, v28

    goto/16 :goto_0
.end method

.method private timeTrimmerFlag(Ljava/util/Vector;FII)[I
    .locals 35
    .param p2, "threshold"    # F
    .param p3, "windowSize"    # I
    .param p4, "windowShift"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;FII)[I"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "angVel_body":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 573
    .local v27, "trimFlag":[I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    .line 574
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v11, v0, :cond_e

    .line 575
    const/16 v32, 0x1

    aput v32, v27, v11

    .line 574
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 581
    .end local v11    # "i":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v2, v0, [D

    .line 582
    .local v2, "angNorm":[D
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v11, v0, :cond_1

    .line 583
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/hcrest/sensors/util/Vector3D;

    .line 584
    .local v30, "v":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual/range {v30 .. v30}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v32

    invoke-virtual/range {v30 .. v30}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v33

    mul-float v32, v32, v33

    invoke-virtual/range {v30 .. v30}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v33

    invoke-virtual/range {v30 .. v30}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    invoke-virtual/range {v30 .. v30}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v33

    invoke-virtual/range {v30 .. v30}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    aput-wide v32, v2, v11

    .line 582
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 587
    .end local v30    # "v":Lcom/hcrest/sensors/util/Vector3D;
    :cond_1
    array-length v0, v2

    move/from16 v32, v0

    div-int v32, v32, p4

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v4, v0

    .line 588
    .local v4, "angNormAvgLength":I
    new-array v5, v4, [D

    .line 591
    .local v5, "angNormWinAvg":[D
    const/4 v3, 0x0

    .line 592
    .local v3, "angNormAvgIdx":I
    const/16 v25, 0x0

    .local v25, "startIdx":I
    :goto_2
    array-length v0, v2

    move/from16 v32, v0

    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    array-length v0, v5

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v3, v0, :cond_3

    .line 593
    const-wide/16 v28, 0x0

    .line 594
    .local v28, "sum":D
    array-length v0, v2

    move/from16 v32, v0

    sub-int v32, v32, v25

    move/from16 v0, p3

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 596
    .local v24, "size":I
    move/from16 v15, v25

    .local v15, "ii":I
    :goto_3
    add-int v32, v25, v24

    move/from16 v0, v32

    if-ge v15, v0, :cond_2

    .line 597
    aget-wide v32, v2, v15

    add-double v28, v28, v32

    .line 596
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 599
    :cond_2
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v32, v28, v32

    aput-wide v32, v5, v3

    .line 592
    add-int v25, v25, p4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 602
    .end local v15    # "ii":I
    .end local v24    # "size":I
    .end local v28    # "sum":D
    :cond_3
    const-wide/16 v20, 0x1

    .line 603
    .local v20, "peakValue":D
    move-object v8, v5

    .local v8, "arr$":[D
    array-length v0, v8

    move/from16 v19, v0

    .local v19, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_4
    move/from16 v0, v19

    if-ge v14, v0, :cond_5

    aget-wide v32, v8, v14

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 604
    .local v9, "d":Ljava/lang/Double;
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    cmpl-double v32, v32, v20

    if-lez v32, :cond_4

    .line 605
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 603
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 612
    .end local v9    # "d":Ljava/lang/Double;
    :cond_5
    const/16 v32, 0x0

    cmpl-float v32, p2, v32

    if-ltz v32, :cond_6

    .line 613
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v6, v20, v32

    .line 619
    .local v6, "angThld":D
    :goto_5
    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    mul-double v12, v20, v32

    .line 620
    .local v12, "halfPeak":D
    const/16 v17, 0x0

    .line 621
    .local v17, "leftHalfPeakIndx":I
    :goto_6
    aget-wide v32, v5, v17

    cmpg-double v32, v32, v12

    if-gez v32, :cond_7

    .line 622
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 615
    .end local v6    # "angThld":D
    .end local v12    # "halfPeak":D
    .end local v17    # "leftHalfPeakIndx":I
    :cond_6
    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-double v6, v0

    .restart local v6    # "angThld":D
    goto :goto_5

    .line 625
    .restart local v12    # "halfPeak":D
    .restart local v17    # "leftHalfPeakIndx":I
    :cond_7
    add-int/lit8 v22, v4, -0x1

    .line 626
    .local v22, "rightHalfPeakIndx":I
    :goto_7
    aget-wide v32, v5, v22

    cmpg-double v32, v32, v12

    if-gez v32, :cond_8

    .line 627
    add-int/lit8 v22, v22, -0x1

    goto :goto_7

    .line 633
    :cond_8
    move/from16 v26, v17

    .local v26, "startWindow":I
    :goto_8
    if-lez v26, :cond_9

    .line 634
    aget-wide v32, v5, v26

    cmpg-double v32, v32, v6

    if-gez v32, :cond_b

    .line 640
    :cond_9
    move/from16 v10, v22

    .local v10, "endWindow":I
    :goto_9
    array-length v0, v5

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v32

    if-ge v10, v0, :cond_a

    .line 641
    aget-wide v32, v5, v10

    cmpg-double v32, v32, v6

    if-gez v32, :cond_c

    .line 648
    :cond_a
    move/from16 v31, v26

    .local v31, "windowIndex":I
    :goto_a
    move/from16 v0, v31

    if-gt v0, v10, :cond_e

    .line 649
    aget-wide v32, v5, v31

    cmpl-double v32, v32, v6

    if-lez v32, :cond_d

    .line 651
    mul-int v18, v31, p4

    .line 652
    .local v18, "leftShiftIndx":I
    add-int/lit8 v32, v31, 0x1

    mul-int v32, v32, p4

    invoke-virtual/range {p1 .. p1}, Ljava/util/Vector;->size()I

    move-result v33

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 653
    .local v23, "rightShiftIndx":I
    move/from16 v16, v18

    .local v16, "k":I
    :goto_b
    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 654
    const/16 v32, 0x1

    aput v32, v27, v16

    .line 653
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 633
    .end local v10    # "endWindow":I
    .end local v16    # "k":I
    .end local v18    # "leftShiftIndx":I
    .end local v23    # "rightShiftIndx":I
    .end local v31    # "windowIndex":I
    :cond_b
    add-int/lit8 v26, v26, -0x1

    goto :goto_8

    .line 640
    .restart local v10    # "endWindow":I
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 648
    .restart local v31    # "windowIndex":I
    :cond_d
    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    .line 659
    .end local v2    # "angNorm":[D
    .end local v3    # "angNormAvgIdx":I
    .end local v4    # "angNormAvgLength":I
    .end local v5    # "angNormWinAvg":[D
    .end local v6    # "angThld":D
    .end local v8    # "arr$":[D
    .end local v10    # "endWindow":I
    .end local v12    # "halfPeak":D
    .end local v14    # "i$":I
    .end local v17    # "leftHalfPeakIndx":I
    .end local v19    # "len$":I
    .end local v20    # "peakValue":D
    .end local v22    # "rightHalfPeakIndx":I
    .end local v25    # "startIdx":I
    .end local v26    # "startWindow":I
    .end local v31    # "windowIndex":I
    :cond_e
    return-object v27
.end method


# virtual methods
.method public getSensorTypes()Ljava/util/EnumSet;
    .locals 3
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
    .line 112
    sget-object v0, Lcom/hcrest/sensors/SensorType;->ANGULAR_POSITION:Lcom/hcrest/sensors/SensorType;

    sget-object v1, Lcom/hcrest/sensors/SensorType;->ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

    sget-object v2, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION_NOGRAV:Lcom/hcrest/sensors/SensorType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerSensor()Lcom/hcrest/sensors/SensorType;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION_NOGRAV:Lcom/hcrest/sensors/SensorType;

    return-object v0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->capturing:Z

    return v0
.end method

.method public onSensorData(Lcom/hcrest/sensors/SensorData;)V
    .locals 18
    .param p1, "sample"    # Lcom/hcrest/sensors/SensorData;

    .prologue
    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getAngularPosition()Lcom/hcrest/sensors/util/Quaternion;

    move-result-object v2

    .line 167
    .local v2, "angPos":Lcom/hcrest/sensors/util/Quaternion;
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getLinearAccelerationNoGravity()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v6

    .line 169
    .local v6, "linAccNoGrav":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getAngularVelocity()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v3

    .line 171
    .local v3, "angVel":Lcom/hcrest/sensors/util/Vector3D;
    new-instance v4, Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v6}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v13

    invoke-virtual {v6}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v14

    invoke-virtual {v6}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v15

    invoke-direct {v4, v13, v14, v15}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    .line 172
    .local v4, "bodyAcc":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual {v2, v4}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v12

    .line 174
    .local v12, "userAcc":Lcom/hcrest/sensors/util/Vector3D;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->prevTimestamp:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gez v13, :cond_0

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->prevTimestamp:J

    .line 215
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->prevTimestamp:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    const v14, 0x3089705f    # 1.0E-9f

    mul-float v5, v13, v14

    .line 179
    .local v5, "deltaTime":F
    const/4 v13, 0x0

    cmpg-float v13, v5, v13

    if-lez v13, :cond_1

    float-to-double v14, v5

    const-wide v16, 0x3fa47ae147ae147bL    # 0.04

    cmpl-double v13, v14, v16

    if-lez v13, :cond_2

    .line 180
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->prevTimestamp:J

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v3}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v14

    const-wide v16, 0x3fa47ae147ae147bL    # 0.04

    cmpg-double v13, v14, v16

    if-gez v13, :cond_3

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->prevTimestamp:J

    goto :goto_0

    .line 189
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->doubleIntegrator:Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

    invoke-virtual {v13, v12, v5}, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->process(Lcom/hcrest/sensors/util/Vector3D;F)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v10

    .line 190
    .local v10, "position":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->prevTimestamp:J

    .line 191
    new-instance v13, Lcom/hcrest/sensors/util/Vector3D;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v2, v13}, Lcom/hcrest/sensors/util/Quaternion;->applyInverseTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v9

    .line 193
    .local v9, "pointer":Lcom/hcrest/sensors/util/Vector3D;
    const/high16 v14, 0x43480000    # 200.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v13, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    iget v13, v13, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->linBalance:F

    sub-float v13, v15, v13

    mul-float v11, v14, v13

    .line 194
    .local v11, "radius":F
    const/high16 v14, 0x44fa0000    # 2000.0f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v13, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    iget v13, v13, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->linBalance:F

    mul-float v7, v14, v13

    .line 195
    .local v7, "linFactor":F
    sget-object v13, Lcom/hcrest/sensors/util/Vector3D;->ZERO:Lcom/hcrest/sensors/util/Vector3D;

    invoke-virtual {v13, v7, v10}, Lcom/hcrest/sensors/util/Vector3D;->add(FLcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v13

    invoke-virtual {v13, v11, v9}, Lcom/hcrest/sensors/util/Vector3D;->add(FLcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v8

    .line 197
    .local v8, "point":Lcom/hcrest/sensors/util/Vector3D;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->capturing:Z

    if-eqz v13, :cond_4

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    invoke-virtual {v13, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    invoke-virtual {v13, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->velBuffer:Ljava/util/Vector;

    invoke-virtual {v13, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->accBuffer:Ljava/util/Vector;

    invoke-virtual {v13, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->deltaTimeBuffer:Ljava/util/Vector;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    const/16 v14, 0x1388

    if-le v13, v14, :cond_4

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->velBuffer:Ljava/util/Vector;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->accBuffer:Ljava/util/Vector;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->deltaTimeBuffer:Ljava/util/Vector;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 213
    :cond_4
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->prevAngPos:Lcom/hcrest/sensors/util/Quaternion;

    .line 214
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->prevLinAccNoGrav:Lcom/hcrest/sensors/util/Vector3D;

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->reset(Z)V

    .line 132
    return-void
.end method

.method public reset(Z)V
    .locals 6
    .param p1, "zero"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v5, 0x3c03126f    # 0.008f

    const/16 v3, 0x3e8

    .line 142
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    .line 143
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    .line 144
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->velBuffer:Ljava/util/Vector;

    .line 145
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->accBuffer:Ljava/util/Vector;

    .line 146
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->deltaTimeBuffer:Ljava/util/Vector;

    .line 148
    if-eqz p1, :cond_2

    .line 149
    new-instance v3, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    iget v4, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->forgetFactor:F

    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->isGravityPreFiltered()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v3, v4, v0, v5}, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;-><init>(FZF)V

    iput-object v3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->doubleIntegrator:Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

    .line 150
    new-instance v3, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    iget v4, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->forgetFactor:F

    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->isGravityPreFiltered()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {v3, v4, v1, v5}, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;-><init>(FZF)V

    iput-object v3, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->doubleIntegratorTrim:Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

    .line 151
    new-instance v1, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    iget v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->forgetFactor:F

    invoke-direct {v1, v0, v5}, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;-><init>(FF)V

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->singleIntegrator_acc2Vel:Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

    .line 152
    new-instance v1, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    iget v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->forgetFactor:F

    invoke-direct {v1, v0, v5}, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;-><init>(FF)V

    iput-object v1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->singleIntegrator_vel2PosTrim:Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

    .line 159
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0

    :cond_1
    move v1, v2

    .line 150
    goto :goto_1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->doubleIntegrator:Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->resetPosition()V

    .line 155
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->doubleIntegratorTrim:Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/DoubleIntegrator3D;->resetPosition()V

    .line 156
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->singleIntegrator_acc2Vel:Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->resetPosition()V

    .line 157
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->singleIntegrator_vel2PosTrim:Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/SingleIntegrator3D;->resetPosition()V

    goto :goto_2
.end method

.method public setCapturing(Z)V
    .locals 1
    .param p1, "capturing"    # Z

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->capturing:Z

    if-eq p1, v0, :cond_0

    .line 828
    if-eqz p1, :cond_1

    .line 829
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    iget-boolean v0, v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;->zeroOnStart:Z

    invoke-virtual {p0, v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->reset(Z)V

    .line 833
    :goto_0
    iput-boolean p1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->capturing:Z

    .line 835
    :cond_0
    return-void

    .line 831
    :cond_1
    invoke-direct {p0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->process()V

    goto :goto_0
.end method

.method public setLinearCursorEventListener(Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->listener:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;

    .line 816
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->pathBuffer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 223
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->rotBuffer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 224
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->velBuffer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 225
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->accBuffer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 226
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->deltaTimeBuffer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 227
    invoke-super {p0}, Lcom/hcrest/sensors/AbstractMotionDetector;->start()V

    .line 228
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->setCapturing(Z)V

    .line 236
    invoke-super {p0}, Lcom/hcrest/sensors/AbstractMotionDetector;->stop()V

    .line 237
    return-void
.end method
