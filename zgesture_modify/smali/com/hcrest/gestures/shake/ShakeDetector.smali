.class public Lcom/hcrest/gestures/shake/ShakeDetector;
.super Lcom/hcrest/sensors/AbstractMotionDetector;
.source "ShakeDetector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hcrest/sensors/AbstractMotionDetector",
        "<",
        "Lcom/hcrest/gestures/shake/ShakeDetectorConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final SD_MAG_LOWER:F = 0.8f

.field private static final SD_PARAM_OUT_SCALE:F

.field private static final SD_PARAM_SCALE:F = 4.0f

.field private static final SD_PI:F = 3.1415963f


# instance fields
.field private isShaking:Z

.field protected mShakeEventListener:Lcom/hcrest/gestures/shake/ShakeEventListener;

.field private repetitionCount:I

.field private sample:I

.field private thetaLast:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v2, v3}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/hcrest/gestures/shake/ShakeDetector;->SD_PARAM_OUT_SCALE:F

    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/hcrest/sensors/SensorAdapter;

    .prologue
    .line 44
    sget-object v0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->AGGRESSIVE_CONFIG:Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/gestures/shake/ShakeDetector;->isShaking:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/shake/ShakeDetectorConfig;)V
    .locals 1
    .param p1, "adapter"    # Lcom/hcrest/sensors/SensorAdapter;
    .param p2, "config"    # Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/gestures/shake/ShakeDetector;->isShaking:Z

    .line 55
    return-void
.end method


# virtual methods
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
    .line 82
    sget-object v0, Lcom/hcrest/sensors/SensorType;->ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public onSensorData(Lcom/hcrest/sensors/SensorData;)V
    .locals 22
    .param p1, "sensorData"    # Lcom/hcrest/sensors/SensorData;

    .prologue
    .line 91
    const/4 v13, 0x0

    .line 92
    .local v13, "shakeCertainty":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    move-object/from16 v18, v0

    check-cast v18, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueNoShake:F

    move/from16 v16, v0

    .line 95
    .local v16, "value":F
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getAngularVelocitySamplePeriod()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3089705f    # 1.0E-9f

    mul-float v11, v18, v19

    .line 96
    .local v11, "period":F
    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    move-object/from16 v18, v0

    check-cast v18, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->frequencyThreshold:F

    move/from16 v18, v0

    mul-float v18, v18, v20

    mul-float v18, v18, v11

    div-float v12, v19, v18

    .line 98
    .local v12, "sampleThreshold":F
    invoke-virtual/range {p1 .. p1}, Lcom/hcrest/sensors/SensorData;->getAngularVelocity()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v5

    .line 100
    .local v5, "angularVelocity":Lcom/hcrest/sensors/util/Vector3D;
    invoke-virtual {v5}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v18

    invoke-virtual {v5}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v19

    mul-float v18, v18, v19

    invoke-virtual {v5}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v19

    invoke-virtual {v5}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v20

    mul-float v19, v19, v20

    add-float v9, v18, v19

    .line 102
    .local v9, "magSqr":F
    invoke-virtual {v5}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual {v5}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .line 104
    .local v14, "theta":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->repetitionCount:I

    move/from16 v18, v0

    if-lez v18, :cond_0

    .line 105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->sample:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hcrest/gestures/shake/ShakeDetector;->sample:I

    .line 106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->sample:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v18, v12

    if-lez v18, :cond_0

    .line 107
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hcrest/gestures/shake/ShakeDetector;->sample:I

    .line 108
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hcrest/gestures/shake/ShakeDetector;->repetitionCount:I

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->thetaLast:F

    move/from16 v18, v0

    sub-float v18, v14, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 113
    .local v15, "thetaDelta":F
    const v18, 0x40490fea

    cmpl-float v18, v15, v18

    if-lez v18, :cond_1

    .line 114
    const v18, 0x40c90fea

    sub-float v15, v18, v15

    .line 116
    :cond_1
    const v18, 0x40490fea

    sub-float v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 117
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->repetitionCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v6, v18, v19

    .line 119
    .local v6, "magHysteresis":F
    const v7, 0x3f4ccccd    # 0.8f

    .line 120
    .local v7, "magLower":F
    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v7

    mul-float v10, v18, v6

    .line 121
    .local v10, "magUpper":F
    mul-float v18, v7, v7

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v19, v19, v7

    mul-float v19, v19, v10

    add-float v18, v18, v19

    mul-float v19, v10, v10

    add-float v8, v18, v19

    .line 123
    .local v8, "magScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    move-object/from16 v18, v0

    check-cast v18, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->angVelThreshold:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    move-object/from16 v18, v0

    check-cast v18, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->angVelThreshold:F

    move/from16 v18, v0

    mul-float v4, v19, v18

    .line 125
    .local v4, "angVelThresholdSqr":F
    mul-float v18, v4, v8

    cmpl-float v18, v9, v18

    if-lez v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->repetitionCount:I

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const v18, 0x3f860a9c

    cmpg-float v18, v15, v18

    if-gez v18, :cond_3

    .line 126
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hcrest/gestures/shake/ShakeDetector;->sample:I

    .line 127
    move-object/from16 v0, p0

    iput v14, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->thetaLast:F

    .line 128
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->repetitionCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/hcrest/gestures/shake/ShakeDetector;->repetitionCount:I

    .line 131
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->repetitionCount:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    move-object/from16 v18, v0

    check-cast v18, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->repetitions:I

    move/from16 v18, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 132
    const/high16 v13, 0x3f800000    # 1.0f

    .line 135
    :cond_4
    const/16 v18, 0x0

    cmpl-float v18, v13, v18

    if-lez v18, :cond_6

    .line 136
    const/high16 v18, 0x40800000    # 4.0f

    mul-float v18, v18, v13

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v18

    sget v20, Lcom/hcrest/gestures/shake/ShakeDetector;->SD_PARAM_OUT_SCALE:F

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    .line 137
    .local v17, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    move-object/from16 v18, v0

    check-cast v18, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueWithShake:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    move-object/from16 v18, v0

    check-cast v18, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueNoShake:F

    move/from16 v18, v0

    sub-float v18, v19, v18

    mul-float v17, v17, v18

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    move-object/from16 v18, v0

    check-cast v18, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueNoShake:F

    move/from16 v18, v0

    add-float v17, v17, v18

    .line 139
    move/from16 v16, v17

    .line 140
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->isShaking:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mShakeEventListener:Lcom/hcrest/gestures/shake/ShakeEventListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mShakeEventListener:Lcom/hcrest/gestures/shake/ShakeEventListener;

    move-object/from16 v18, v0

    new-instance v19, Lcom/hcrest/gestures/shake/ShakeEvent;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/hcrest/gestures/shake/ShakeEvent;-><init>(Ljava/lang/Object;ZFF)V

    invoke-interface/range {v18 .. v19}, Lcom/hcrest/gestures/shake/ShakeEventListener;->onShakeEvent(Lcom/hcrest/gestures/shake/ShakeEvent;)V

    .line 143
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hcrest/gestures/shake/ShakeDetector;->isShaking:Z

    .line 150
    .end local v17    # "x":F
    :goto_0
    return-void

    .line 145
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->isShaking:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mShakeEventListener:Lcom/hcrest/gestures/shake/ShakeEventListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/hcrest/gestures/shake/ShakeDetector;->mShakeEventListener:Lcom/hcrest/gestures/shake/ShakeEventListener;

    move-object/from16 v18, v0

    new-instance v19, Lcom/hcrest/gestures/shake/ShakeEvent;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v13}, Lcom/hcrest/gestures/shake/ShakeEvent;-><init>(Ljava/lang/Object;ZFF)V

    invoke-interface/range {v18 .. v19}, Lcom/hcrest/gestures/shake/ShakeEventListener;->onShakeEvent(Lcom/hcrest/gestures/shake/ShakeEvent;)V

    .line 148
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/hcrest/gestures/shake/ShakeDetector;->isShaking:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/hcrest/gestures/shake/ShakeDetector;->repetitionCount:I

    .line 73
    iput v0, p0, Lcom/hcrest/gestures/shake/ShakeDetector;->sample:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/hcrest/gestures/shake/ShakeDetector;->thetaLast:F

    .line 75
    return-void
.end method

.method public setShakeEventListener(Lcom/hcrest/gestures/shake/ShakeEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/gestures/shake/ShakeEventListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/hcrest/gestures/shake/ShakeDetector;->mShakeEventListener:Lcom/hcrest/gestures/shake/ShakeEventListener;

    .line 64
    return-void
.end method
