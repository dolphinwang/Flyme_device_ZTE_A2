.class public Lcom/hcrest/gestures/shake/ShakeEvent;
.super Lcom/hcrest/sensors/MotionEngineEvent;
.source "ShakeEvent.java"


# static fields
.field public static final TYPE_SHAKE:Ljava/lang/String; = "shake"

.field private static final serialVersionUID:J = 0x1a0386da39e18d2fL


# instance fields
.field private certainty:F

.field private detected:Z

.field private value:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZFF)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "detected"    # Z
    .param p3, "value"    # F
    .param p4, "certainty"    # F

    .prologue
    .line 42
    const-string v0, "shake"

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/MotionEngineEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-boolean p2, p0, Lcom/hcrest/gestures/shake/ShakeEvent;->detected:Z

    .line 45
    iput p3, p0, Lcom/hcrest/gestures/shake/ShakeEvent;->value:F

    .line 46
    iput p4, p0, Lcom/hcrest/gestures/shake/ShakeEvent;->certainty:F

    .line 47
    return-void
.end method


# virtual methods
.method public getCertainty()F
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/hcrest/gestures/shake/ShakeEvent;->certainty:F

    return v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/hcrest/gestures/shake/ShakeEvent;->value:F

    return v0
.end method

.method public isDetected()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/hcrest/gestures/shake/ShakeEvent;->detected:Z

    return v0
.end method
