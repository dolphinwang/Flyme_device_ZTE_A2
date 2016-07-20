.class public Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;
.super Lcom/hcrest/sensors/AbstractMotionDetector;
.source "StopWithinTiltRegionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;,
        Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$Vector3D;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hcrest/sensors/AbstractMotionDetector",
        "<",
        "Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEG2RAD:F = 0.017453292f

.field private static final SENSOR_DELAY:I = 0x9c40


# instance fields
.field private accMagnitude:F

.field private farTime:F

.field private filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

.field private isNear:Z

.field private motionTime:F

.field private motionTimer:F

.field private nearTime:F

.field private stableTime:F

.field private stopWithinTiltRegionEventListener:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;


# direct methods
.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;)V
    .locals 1
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;
    .param p2, "config"    # Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 25
    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTimer:F

    .line 31
    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->accMagnitude:F

    .line 45
    return-void
.end method


# virtual methods
.method public getPreferredSensorDelay()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x9c40

    return v0
.end method

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
    .line 68
    sget-object v1, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION:Lcom/hcrest/sensors/SensorType;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 70
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    iget-object v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget-boolean v1, v1, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->lowPower:Z

    if-nez v1, :cond_0

    .line 71
    sget-object v1, Lcom/hcrest/sensors/SensorType;->GRAVITY:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget-object v1, v1, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->proximityMode:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;

    sget-object v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;->NONE:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;

    if-eq v1, v2, :cond_1

    .line 75
    sget-object v1, Lcom/hcrest/sensors/SensorType;->PROXIMITY:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    return-object v0
.end method

.method public getTriggerSensor()Lcom/hcrest/sensors/SensorType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/hcrest/sensors/SensorType;->ALL:Lcom/hcrest/sensors/SensorType;

    return-object v0
.end method

.method public onSensorData(Lcom/hcrest/sensors/SensorData;)V
    .locals 30
    .param p1, "sensorData"    # Lcom/hcrest/sensors/SensorData;

    .prologue
    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getSensorTypes()Ljava/util/EnumSet;

    move-result-object v2

    sget-object v3, Lcom/hcrest/sensors/SensorType;->PROXIMITY:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getProximity()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->isNear:Z

    .line 118
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getSensorTypes()Ljava/util/EnumSet;

    move-result-object v2

    sget-object v3, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION:Lcom/hcrest/sensors/SensorType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getLinearAcceleration()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v2

    const-wide v28, 0x402399999999999aL    # 9.8

    sub-double v2, v2, v28

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->accMagnitude:F

    .line 122
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getSensorTypes()Ljava/util/EnumSet;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget-boolean v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->lowPower:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION:Lcom/hcrest/sensors/SensorType;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget-boolean v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->lowPower:Z

    if-eqz v2, :cond_d

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getLinearAcceleration()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v14

    .line 127
    .local v14, "acc":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->norm()D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v16, v0

    .line 128
    .local v16, "accNorm":F
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_2

    .line 129
    const v2, 0x411ccccd    # 9.8f

    div-float v2, v2, v16

    invoke-virtual {v14, v2}, Lcom/hcrest/sensors/util/Vector3D;->scalarMultiply(F)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v14

    .line 135
    .end local v16    # "accNorm":F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->isNear:Z

    if-eqz v2, :cond_e

    .line 136
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->nearTime:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    invoke-virtual {v3}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getPeriod()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->nearTime:F

    .line 137
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->farTime:F

    .line 143
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v6

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v7

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->setSensorValues(JFFF)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget-object v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->reorientation:Lcom/hcrest/sensors/util/Quaternion;

    new-instance v3, Lcom/hcrest/sensors/util/Vector3D;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    invoke-virtual {v4}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getX()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    invoke-virtual {v12}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getZ()F

    move-result v27

    move/from16 v0, v27

    invoke-direct {v3, v4, v12, v0}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/hcrest/sensors/util/Quaternion;->applyTo(Lcom/hcrest/sensors/util/Vector3D;)Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v17

    .line 150
    .local v17, "accRot":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual/range {v17 .. v17}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v18

    .line 151
    .local v18, "accX":F
    invoke-virtual/range {v17 .. v17}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v20

    .line 152
    .local v20, "accY":F
    invoke-virtual/range {v17 .. v17}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v21

    .line 154
    .local v21, "accZ":F
    move/from16 v0, v20

    neg-float v2, v0

    float-to-double v2, v2

    move/from16 v0, v21

    neg-float v4, v0

    float-to-double v0, v4

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v5, v2

    .line 155
    .local v5, "roll":F
    const v2, 0x411ccccd    # 9.8f

    div-float v19, v18, v2

    .line 157
    .local v19, "accXNorm":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v19, v2

    if-lez v2, :cond_f

    .line 158
    const v6, 0x3fc90fdb

    .line 165
    .local v6, "pitch":F
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget-boolean v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->rollUnsigned:Z

    if-eqz v2, :cond_3

    .line 166
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 168
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget-boolean v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->pitchUnsigned:Z

    if-eqz v2, :cond_4

    .line 169
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 172
    :cond_4
    const/4 v2, 0x3

    new-array v15, v2, [F

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    invoke-virtual {v4}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    aput v3, v15, v2

    const/4 v2, 0x1

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    invoke-virtual {v4}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    aput v3, v15, v2

    const/4 v2, 0x2

    invoke-virtual {v14}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    invoke-virtual {v4}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getZ()F

    move-result v4

    sub-float/2addr v3, v4

    aput v3, v15, v2

    .line 177
    .local v15, "accErr":[F
    const/4 v2, 0x0

    aget v2, v15, v2

    const/4 v3, 0x0

    aget v3, v15, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v15, v3

    const/4 v4, 0x1

    aget v4, v15, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v15, v3

    const/4 v4, 0x2

    aget v4, v15, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v7, v2

    .line 181
    .local v7, "stability":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->rollMin:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->rollMax:F

    cmpg-float v2, v5, v2

    if-gtz v2, :cond_11

    const/16 v25, 0x1

    .line 183
    .local v25, "rollGood":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->sinPitchMin:F

    cmpg-float v2, v2, v19

    if-gtz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->sinPitchMax:F

    cmpg-float v2, v19, v2

    if-gtz v2, :cond_12

    const/16 v24, 0x1

    .line 185
    .local v24, "pitchGood":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget-boolean v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->lowPower:Z

    if-eqz v2, :cond_13

    const/high16 v26, 0x40000000    # 2.0f

    .line 187
    .local v26, "sensorNoise":F
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->stableThreshold:F

    mul-float v2, v2, v26

    cmpg-float v2, v7, v2

    if-gtz v2, :cond_14

    const/16 v23, 0x1

    .line 189
    .local v23, "isStable":Z
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->accMagnitude:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->motionThreshold:F

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_15

    const/16 v22, 0x1

    .line 191
    .local v22, "inMotion":Z
    :goto_9
    if-eqz v22, :cond_16

    .line 192
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTime:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    invoke-virtual {v3}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getPeriod()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTime:F

    .line 197
    :goto_a
    if-eqz v23, :cond_17

    .line 198
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->stableTime:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    invoke-virtual {v3}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getPeriod()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->stableTime:F

    .line 203
    :goto_b
    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->stableTime:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->stableDebounceTime:F

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_18

    const/4 v10, 0x1

    .line 204
    .local v10, "isStableDebounced":Z
    :goto_c
    if-eqz v22, :cond_19

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTime:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->motionDebounce:F

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_19

    const/4 v11, 0x1

    .line 205
    .local v11, "inMotionDebounced":Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->isNear:Z

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->farTime:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->farDebounceTime:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1a

    const/4 v8, 0x1

    .line 206
    .local v8, "isFarDebounced":Z
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->isNear:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->nearTime:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->nearDebounceTime:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1b

    const/4 v9, 0x1

    .line 208
    .local v9, "isNearDebounced":Z
    :goto_f
    if-eqz v11, :cond_7

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget-object v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->proximityMode:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;

    sget-object v3, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;->NONE:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;

    if-ne v2, v3, :cond_7

    .line 209
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTimer:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    .line 212
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v3, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->motionTimeout:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->nearDebounceTime:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTimer:F

    .line 215
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x3c8efa35

    div-float v3, v6, v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nroll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x3c8efa35

    div-float v3, v5, v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v25, :cond_1c

    if-eqz v24, :cond_1c

    const-string v2, "position good"

    :goto_10
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->isNear:Z

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "near"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->nearTime:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->nearDebounceTime:F

    cmpl-float v2, v12, v2

    if-lez v2, :cond_1d

    const-string v2, "!"

    :goto_11
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_12
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v23, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->stableTime:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->stableDebounceTime:F

    cmpl-float v2, v12, v2

    if-lez v2, :cond_20

    const-string v2, "!"

    :goto_13
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_14
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v22, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inMotion"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTime:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->motionDebounce:F

    cmpl-float v2, v12, v2

    if-lez v2, :cond_22

    const-string v2, "!"

    :goto_15
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_16
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, "debugInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTimer:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_25

    .line 224
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTimer:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    invoke-virtual {v3}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getPeriod()F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTimer:F

    .line 226
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTimer:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    .line 230
    :cond_8
    if-eqz v25, :cond_25

    if-eqz v24, :cond_25

    if-eqz v10, :cond_25

    if-nez v9, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget-object v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->proximityMode:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;

    sget-object v3, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;->NONE:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;

    if-ne v2, v3, :cond_25

    .line 231
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTimer:F

    .line 232
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTime:F

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->stopWithinTiltRegionEventListener:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;

    if-eqz v2, :cond_a

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->stopWithinTiltRegionEventListener:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;

    move-object/from16 v27, v0

    new-instance v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;

    const/4 v4, 0x1

    if-eqz v25, :cond_24

    if-eqz v24, :cond_24

    const/4 v12, 0x1

    :goto_17
    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;-><init>(Ljava/lang/Object;ZFFFZZZZZLjava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;->onStopWithinTiltRegionEvent(Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;)V

    .line 247
    .end local v5    # "roll":F
    .end local v6    # "pitch":F
    .end local v7    # "stability":F
    .end local v8    # "isFarDebounced":Z
    .end local v9    # "isNearDebounced":Z
    .end local v10    # "isStableDebounced":Z
    .end local v11    # "inMotionDebounced":Z
    .end local v13    # "debugInfo":Ljava/lang/String;
    .end local v14    # "acc":Lcom/hcrest/sensors/util/Vector3D;
    .end local v15    # "accErr":[F
    .end local v17    # "accRot":Lcom/hcrest/sensors/util/Vector3D;
    .end local v18    # "accX":F
    .end local v19    # "accXNorm":F
    .end local v20    # "accY":F
    .end local v21    # "accZ":F
    .end local v22    # "inMotion":Z
    .end local v23    # "isStable":Z
    .end local v24    # "pitchGood":Z
    .end local v25    # "rollGood":Z
    .end local v26    # "sensorNoise":F
    :cond_a
    :goto_18
    return-void

    .line 115
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 122
    :cond_c
    sget-object v2, Lcom/hcrest/sensors/SensorType;->GRAVITY:Lcom/hcrest/sensors/SensorType;

    goto/16 :goto_1

    .line 132
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getGravity()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v14

    .restart local v14    # "acc":Lcom/hcrest/sensors/util/Vector3D;
    goto/16 :goto_2

    .line 139
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->farTime:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    invoke-virtual {v3}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;->getPeriod()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->farTime:F

    .line 140
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->nearTime:F

    goto/16 :goto_3

    .line 159
    .restart local v5    # "roll":F
    .restart local v17    # "accRot":Lcom/hcrest/sensors/util/Vector3D;
    .restart local v18    # "accX":F
    .restart local v19    # "accXNorm":F
    .restart local v20    # "accY":F
    .restart local v21    # "accZ":F
    :cond_f
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, v19, v2

    if-gez v2, :cond_10

    .line 160
    const v6, -0x4036f025

    .restart local v6    # "pitch":F
    goto/16 :goto_4

    .line 162
    .end local v6    # "pitch":F
    :cond_10
    move/from16 v0, v19

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    double-to-float v6, v2

    .restart local v6    # "pitch":F
    goto/16 :goto_4

    .line 181
    .restart local v7    # "stability":F
    .restart local v15    # "accErr":[F
    :cond_11
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 183
    .restart local v25    # "rollGood":Z
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 185
    .restart local v24    # "pitchGood":Z
    :cond_13
    const/high16 v26, 0x3f800000    # 1.0f

    goto/16 :goto_7

    .line 187
    .restart local v26    # "sensorNoise":F
    :cond_14
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 189
    .restart local v23    # "isStable":Z
    :cond_15
    const/16 v22, 0x0

    goto/16 :goto_9

    .line 194
    .restart local v22    # "inMotion":Z
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTime:F

    goto/16 :goto_a

    .line 200
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->stableTime:F

    goto/16 :goto_b

    .line 203
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 204
    .restart local v10    # "isStableDebounced":Z
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_d

    .line 205
    .restart local v11    # "inMotionDebounced":Z
    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_e

    .line 206
    .restart local v8    # "isFarDebounced":Z
    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 215
    .restart local v9    # "isNearDebounced":Z
    :cond_1c
    const-string v2, ""

    goto/16 :goto_10

    :cond_1d
    const-string v2, ""

    goto/16 :goto_11

    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "far"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->farTime:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v2, v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->farDebounceTime:F

    cmpl-float v2, v12, v2

    if-lez v2, :cond_1f

    const-string v2, "!"

    :goto_19
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    :cond_1f
    const-string v2, ""

    goto :goto_19

    :cond_20
    const-string v2, ""

    goto/16 :goto_13

    :cond_21
    const-string v2, ""

    goto/16 :goto_14

    :cond_22
    const-string v2, ""

    goto/16 :goto_15

    :cond_23
    const-string v2, ""

    goto/16 :goto_16

    .line 236
    .restart local v13    # "debugInfo":Ljava/lang/String;
    :cond_24
    const/4 v12, 0x0

    goto/16 :goto_17

    .line 242
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->stopWithinTiltRegionEventListener:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;

    if-eqz v2, :cond_a

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->stopWithinTiltRegionEventListener:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;

    move-object/from16 v27, v0

    new-instance v2, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;

    const/4 v4, 0x0

    if-eqz v25, :cond_26

    if-eqz v24, :cond_26

    const/4 v12, 0x1

    :goto_1a
    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;-><init>(Ljava/lang/Object;ZFFFZZZZZLjava/lang/String;)V

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;->onStopWithinTiltRegionEvent(Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;)V

    goto/16 :goto_18

    :cond_26
    const/4 v12, 0x0

    goto :goto_1a
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public setStopWithinTiltRegionEventListener(Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->stopWithinTiltRegionEventListener:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEventListener;

    .line 53
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 103
    new-instance v1, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    const v2, 0x9c40

    iget-object v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;

    iget v0, v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->groupDelay:F

    invoke-direct {v1, p0, v2, v0}, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;-><init>(Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;IF)V

    iput-object v1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->filteredV3D:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector$GroupDelayFilteredVector3D;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetector;->motionTimer:F

    .line 105
    invoke-super {p0}, Lcom/hcrest/sensors/AbstractMotionDetector;->start()V

    .line 106
    return-void
.end method
