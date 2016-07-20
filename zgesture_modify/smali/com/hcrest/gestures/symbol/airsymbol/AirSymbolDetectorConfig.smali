.class public Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;
.super Lcom/hcrest/sensors/AbstractMotionDetectorConfig;
.source "AirSymbolDetectorConfig.java"


# instance fields
.field protected final linearCursorConfig:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 36
    new-instance v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    invoke-direct {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;->linearCursorConfig:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;)V
    .locals 0
    .param p1, "linearCursorConfig"    # Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/hcrest/sensors/AbstractMotionDetectorConfig;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;->linearCursorConfig:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    .line 48
    return-void
.end method


# virtual methods
.method public getLinearCursorConfig()Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;->linearCursorConfig:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    return-object v0
.end method
