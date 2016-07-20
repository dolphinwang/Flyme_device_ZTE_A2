.class public Lcom/hcrest/gestures/pickup/PickUpDetector;
.super Lcom/hcrest/sensors/AbstractMotionDetector;
.source "PickUpDetector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hcrest/sensors/AbstractMotionDetector",
        "<",
        "Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALPHA:F = 0.8f

.field private static final DEG2RAD:F = 0.017453292f

.field private static final STATE_INIT:I = -0x1

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_UP:I = 0x2

.field private static final STATE_UP_EVENT_PENDING:I = 0x1


# instance fields
.field private absAngle:I

.field private gX:F

.field private gY:F

.field private gZ:F

.field private isInitialized:Z

.field private isOrientationChange:Z

.field protected mPickUpEventListener:Lcom/hcrest/gestures/pickup/PickUpEventListener;

.field private sampleCount:I

.field private startTime:J

.field private state:I


# direct methods
.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;)V
    .locals 2
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;

    .prologue
    const/4 v1, 0x0

    .line 66
    new-instance v0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;

    invoke-direct {v0}, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 41
    const/16 v0, 0x5a

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->absAngle:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->state:I

    .line 44
    iput v1, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->sampleCount:I

    .line 45
    iput-boolean v1, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isOrientationChange:Z

    .line 46
    iput-boolean v1, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isInitialized:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->startTime:J

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;)V
    .locals 2
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;
    .param p2, "config"    # Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 41
    const/16 v0, 0x5a

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->absAngle:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->state:I

    .line 44
    iput v1, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->sampleCount:I

    .line 45
    iput-boolean v1, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isOrientationChange:Z

    .line 46
    iput-boolean v1, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isInitialized:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->startTime:J

    .line 58
    return-void
.end method


# virtual methods
.method public getPreferredSensorDelay()I
    .locals 1

    .prologue
    .line 82
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
    .line 74
    sget-object v0, Lcom/hcrest/sensors/SensorType;->LINEAR_ACCELERATION:Lcom/hcrest/sensors/SensorType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public onSensorData(Lcom/hcrest/sensors/SensorData;)V
    .locals 13
    .param p1, "sensorData"    # Lcom/hcrest/sensors/SensorData;

    .prologue
    const v10, 0x3c8efa35

    const v8, 0x3f4ccccd    # 0.8f

    const v7, 0x3e4ccccc    # 0.19999999f

    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 122
    iget v6, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->sampleCount:I

    invoke-virtual {p0}, Lcom/hcrest/gestures/pickup/PickUpDetector;->getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;

    move-result-object v5

    check-cast v5, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;

    invoke-virtual {v5}, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->getSensorDataCountOffset()I

    move-result v5

    if-ge v6, v5, :cond_0

    .line 123
    iget v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->sampleCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->sampleCount:I

    .line 177
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getLinearAcceleration()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v4

    .line 130
    .local v4, "v":Lcom/hcrest/sensors/util/Vector3D;
    iget v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gX:F

    mul-float/2addr v5, v8

    invoke-virtual {v4}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v6

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gX:F

    .line 131
    iget v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gY:F

    mul-float/2addr v5, v8

    invoke-virtual {v4}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v6

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gY:F

    .line 132
    iget v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gZ:F

    mul-float/2addr v5, v8

    invoke-virtual {v4}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v6

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gZ:F

    .line 135
    iget v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gX:F

    iget v6, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gX:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gY:F

    iget v7, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gY:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gZ:F

    iget v7, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gZ:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 137
    .local v0, "g":F
    iget v6, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->absAngle:I

    iget-object v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v5, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;

    iget v5, v5, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->angularDeviation:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v10

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float v2, v5, v0

    .line 138
    .local v2, "minGrav":F
    iget v6, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->absAngle:I

    iget-object v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v5, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;

    iget v5, v5, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->angularDeviation:I

    sub-int v5, v6, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v10

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float v1, v5, v0

    .line 140
    .local v1, "maxGrav":F
    iget v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gZ:F

    cmpl-float v5, v5, v2

    if-lez v5, :cond_4

    iget v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gZ:F

    cmpg-float v5, v5, v1

    if-gez v5, :cond_4

    .line 142
    iget v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->state:I

    if-ge v5, v12, :cond_1

    .line 143
    iget v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->state:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 145
    iput-boolean v9, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isOrientationChange:Z

    .line 149
    :goto_1
    iput v12, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->state:I

    .line 150
    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->startTime:J

    .line 167
    :cond_1
    :goto_2
    iget v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->state:I

    if-ne v5, v12, :cond_2

    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->startTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-object v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v5, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;

    iget v5, v5, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->sensorPeriodMs:I

    int-to-double v8, v5

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_2

    .line 170
    const/4 v5, 0x2

    iput v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->state:I

    .line 171
    iget-object v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->mPickUpEventListener:Lcom/hcrest/gestures/pickup/PickUpEventListener;

    if-eqz v5, :cond_2

    .line 172
    iget-object v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->mPickUpEventListener:Lcom/hcrest/gestures/pickup/PickUpEventListener;

    new-instance v6, Lcom/hcrest/gestures/pickup/PickUpEvent;

    iget-boolean v7, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isInitialized:Z

    iget-boolean v8, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isOrientationChange:Z

    invoke-direct {v6, p0, v12, v7, v8}, Lcom/hcrest/gestures/pickup/PickUpEvent;-><init>(Ljava/lang/Object;ZZZ)V

    invoke-interface {v5, v6}, Lcom/hcrest/gestures/pickup/PickUpEventListener;->onPickUpEvent(Lcom/hcrest/gestures/pickup/PickUpEvent;)V

    .line 176
    :cond_2
    iput-boolean v12, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isInitialized:Z

    goto/16 :goto_0

    .line 147
    :cond_3
    iput-boolean v12, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isOrientationChange:Z

    goto :goto_1

    .line 152
    :cond_4
    iget v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->state:I

    if-eqz v5, :cond_1

    .line 154
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->startTime:J

    .line 155
    iget v3, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->state:I

    .line 156
    .local v3, "prevState":I
    iput v9, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->state:I

    .line 157
    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 158
    iput-boolean v12, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isOrientationChange:Z

    .line 159
    iget-object v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->mPickUpEventListener:Lcom/hcrest/gestures/pickup/PickUpEventListener;

    if-eqz v5, :cond_1

    .line 160
    iget-object v5, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->mPickUpEventListener:Lcom/hcrest/gestures/pickup/PickUpEventListener;

    new-instance v6, Lcom/hcrest/gestures/pickup/PickUpEvent;

    iget-boolean v7, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isInitialized:Z

    iget-boolean v8, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isOrientationChange:Z

    invoke-direct {v6, p0, v9, v7, v8}, Lcom/hcrest/gestures/pickup/PickUpEvent;-><init>(Ljava/lang/Object;ZZZ)V

    invoke-interface {v5, v6}, Lcom/hcrest/gestures/pickup/PickUpEventListener;->onPickUpEvent(Lcom/hcrest/gestures/pickup/PickUpEvent;)V

    goto :goto_2

    .line 162
    :cond_5
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 163
    iput-boolean v9, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isOrientationChange:Z

    goto :goto_2
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gZ:F

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gY:F

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->gX:F

    .line 91
    iput v1, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->sampleCount:I

    .line 92
    iput-boolean v1, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->isInitialized:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->state:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->startTime:J

    .line 95
    return-void
.end method

.method public setPickUpEventListener(Lcom/hcrest/gestures/pickup/PickUpEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/gestures/pickup/PickUpEventListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->mPickUpEventListener:Lcom/hcrest/gestures/pickup/PickUpEventListener;

    .line 104
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/hcrest/sensors/AbstractMotionDetector;->start()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetector;->sampleCount:I

    .line 113
    return-void
.end method
