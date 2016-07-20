.class public Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;
.super Lcom/hcrest/sensors/AbstractMotionDetector;
.source "VirtualControlDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$1;,
        Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;,
        Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hcrest/sensors/AbstractMotionDetector",
        "<",
        "Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private active:Z

.field private currRotation:F

.field private gain:F

.field private gainInv:F

.field private lastRotation:F

.field private lastRotationValid:Z

.field private lastSliderValue:F

.field protected mVirtualControlEventListener:Lcom/hcrest/gestures/virtualcontrol/VirtualControlEventListener;


# direct methods
.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/hcrest/sensors/SensorAdapter;

    .prologue
    .line 60
    sget-object v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->DefaultKnobConfig:Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    invoke-direct {p0, p1, v0}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;)V
    .locals 1
    .param p1, "adapter"    # Lcom/hcrest/sensors/SensorAdapter;
    .param p2, "config"    # Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->active:Z

    .line 71
    return-void
.end method

.method private bodyFrameRelativeAngle(Lcom/hcrest/sensors/util/Vector3D;J)F
    .locals 4
    .param p1, "angVel"    # Lcom/hcrest/sensors/util/Vector3D;
    .param p2, "samplePeriodNs"    # J

    .prologue
    const v2, 0x3089705f    # 1.0E-9f

    .line 274
    sget-object v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$1;->$SwitchMap$com$hcrest$sensors$util$RotationAxis:[I

    iget-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget-object v0, v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    invoke-virtual {v0}, Lcom/hcrest/sensors/util/RotationAxis;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 282
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 276
    :pswitch_0
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v0

    long-to-float v1, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    goto :goto_0

    .line 278
    :pswitch_1
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v0

    long-to-float v1, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Vector3D;->getZ()F

    move-result v0

    long-to-float v1, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static phaseLimiter(F)F
    .locals 8
    .param p0, "angle"    # F

    .prologue
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 255
    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    .line 256
    float-to-double v0, p0

    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 257
    float-to-double v0, p0

    add-double/2addr v0, v6

    double-to-float p0, v0

    goto :goto_0

    .line 258
    :cond_1
    float-to-double v0, p0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    .line 259
    float-to-double v0, p0

    sub-double/2addr v0, v6

    double-to-float p0, v0

    goto :goto_0

    .line 262
    :cond_2
    return p0
.end method

.method private userFrameAbsoluteAngle(Lcom/hcrest/sensors/util/Quaternion;)F
    .locals 2
    .param p1, "angularPosition"    # Lcom/hcrest/sensors/util/Quaternion;

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/hcrest/sensors/util/Quaternion;->getOrientation()Lcom/hcrest/sensors/util/Angle;

    move-result-object v1

    iget-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget-object v0, v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    invoke-virtual {v1, v0}, Lcom/hcrest/sensors/util/Angle;->getAngleByAxis(Lcom/hcrest/sensors/util/RotationAxis;)F

    move-result v0

    return v0
.end method

.method private userFrameRelativeAngle(F)F
    .locals 2
    .param p1, "absoluteRotation"    # F

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "deltaRotation":F
    iget-boolean v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastRotationValid:Z

    if-nez v1, :cond_0

    .line 317
    iput p1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastRotation:F

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastRotationValid:Z

    .line 324
    :goto_0
    return v0

    .line 320
    :cond_0
    iget v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastRotation:F

    sub-float v0, p1, v1

    .line 321
    invoke-static {v0}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->phaseLimiter(F)F

    move-result v0

    .line 322
    iput p1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastRotation:F

    goto :goto_0
.end method

.method private userFrameRelativeAngle(Lcom/hcrest/sensors/util/Quaternion;)F
    .locals 1
    .param p1, "angularPosition"    # Lcom/hcrest/sensors/util/Quaternion;

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->userFrameAbsoluteAngle(Lcom/hcrest/sensors/util/Quaternion;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->userFrameRelativeAngle(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public getSensorTypes()Ljava/util/EnumSet;
    .locals 2
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
    .line 95
    iget-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget-object v0, v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    invoke-virtual {v0}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->getReferenceFrame()Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    move-result-object v0

    sget-object v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->USER:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    invoke-virtual {v0, v1}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/hcrest/sensors/SensorType;->ANGULAR_POSITION:Lcom/hcrest/sensors/SensorType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/hcrest/sensors/SensorType;->ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastSliderValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastSliderValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v0, v0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderInit:F

    .line 210
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastSliderValue:F

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->active:Z

    return v0
.end method

.method public mapRotationToSlider(F)F
    .locals 3
    .param p1, "rotation"    # F

    .prologue
    .line 220
    iget-object v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v1, v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMin:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->gain:F

    mul-float/2addr v2, v1

    iget-object v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v1, v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMin:F

    add-float v0, v2, v1

    .line 223
    .local v0, "value":F
    iget-object v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget-boolean v1, v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderClampToRange:Z

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v2, v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMax:F

    iget-object v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v1, v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMin:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 228
    :cond_0
    return v0
.end method

.method public mapSliderToRotation(F)F
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 238
    iget-object v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget-boolean v1, v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderClampToRange:Z

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v2, v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMax:F

    iget-object v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v1, v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMin:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v1, v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMin:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->gainInv:F

    mul-float/2addr v2, v1

    iget-object v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v1, v1, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMin:F

    add-float v0, v2, v1

    .line 245
    .local v0, "rotation":F
    return v0
.end method

.method public onSensorData(Lcom/hcrest/sensors/SensorData;)V
    .locals 6
    .param p1, "sensorData"    # Lcom/hcrest/sensors/SensorData;

    .prologue
    .line 136
    iget-boolean v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->active:Z

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget-object v2, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    invoke-virtual {v2}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getAngularPosition()Lcom/hcrest/sensors/util/Quaternion;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->userFrameAbsoluteAngle(Lcom/hcrest/sensors/util/Quaternion;)F

    move-result v2

    iput v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->currRotation:F

    .line 167
    :goto_1
    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget-boolean v2, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderClampToRange:Z

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v3, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMax:F

    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v2, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMin:F

    iget v4, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->currRotation:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->currRotation:F

    .line 172
    :cond_2
    iget v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->currRotation:F

    invoke-virtual {p0, v2}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mapRotationToSlider(F)F

    move-result v1

    .line 174
    .local v1, "sliderValue":F
    iget v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastSliderValue:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mVirtualControlEventListener:Lcom/hcrest/gestures/virtualcontrol/VirtualControlEventListener;

    if-eqz v2, :cond_3

    .line 176
    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mVirtualControlEventListener:Lcom/hcrest/gestures/virtualcontrol/VirtualControlEventListener;

    new-instance v3, Lcom/hcrest/gestures/virtualcontrol/VirtualControlEvent;

    invoke-direct {v3, p0, v1}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlEvent;-><init>(Ljava/lang/Object;F)V

    invoke-interface {v2, v3}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlEventListener;->onVirtualControlEvent(Lcom/hcrest/gestures/virtualcontrol/VirtualControlEvent;)V

    .line 179
    :cond_3
    iput v1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastSliderValue:F

    goto :goto_0

    .line 142
    .end local v1    # "sliderValue":F
    :cond_4
    const/4 v0, 0x0

    .line 143
    .local v0, "deltaRotation":F
    sget-object v3, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$1;->$SwitchMap$com$hcrest$gestures$virtualcontrol$VirtualControlDetector$ReferenceFrame:[I

    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget-object v2, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    invoke-virtual {v2}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->getReferenceFrame()Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$ReferenceFrame;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 153
    :goto_2
    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget-object v2, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderType:Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;

    invoke-virtual {v2}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector$SliderType;->isLinear()Z

    move-result v2

    if-nez v2, :cond_5

    .line 157
    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget-object v2, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->ballisticsCurve:Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hcrest/gestures/virtualcontrol/BallisticsCurve;->evaluate(F)F

    move-result v2

    mul-float/2addr v0, v2

    .line 160
    :cond_5
    iget v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->currRotation:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->currRotation:F

    goto :goto_1

    .line 145
    :pswitch_0
    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getAngularVelocity()Lcom/hcrest/sensors/util/Vector3D;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getAngularVelocitySamplePeriod()J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->bodyFrameRelativeAngle(Lcom/hcrest/sensors/util/Vector3D;J)F

    move-result v0

    .line 147
    goto :goto_2

    .line 149
    :pswitch_1
    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorData;->getAngularPosition()Lcom/hcrest/sensors/util/Quaternion;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->userFrameRelativeAngle(Lcom/hcrest/sensors/util/Quaternion;)F

    move-result v0

    goto :goto_2

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 78
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastRotationValid:Z

    .line 79
    const/4 v2, 0x0

    iput v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastRotation:F

    .line 80
    const/high16 v2, 0x7fc00000    # NaNf

    iput v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->lastSliderValue:F

    .line 82
    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v3, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMax:F

    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v2, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderMin:F

    sub-float v1, v3, v2

    .line 83
    .local v1, "sliderRange":F
    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v3, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMax:F

    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v2, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->rotationMin:F

    sub-float v0, v3, v2

    .line 84
    .local v0, "rotationRange":F
    div-float v2, v1, v0

    iput v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->gain:F

    .line 85
    div-float v2, v0, v1

    iput v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->gainInv:F

    .line 87
    iget-object v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    check-cast v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;

    iget v2, v2, Lcom/hcrest/gestures/virtualcontrol/VirtualControlConfig;->sliderInit:F

    invoke-virtual {p0, v2}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mapSliderToRotation(F)F

    move-result v2

    iput v2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->currRotation:F

    .line 88
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->active:Z

    .line 110
    return-void
.end method

.method public setVirtualControlEventListener(Lcom/hcrest/gestures/virtualcontrol/VirtualControlEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/gestures/virtualcontrol/VirtualControlEventListener;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->mVirtualControlEventListener:Lcom/hcrest/gestures/virtualcontrol/VirtualControlEventListener;

    .line 190
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/hcrest/sensors/AbstractMotionDetector;->stop()V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hcrest/gestures/virtualcontrol/VirtualControlDetector;->setActive(Z)V

    .line 129
    return-void
.end method
