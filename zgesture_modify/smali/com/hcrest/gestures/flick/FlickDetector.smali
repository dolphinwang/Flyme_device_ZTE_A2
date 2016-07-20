.class public Lcom/hcrest/gestures/flick/FlickDetector;
.super Lcom/hcrest/sensors/AbstractMotionDetector;
.source "FlickDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/gestures/flick/FlickDetector$1;,
        Lcom/hcrest/gestures/flick/FlickDetector$Direction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hcrest/sensors/AbstractMotionDetector",
        "<",
        "Lcom/hcrest/gestures/flick/FlickDetectorConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private direction:I

.field private lastTimestamp:J

.field private lastValue:D

.field private mFlickEventListener:Lcom/hcrest/gestures/flick/FlickEventListener;

.field private peakTime:J

.field private thresholdExceedLookingForMaxVelocity:Z


# direct methods
.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/hcrest/sensors/SensorAdapter;

    .prologue
    .line 53
    new-instance v0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;

    invoke-direct {v0}, Lcom/hcrest/gestures/flick/FlickDetectorConfig;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/hcrest/gestures/flick/FlickDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/flick/FlickDetectorConfig;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/flick/FlickDetectorConfig;)V
    .locals 4
    .param p1, "adapter"    # Lcom/hcrest/sensors/SensorAdapter;
    .param p2, "config"    # Lcom/hcrest/gestures/flick/FlickDetectorConfig;

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->lastValue:D

    .line 39
    iput-wide v2, p0, Lcom/hcrest/gestures/flick/FlickDetector;->lastTimestamp:J

    .line 40
    iput-wide v2, p0, Lcom/hcrest/gestures/flick/FlickDetector;->peakTime:J

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->direction:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->thresholdExceedLookingForMaxVelocity:Z

    .line 64
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
    .line 92
    sget-object v0, Lcom/hcrest/sensors/SensorType;->ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public onSensorData(Lcom/hcrest/sensors/SensorData;)V
    .locals 14
    .param p1, "sensorData"    # Lcom/hcrest/sensors/SensorData;

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getAngularVelocity()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v6

    .line 107
    .local v6, "v":Lcom/hcrest/sensors/util/Vector3D;
    const-wide/16 v8, 0x0

    .line 108
    .local v8, "value":D
    sget-object v1, Lcom/hcrest/gestures/flick/FlickDetector$1;->$SwitchMap$com$hcrest$sensors$util$RotationAxis:[I

    iget-object v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;

    iget-object v0, v0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    invoke-virtual {v0}, Lcom/hcrest/sensors/util/RotationAxis;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 124
    .local v4, "absValue":D
    iget-object v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;

    iget-wide v0, v0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->velocityThreshold:D

    cmpl-double v0, v4, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->thresholdExceedLookingForMaxVelocity:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v0

    iget-wide v10, p0, Lcom/hcrest/gestures/flick/FlickDetector;->peakTime:J

    sub-long v10, v0, v10

    iget-object v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;

    iget-wide v0, v0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->quiescentTimeThresholdMs:J

    const-wide/32 v12, 0xf4240

    mul-long/2addr v0, v12

    cmp-long v0, v10, v0

    if-lez v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->thresholdExceedLookingForMaxVelocity:Z

    .line 128
    iget-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->lastValue:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_3

    .line 129
    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->peakTime:J

    .line 130
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->direction:I

    .line 148
    :cond_1
    :goto_2
    iput-wide v8, p0, Lcom/hcrest/gestures/flick/FlickDetector;->lastValue:D

    .line 149
    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->lastTimestamp:J

    .line 150
    return-void

    .line 110
    .end local v4    # "absValue":D
    :pswitch_0
    invoke-virtual {v6}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v0

    float-to-double v8, v0

    .line 111
    goto :goto_0

    .line 113
    :pswitch_1
    invoke-virtual {v6}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v0

    float-to-double v8, v0

    .line 114
    goto :goto_0

    .line 116
    :pswitch_2
    invoke-virtual {v6}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v0

    float-to-double v8, v0

    goto :goto_0

    .line 130
    .restart local v4    # "absValue":D
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 132
    :cond_3
    iget-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->lastTimestamp:J

    iput-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->peakTime:J

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->thresholdExceedLookingForMaxVelocity:Z

    .line 134
    iget v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->direction:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;

    iget-object v0, v0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    sget-object v1, Lcom/hcrest/sensors/util/RotationAxis;->PITCH:Lcom/hcrest/sensors/util/RotationAxis;

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/util/RotationAxis;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    iget v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    sget-object v3, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->UP:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    .line 141
    .local v3, "dir":Lcom/hcrest/gestures/flick/FlickDetector$Direction;
    :goto_3
    iget-object v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->mFlickEventListener:Lcom/hcrest/gestures/flick/FlickEventListener;

    if-eqz v0, :cond_1

    .line 142
    iget-object v7, p0, Lcom/hcrest/gestures/flick/FlickDetector;->mFlickEventListener:Lcom/hcrest/gestures/flick/FlickEventListener;

    new-instance v0, Lcom/hcrest/gestures/flick/FlickEvent;

    iget-object v1, p0, Lcom/hcrest/gestures/flick/FlickDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/flick/FlickDetectorConfig;

    iget-object v2, v1, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/hcrest/gestures/flick/FlickEvent;-><init>(Ljava/lang/Object;Lcom/hcrest/sensors/util/RotationAxis;Lcom/hcrest/gestures/flick/FlickDetector$Direction;D)V

    invoke-interface {v7, v0}, Lcom/hcrest/gestures/flick/FlickEventListener;->onFlickEvent(Lcom/hcrest/gestures/flick/FlickEvent;)V

    goto :goto_2

    .line 137
    .end local v3    # "dir":Lcom/hcrest/gestures/flick/FlickDetector$Direction;
    :cond_4
    sget-object v3, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->DOWN:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    goto :goto_3

    .line 139
    :cond_5
    iget v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    sget-object v3, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->RIGHT:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    .restart local v3    # "dir":Lcom/hcrest/gestures/flick/FlickDetector$Direction;
    :goto_4
    goto :goto_3

    .end local v3    # "dir":Lcom/hcrest/gestures/flick/FlickDetector$Direction;
    :cond_6
    sget-object v3, Lcom/hcrest/gestures/flick/FlickDetector$Direction;->LEFT:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    goto :goto_4

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->lastValue:D

    .line 81
    iput-wide v2, p0, Lcom/hcrest/gestures/flick/FlickDetector;->lastTimestamp:J

    .line 82
    iput-wide v2, p0, Lcom/hcrest/gestures/flick/FlickDetector;->peakTime:J

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->direction:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/gestures/flick/FlickDetector;->thresholdExceedLookingForMaxVelocity:Z

    .line 85
    return-void
.end method

.method public setFlickEventListener(Lcom/hcrest/gestures/flick/FlickEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/gestures/flick/FlickEventListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hcrest/gestures/flick/FlickDetector;->mFlickEventListener:Lcom/hcrest/gestures/flick/FlickEventListener;

    .line 73
    return-void
.end method
