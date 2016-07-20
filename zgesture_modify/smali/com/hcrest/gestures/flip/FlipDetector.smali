.class public Lcom/hcrest/gestures/flip/FlipDetector;
.super Lcom/hcrest/sensors/AbstractMotionDetector;
.source "FlipDetector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hcrest/sensors/AbstractMotionDetector",
        "<",
        "Lcom/hcrest/gestures/flip/FlipDetectorConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALPHA:F = 0.8f

.field private static final DEG2RAD:F = 0.017453292f

.field private static final STATE_DOWN:I = 0x2

.field private static final STATE_DOWN_EVENT_PENDING:I = 0x1

.field private static final STATE_INIT:I = -0x1

.field private static final STATE_NORMAL:I


# instance fields
.field private absAngle:I

.field private gX:F

.field private gY:F

.field private gZ:F

.field private isInitialized:Z

.field private isOrientationChange:Z

.field protected mFlipEventListener:Lcom/hcrest/gestures/flip/FlipEventListener;

.field private sampleCount:I

.field private startTime:J

.field private state:I


# direct methods
.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;)V
    .locals 2
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;

    .prologue
    const/4 v1, 0x0

    .line 65
    new-instance v0, Lcom/hcrest/gestures/flip/FlipDetectorConfig;

    invoke-direct {v0}, Lcom/hcrest/gestures/flip/FlipDetectorConfig;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 40
    iput v1, p0, Lcom/hcrest/gestures/flip/FlipDetector;->absAngle:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/hcrest/gestures/flip/FlipDetector;->state:I

    .line 43
    iput v1, p0, Lcom/hcrest/gestures/flip/FlipDetector;->sampleCount:I

    .line 44
    iput-boolean v1, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isOrientationChange:Z

    .line 45
    iput-boolean v1, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isInitialized:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/gestures/flip/FlipDetector;->startTime:J

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/flip/FlipDetectorConfig;)V
    .locals 2
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;
    .param p2, "config"    # Lcom/hcrest/gestures/flip/FlipDetectorConfig;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 40
    iput v1, p0, Lcom/hcrest/gestures/flip/FlipDetector;->absAngle:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/hcrest/gestures/flip/FlipDetector;->state:I

    .line 43
    iput v1, p0, Lcom/hcrest/gestures/flip/FlipDetector;->sampleCount:I

    .line 44
    iput-boolean v1, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isOrientationChange:Z

    .line 45
    iput-boolean v1, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isInitialized:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/gestures/flip/FlipDetector;->startTime:J

    .line 57
    return-void
.end method


# virtual methods
.method public getPreferredSensorDelay()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x3

    return v0
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
    .line 85
    sget-object v0, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION:Lcom/hcrest/sensors/SensorType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public onSensorData(Lcom/hcrest/sensors/SensorData;)V
    .locals 11
    .param p1, "sensorData"    # Lcom/hcrest/sensors/SensorData;

    .prologue
    const/4 v9, -0x1

    const v7, 0x3f4ccccd    # 0.8f

    const v6, 0x3e4ccccc    # 0.19999999f

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 125
    iget v5, p0, Lcom/hcrest/gestures/flip/FlipDetector;->sampleCount:I

    invoke-virtual {p0}, Lcom/hcrest/gestures/flip/FlipDetector;->getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;

    move-result-object v4

    check-cast v4, Lcom/hcrest/gestures/flip/FlipDetectorConfig;

    invoke-virtual {v4}, Lcom/hcrest/gestures/flip/FlipDetectorConfig;->getSensorDataCountOffset()I

    move-result v4

    if-ge v5, v4, :cond_0

    .line 126
    iget v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->sampleCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->sampleCount:I

    .line 179
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getLinearAcceleration()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v3

    .line 133
    .local v3, "v":Lcom/hcrest/sensors/util/Vector3D;
    iget v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gX:F

    mul-float/2addr v4, v7

    invoke-virtual {v3}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gX:F

    .line 134
    iget v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gY:F

    mul-float/2addr v4, v7

    invoke-virtual {v3}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gY:F

    .line 135
    iget v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gZ:F

    mul-float/2addr v4, v7

    invoke-virtual {v3}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gZ:F

    .line 138
    iget v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gX:F

    iget v5, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gX:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gY:F

    iget v6, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gY:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gZ:F

    iget v6, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gZ:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 140
    .local v0, "g":F
    iget v5, p0, Lcom/hcrest/gestures/flip/FlipDetector;->absAngle:I

    invoke-virtual {p0}, Lcom/hcrest/gestures/flip/FlipDetector;->getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;

    move-result-object v4

    check-cast v4, Lcom/hcrest/gestures/flip/FlipDetectorConfig;

    invoke-virtual {v4}, Lcom/hcrest/gestures/flip/FlipDetectorConfig;->getAngularDeviation()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3c8efa35

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v1, v4, v0

    .line 142
    .local v1, "minGrav":F
    iget v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gZ:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_4

    .line 144
    iget v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->state:I

    if-ge v4, v10, :cond_1

    .line 145
    iget v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->state:I

    if-ne v4, v9, :cond_3

    .line 147
    iput-boolean v8, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isOrientationChange:Z

    .line 151
    :goto_1
    iput v10, p0, Lcom/hcrest/gestures/flip/FlipDetector;->state:I

    .line 152
    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->startTime:J

    .line 169
    :cond_1
    :goto_2
    iget v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->state:I

    if-ne v4, v10, :cond_2

    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/hcrest/gestures/flip/FlipDetector;->startTime:J

    sub-long/2addr v4, v6

    long-to-double v6, v4

    invoke-virtual {p0}, Lcom/hcrest/gestures/flip/FlipDetector;->getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;

    move-result-object v4

    check-cast v4, Lcom/hcrest/gestures/flip/FlipDetectorConfig;

    invoke-virtual {v4}, Lcom/hcrest/gestures/flip/FlipDetectorConfig;->getSensorPeriodMs()I

    move-result v4

    int-to-double v4, v4

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v8

    cmpl-double v4, v6, v4

    if-ltz v4, :cond_2

    .line 172
    const/4 v4, 0x2

    iput v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->state:I

    .line 173
    iget-object v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->mFlipEventListener:Lcom/hcrest/gestures/flip/FlipEventListener;

    if-eqz v4, :cond_2

    .line 174
    iget-object v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->mFlipEventListener:Lcom/hcrest/gestures/flip/FlipEventListener;

    new-instance v5, Lcom/hcrest/gestures/flip/FlipEvent;

    iget-boolean v6, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isInitialized:Z

    iget-boolean v7, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isOrientationChange:Z

    invoke-direct {v5, p0, v10, v6, v7}, Lcom/hcrest/gestures/flip/FlipEvent;-><init>(Ljava/lang/Object;ZZZ)V

    invoke-interface {v4, v5}, Lcom/hcrest/gestures/flip/FlipEventListener;->onFlipEvent(Lcom/hcrest/gestures/flip/FlipEvent;)V

    .line 178
    :cond_2
    iput-boolean v10, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isInitialized:Z

    goto/16 :goto_0

    .line 149
    :cond_3
    iput-boolean v10, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isOrientationChange:Z

    goto :goto_1

    .line 154
    :cond_4
    iget v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->state:I

    if-eqz v4, :cond_1

    .line 156
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->startTime:J

    .line 157
    iget v2, p0, Lcom/hcrest/gestures/flip/FlipDetector;->state:I

    .line 158
    .local v2, "prevState":I
    iput v8, p0, Lcom/hcrest/gestures/flip/FlipDetector;->state:I

    .line 159
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 160
    iput-boolean v10, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isOrientationChange:Z

    .line 161
    iget-object v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->mFlipEventListener:Lcom/hcrest/gestures/flip/FlipEventListener;

    if-eqz v4, :cond_1

    .line 162
    iget-object v4, p0, Lcom/hcrest/gestures/flip/FlipDetector;->mFlipEventListener:Lcom/hcrest/gestures/flip/FlipEventListener;

    new-instance v5, Lcom/hcrest/gestures/flip/FlipEvent;

    iget-boolean v6, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isInitialized:Z

    iget-boolean v7, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isOrientationChange:Z

    invoke-direct {v5, p0, v8, v6, v7}, Lcom/hcrest/gestures/flip/FlipEvent;-><init>(Ljava/lang/Object;ZZZ)V

    invoke-interface {v4, v5}, Lcom/hcrest/gestures/flip/FlipEventListener;->onFlipEvent(Lcom/hcrest/gestures/flip/FlipEvent;)V

    goto :goto_2

    .line 164
    :cond_5
    if-ne v2, v9, :cond_1

    .line 165
    iput-boolean v8, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isOrientationChange:Z

    goto :goto_2
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gZ:F

    iput v0, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gY:F

    iput v0, p0, Lcom/hcrest/gestures/flip/FlipDetector;->gX:F

    .line 74
    iput v1, p0, Lcom/hcrest/gestures/flip/FlipDetector;->sampleCount:I

    .line 75
    iput-boolean v1, p0, Lcom/hcrest/gestures/flip/FlipDetector;->isInitialized:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/hcrest/gestures/flip/FlipDetector;->state:I

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/gestures/flip/FlipDetector;->startTime:J

    .line 78
    return-void
.end method

.method public setFlipEventListener(Lcom/hcrest/gestures/flip/FlipEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/gestures/flip/FlipEventListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/hcrest/gestures/flip/FlipDetector;->mFlipEventListener:Lcom/hcrest/gestures/flip/FlipEventListener;

    .line 107
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/hcrest/sensors/AbstractMotionDetector;->start()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/hcrest/gestures/flip/FlipDetector;->sampleCount:I

    .line 116
    return-void
.end method
