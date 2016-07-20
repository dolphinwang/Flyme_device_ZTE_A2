.class public Lcom/hcrest/gestures/shake/ShakeDetectorConfig;
.super Lcom/hcrest/sensors/AbstractMotionDetectorConfig;
.source "ShakeDetectorConfig.java"


# static fields
.field public static final AGGRESSIVE_ANGVELTHRESHOLD:F = 2.68f

.field public static final AGGRESSIVE_CONFIG:Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

.field public static final AGGRESSIVE_FREQUENCYTHRESHOLD:F = 1.75f

.field public static final AGGRESSIVE_REPETITIONS:I = 0x4

.field public static final DEFAULT_ANGVELTHRESHOLD:F = 1.31f

.field public static final DEFAULT_FREQUENCYTHRESHOLD:F = 1.5f

.field public static final DEFAULT_REPETITIONS:I = 0x3

.field public static final DEFAULT_VALUENOSHAKE:F = 1.0f

.field public static final DEFAULT_VALUEWITHSHAKE:F = 0.11f


# instance fields
.field protected final angVelThreshold:F

.field protected final frequencyThreshold:F

.field protected final repetitions:I

.field protected final valueNoShake:F

.field protected final valueWithShake:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    const v1, 0x402b851f    # 2.68f

    const/high16 v2, 0x3fe00000    # 1.75f

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;-><init>(FFI)V

    sput-object v0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->AGGRESSIVE_CONFIG:Lcom/hcrest/gestures/shake/ShakeDetectorConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 77
    const v0, 0x3fa7ae14    # 1.31f

    iput v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->angVelThreshold:F

    .line 78
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->frequencyThreshold:F

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->repetitions:I

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueNoShake:F

    .line 81
    const v0, 0x3de147ae    # 0.11f

    iput v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueWithShake:F

    .line 82
    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 1
    .param p1, "angVelThreshold"    # F
    .param p2, "frequencyThreshold"    # F
    .param p3, "repetitions"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 93
    iput p1, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->angVelThreshold:F

    .line 94
    iput p2, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->frequencyThreshold:F

    .line 95
    iput p3, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->repetitions:I

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueNoShake:F

    .line 97
    const v0, 0x3de147ae    # 0.11f

    iput v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueWithShake:F

    .line 98
    return-void
.end method

.method public constructor <init>(FFIFF)V
    .locals 0
    .param p1, "angVelThreshold"    # F
    .param p2, "frequencyThreshold"    # F
    .param p3, "repetitions"    # I
    .param p4, "valueNoShake"    # F
    .param p5, "valueWithShake"    # F

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 111
    iput p1, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->angVelThreshold:F

    .line 112
    iput p2, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->frequencyThreshold:F

    .line 113
    iput p3, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->repetitions:I

    .line 114
    iput p4, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueNoShake:F

    .line 115
    iput p5, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueWithShake:F

    .line 116
    return-void
.end method


# virtual methods
.method public getAngVelThreshold()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->angVelThreshold:F

    return v0
.end method

.method public getFrequencyThreshold()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->frequencyThreshold:F

    return v0
.end method

.method public getRepetitions()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->repetitions:I

    return v0
.end method

.method public getValueNoShake()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueNoShake:F

    return v0
.end method

.method public getValueWithShake()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/hcrest/gestures/shake/ShakeDetectorConfig;->valueWithShake:F

    return v0
.end method
