.class public Lcom/hcrest/gestures/flip/FlipEvent;
.super Lcom/hcrest/sensors/MotionEngineEvent;
.source "FlipEvent.java"


# static fields
.field public static final TYPE_FLIP:Ljava/lang/String; = "flip"

.field private static final serialVersionUID:J = -0x2a090884af7a6cf4L


# instance fields
.field private isDown:Z

.field private isInitialized:Z

.field private isOrientationChange:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZZZ)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "isDown"    # Z
    .param p3, "isInitialized"    # Z
    .param p4, "isOrientationChange"    # Z

    .prologue
    .line 49
    const-string v0, "flip"

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/MotionEngineEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-boolean p2, p0, Lcom/hcrest/gestures/flip/FlipEvent;->isDown:Z

    .line 51
    iput-boolean p3, p0, Lcom/hcrest/gestures/flip/FlipEvent;->isInitialized:Z

    .line 52
    iput-boolean p4, p0, Lcom/hcrest/gestures/flip/FlipEvent;->isOrientationChange:Z

    .line 53
    return-void
.end method


# virtual methods
.method public isDown()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/hcrest/gestures/flip/FlipEvent;->isDown:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/hcrest/gestures/flip/FlipEvent;->isInitialized:Z

    return v0
.end method

.method public isOrientationChange()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/hcrest/gestures/flip/FlipEvent;->isOrientationChange:Z

    return v0
.end method
