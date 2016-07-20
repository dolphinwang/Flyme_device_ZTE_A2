.class public Lcom/hcrest/gestures/flick/FlickEvent;
.super Lcom/hcrest/sensors/MotionEngineEvent;
.source "FlickEvent.java"


# static fields
.field public static final TYPE_FLICK:Ljava/lang/String; = "flick"

.field private static final serialVersionUID:J = -0x72b91c6ee7c60167L


# instance fields
.field private direction:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

.field private rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

.field private velocity:D


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/hcrest/sensors/util/RotationAxis;Lcom/hcrest/gestures/flick/FlickDetector$Direction;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "rotationAxis"    # Lcom/hcrest/sensors/util/RotationAxis;
    .param p3, "direction"    # Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    .prologue
    .line 42
    const-string v0, "flick"

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/MotionEngineEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/hcrest/gestures/flick/FlickEvent;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    .line 44
    iput-object p3, p0, Lcom/hcrest/gestures/flick/FlickEvent;->direction:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/hcrest/sensors/util/RotationAxis;Lcom/hcrest/gestures/flick/FlickDetector$Direction;D)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "rotationAxis"    # Lcom/hcrest/sensors/util/RotationAxis;
    .param p3, "direction"    # Lcom/hcrest/gestures/flick/FlickDetector$Direction;
    .param p4, "velocity"    # D

    .prologue
    .line 56
    const-string v0, "flick"

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/MotionEngineEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/hcrest/gestures/flick/FlickEvent;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    .line 58
    iput-object p3, p0, Lcom/hcrest/gestures/flick/FlickEvent;->direction:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    .line 59
    iput-wide p4, p0, Lcom/hcrest/gestures/flick/FlickEvent;->velocity:D

    .line 60
    return-void
.end method


# virtual methods
.method public getDirection()Lcom/hcrest/gestures/flick/FlickDetector$Direction;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/hcrest/gestures/flick/FlickEvent;->direction:Lcom/hcrest/gestures/flick/FlickDetector$Direction;

    return-object v0
.end method

.method public getRotationAxis()Lcom/hcrest/sensors/util/RotationAxis;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/hcrest/gestures/flick/FlickEvent;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    return-object v0
.end method

.method public getVelocity()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/hcrest/gestures/flick/FlickEvent;->velocity:D

    return-wide v0
.end method
