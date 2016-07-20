.class public Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;
.super Lcom/hcrest/sensors/AbstractMotionDetectorConfig;
.source "PickUpDetectorConfig.java"


# static fields
.field public static final DEFAULT_ANGULARDEVIATION:I = 0x2d

.field public static final DEFAULT_SENSORDATACOUNTOFFSET:I = 0x2

.field public static final DEFAULT_SENSORPERIODMS:I = 0x3e8


# instance fields
.field protected final angularDeviation:I

.field protected final sensorDataCountOffset:I

.field protected final sensorPeriodMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 58
    const/16 v0, 0x2d

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->angularDeviation:I

    .line 59
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->sensorPeriodMs:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->sensorDataCountOffset:I

    .line 61
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "angularDeviation"    # I
    .param p2, "sensorPeriodMs"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 73
    iput p1, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->angularDeviation:I

    .line 74
    iput p2, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->sensorPeriodMs:I

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->sensorDataCountOffset:I

    .line 76
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "angularDeviation"    # I
    .param p2, "sensorPeriodMs"    # I
    .param p3, "sensorDataCountOffset"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 91
    iput p1, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->angularDeviation:I

    .line 92
    iput p2, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->sensorPeriodMs:I

    .line 93
    iput p3, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->sensorDataCountOffset:I

    .line 94
    return-void
.end method


# virtual methods
.method public getAngularDeviation()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->angularDeviation:I

    return v0
.end method

.method public getSensorDataCountOffset()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->sensorDataCountOffset:I

    return v0
.end method

.method public getSensorPeriodMs()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/hcrest/gestures/pickup/PickUpDetectorConfig;->sensorPeriodMs:I

    return v0
.end method
