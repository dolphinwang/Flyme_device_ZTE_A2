.class public Lcom/hcrest/gestures/virtualcontrol/VirtualControlEvent;
.super Lcom/hcrest/sensors/MotionEngineEvent;
.source "VirtualControlEvent.java"


# static fields
.field public static final TYPE_VIRTUALCONTROL:Ljava/lang/String; = "virtualcontrol"

.field private static final serialVersionUID:J = 0xc0402e97ec08900L


# instance fields
.field private value:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;F)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .prologue
    .line 37
    const-string v0, "virtualcontrol"

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/MotionEngineEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput p2, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlEvent;->value:F

    .line 40
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/hcrest/gestures/virtualcontrol/VirtualControlEvent;->value:F

    return v0
.end method
