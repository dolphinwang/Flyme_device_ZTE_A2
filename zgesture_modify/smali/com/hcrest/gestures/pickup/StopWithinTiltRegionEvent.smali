.class public Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;
.super Lcom/hcrest/sensors/MotionEngineEvent;
.source "StopWithinTiltRegionEvent.java"


# static fields
.field private static final DEG2RAD:F = 0.017453292f

.field public static final TYPE_STOP_WITHIN_TILT_REGION:Ljava/lang/String; = "stop_within_tilt_region"

.field private static final serialVersionUID:J = 0x2e5242a413ed63d7L


# instance fields
.field private debugInfo:Ljava/lang/String;

.field private isFar:Z

.field private isInMotion:Z

.field private isNear:Z

.field private isPositionGood:Z

.field private isStable:Z

.field private isTriggered:Z

.field private pitch:F

.field private roll:F

.field private stability:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZFFFZZZZZLjava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "isTriggered"    # Z
    .param p3, "roll"    # F
    .param p4, "pitch"    # F
    .param p5, "stability"    # F
    .param p6, "isFar"    # Z
    .param p7, "isNear"    # Z
    .param p8, "isStable"    # Z
    .param p9, "isInMotion"    # Z
    .param p10, "isPositionGood"    # Z
    .param p11, "debugInfo"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "stop_within_tilt_region"

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/MotionEngineEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-boolean p2, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isTriggered:Z

    .line 37
    iput p3, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->roll:F

    .line 38
    iput p4, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->pitch:F

    .line 39
    iput p5, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->stability:F

    .line 40
    iput-boolean p6, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isFar:Z

    .line 41
    iput-boolean p7, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isNear:Z

    .line 42
    iput-boolean p8, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isStable:Z

    .line 43
    iput-boolean p9, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isInMotion:Z

    .line 44
    iput-boolean p10, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isPositionGood:Z

    .line 45
    iput-object p11, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->debugInfo:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getDebugInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->debugInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPitch()F
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->pitch:F

    const v1, 0x3c8efa35

    div-float/2addr v0, v1

    return v0
.end method

.method public getRoll()F
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->roll:F

    const v1, 0x3c8efa35

    div-float/2addr v0, v1

    return v0
.end method

.method public getStability()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->stability:F

    return v0
.end method

.method public isFar()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isFar:Z

    return v0
.end method

.method public isInMotion()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isInMotion:Z

    return v0
.end method

.method public isNear()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isNear:Z

    return v0
.end method

.method public isPositionGood()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isPositionGood:Z

    return v0
.end method

.method public isStable()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isStable:Z

    return v0
.end method

.method public isTriggered()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/hcrest/gestures/pickup/StopWithinTiltRegionEvent;->isTriggered:Z

    return v0
.end method
