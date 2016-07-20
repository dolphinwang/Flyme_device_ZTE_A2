.class public Lcom/hcrest/gestures/flick/FlickDetectorConfig;
.super Lcom/hcrest/sensors/AbstractMotionDetectorConfig;
.source "FlickDetectorConfig.java"


# static fields
.field public static final DEFAULT_QUIESCENTTIMETHRESHOLDMS:J = 0x190L

.field public static final DEFAULT_ROTATIONAXIS:Lcom/hcrest/sensors/util/RotationAxis;

.field public static final DEFAULT_VELOCITYTHRESHOLD:D = 8.0


# instance fields
.field protected final quiescentTimeThresholdMs:J

.field protected final rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

.field protected final velocityThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/hcrest/sensors/util/RotationAxis;->YAW:Lcom/hcrest/sensors/util/RotationAxis;

    sput-object v0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->DEFAULT_ROTATIONAXIS:Lcom/hcrest/sensors/util/RotationAxis;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 55
    sget-object v0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->DEFAULT_ROTATIONAXIS:Lcom/hcrest/sensors/util/RotationAxis;

    iput-object v0, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    .line 56
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    iput-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->velocityThreshold:D

    .line 57
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->quiescentTimeThresholdMs:J

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/util/RotationAxis;)V
    .locals 2
    .param p1, "rotationAxis"    # Lcom/hcrest/sensors/util/RotationAxis;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    .line 67
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    iput-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->velocityThreshold:D

    .line 68
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->quiescentTimeThresholdMs:J

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/util/RotationAxis;D)V
    .locals 2
    .param p1, "rotationAxis"    # Lcom/hcrest/sensors/util/RotationAxis;
    .param p2, "velocityThreshold"    # D

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    .line 79
    iput-wide p2, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->velocityThreshold:D

    .line 80
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->quiescentTimeThresholdMs:J

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/util/RotationAxis;DJ)V
    .locals 0
    .param p1, "rotationAxis"    # Lcom/hcrest/sensors/util/RotationAxis;
    .param p2, "velocityThreshold"    # D
    .param p4, "quiescentTimeThresholdMs"    # J

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    .line 92
    iput-wide p2, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->velocityThreshold:D

    .line 93
    iput-wide p4, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->quiescentTimeThresholdMs:J

    .line 94
    return-void
.end method


# virtual methods
.method public getQuiescentTimeThresholdMs()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->quiescentTimeThresholdMs:J

    return-wide v0
.end method

.method public getRotationAxis()Lcom/hcrest/sensors/util/RotationAxis;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->rotationAxis:Lcom/hcrest/sensors/util/RotationAxis;

    return-object v0
.end method

.method public getVelocityThreshold()D
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/hcrest/gestures/flick/FlickDetectorConfig;->velocityThreshold:D

    return-wide v0
.end method
