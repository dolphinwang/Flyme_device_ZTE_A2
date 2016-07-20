.class public Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;
.super Lcom/hcrest/sensors/AbstractMotionDetectorConfig;
.source "StopWithinTiltRegionDetectorConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;
    }
.end annotation


# static fields
.field public static final DEFAULT_GROUPDELAY:F = 0.125f

.field public static final DEFAULT_REORIENTATION:Lcom/hcrest/sensors/util/Quaternion;

.field private static final DEG2RAD:F = 0.017453292f


# instance fields
.field protected final farDebounceTime:F

.field protected final groupDelay:F

.field protected final lowPower:Z

.field protected final motionDebounce:F

.field protected final motionThreshold:F

.field protected final motionTimeout:F

.field protected final nearDebounceTime:F

.field protected final pitchMax:F

.field protected final pitchMin:F

.field protected final pitchUnsigned:Z

.field protected final proximityMode:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;

.field protected final reorientation:Lcom/hcrest/sensors/util/Quaternion;

.field protected final rollMax:F

.field protected final rollMin:F

.field protected final rollUnsigned:Z

.field protected final sinPitchMax:F

.field protected final sinPitchMin:F

.field protected final stableDebounceTime:F

.field protected final stableThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/hcrest/sensors/util/Quaternion;->IDENTITY:Lcom/hcrest/sensors/util/Quaternion;

    sput-object v0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->DEFAULT_REORIENTATION:Lcom/hcrest/sensors/util/Quaternion;

    return-void
.end method

.method public constructor <init>(Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;ZFFLcom/hcrest/sensors/util/Quaternion;FFZFFZFFFFFF)V
    .locals 4
    .param p1, "proximityMode"    # Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;
    .param p2, "lowPower"    # Z
    .param p3, "farDebounceTime"    # F
    .param p4, "nearDebounceTime"    # F
    .param p5, "reorientation"    # Lcom/hcrest/sensors/util/Quaternion;
    .param p6, "rollMin"    # F
    .param p7, "rollMax"    # F
    .param p8, "rollUnsigned"    # Z
    .param p9, "pitchMin"    # F
    .param p10, "pitchMax"    # F
    .param p11, "pitchUnsigned"    # Z
    .param p12, "stableThreshold"    # F
    .param p13, "stableDebounceTime"    # F
    .param p14, "motionThreshold"    # F
    .param p15, "motionTimeout"    # F
    .param p16, "motionDebounce"    # F
    .param p17, "groupDelay"    # F

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->proximityMode:Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig$ProximityModeType;

    .line 104
    iput-boolean p2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->lowPower:Z

    .line 105
    iput p3, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->farDebounceTime:F

    .line 106
    iput p4, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->nearDebounceTime:F

    .line 107
    if-nez p5, :cond_0

    sget-object p5, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->DEFAULT_REORIENTATION:Lcom/hcrest/sensors/util/Quaternion;

    .end local p5    # "reorientation":Lcom/hcrest/sensors/util/Quaternion;
    :cond_0
    iput-object p5, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->reorientation:Lcom/hcrest/sensors/util/Quaternion;

    .line 109
    const v2, 0x3c8efa35

    mul-float/2addr v2, p6

    iput v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->rollMin:F

    .line 110
    const v2, 0x3c8efa35

    mul-float/2addr v2, p7

    iput v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->rollMax:F

    .line 111
    iput-boolean p8, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->rollUnsigned:Z

    .line 112
    const v2, 0x3c8efa35

    mul-float/2addr v2, p9

    iput v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->pitchMin:F

    .line 113
    const v2, 0x3c8efa35

    mul-float/2addr v2, p10

    iput v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->pitchMax:F

    .line 114
    iput-boolean p11, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->pitchUnsigned:Z

    .line 115
    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->pitchMin:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->sinPitchMin:F

    .line 116
    iget v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->pitchMax:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->sinPitchMax:F

    .line 117
    move/from16 v0, p12

    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->stableThreshold:F

    .line 118
    move/from16 v0, p13

    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->stableDebounceTime:F

    .line 119
    move/from16 v0, p14

    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->motionThreshold:F

    .line 120
    move/from16 v0, p15

    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->motionTimeout:F

    .line 121
    move/from16 v0, p16

    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->motionDebounce:F

    .line 122
    move/from16 v0, p17

    iput v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionDetectorConfig;->groupDelay:F

    .line 123
    return-void
.end method
