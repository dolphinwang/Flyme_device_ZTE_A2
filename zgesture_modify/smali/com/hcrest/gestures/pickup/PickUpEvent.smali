.class public Lcom/hcrest/gestures/pickup/PickUpEvent;
.super Lcom/hcrest/sensors/MotionEngineEvent;
.source "PickUpEvent.java"


# static fields
.field public static final TYPE_PICKUP:Ljava/lang/String; = "pickup"

.field private static final serialVersionUID:J = -0x329d031f8322cf51L


# instance fields
.field private isInitialized:Z

.field private isOrientationChange:Z

.field private isUp:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZZZ)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "isUp"    # Z
    .param p3, "isInitialized"    # Z
    .param p4, "isOrientationChange"    # Z

    .prologue
    .line 46
    const-string v0, "pickup"

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/MotionEngineEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-boolean p2, p0, Lcom/hcrest/gestures/pickup/PickUpEvent;->isUp:Z

    .line 48
    iput-boolean p3, p0, Lcom/hcrest/gestures/pickup/PickUpEvent;->isInitialized:Z

    .line 49
    iput-boolean p4, p0, Lcom/hcrest/gestures/pickup/PickUpEvent;->isOrientationChange:Z

    .line 50
    return-void
.end method


# virtual methods
.method public isInitialized()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/hcrest/gestures/pickup/PickUpEvent;->isInitialized:Z

    return v0
.end method

.method public isOrientationChange()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/hcrest/gestures/pickup/PickUpEvent;->isOrientationChange:Z

    return v0
.end method

.method public isUp()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/hcrest/gestures/pickup/PickUpEvent;->isUp:Z

    return v0
.end method
