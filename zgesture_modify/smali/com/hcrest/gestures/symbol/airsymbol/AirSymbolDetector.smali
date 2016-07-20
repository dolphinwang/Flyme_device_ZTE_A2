.class public Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;
.super Lcom/hcrest/sensors/AbstractMotionDetector;
.source "AirSymbolDetector.java"

# interfaces
.implements Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hcrest/sensors/AbstractMotionDetector",
        "<",
        "Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;",
        ">;",
        "Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;"
    }
.end annotation


# instance fields
.field private mAirSymbolEventListener:Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEventListener;

.field private mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

.field private mLinearCursorEventListener:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;

.field private mPath:Lcom/hcrest/gestures/symbol/PathSegment;

.field private mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;


# direct methods
.method public constructor <init>(Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;)V
    .locals 3
    .param p1, "linearCursor"    # Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getSensorAdapter()Lcom/hcrest/sensors/SensorAdapter;

    move-result-object v1

    new-instance v2, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;

    invoke-virtual {p1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;

    move-result-object v0

    check-cast v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    invoke-direct {v2, v0}, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;-><init>(Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;)V

    invoke-direct {p0, v1, v2}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 109
    new-instance v0, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v0}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mPath:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 149
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    .line 150
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    invoke-virtual {v0, p0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->setLinearCursorEventListener(Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;)V

    .line 151
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->reset(Z)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;)V
    .locals 1
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;

    .prologue
    .line 117
    new-instance v0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;

    invoke-direct {v0}, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;)V
    .locals 2
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;
    .param p2, "config"    # Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/hcrest/sensors/AbstractMotionDetector;-><init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 109
    new-instance v0, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v0}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mPath:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 133
    new-instance v0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    invoke-direct {v0, p1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;-><init>(Lcom/hcrest/sensors/SensorAdapter;)V

    iput-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    .line 134
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    iget-object v1, p2, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;->linearCursorConfig:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    invoke-virtual {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->setConfig(Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 135
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    invoke-virtual {v0, p0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->setLinearCursorEventListener(Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;)V

    .line 136
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->reset(Z)V

    .line 137
    return-void
.end method


# virtual methods
.method public beginTracePath()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->setCapturing(Z)V

    .line 234
    return-void
.end method

.method public endTracePath()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->setCapturing(Z)V

    .line 241
    return-void
.end method

.method public getPath()Lcom/hcrest/gestures/symbol/PathSegment;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mPath:Lcom/hcrest/gestures/symbol/PathSegment;

    return-object v0
.end method

.method public getSensorTypes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->getSensorTypes()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolLibrary()Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    return-object v0
.end method

.method public isTracingPath()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->isCapturing()Z

    move-result v0

    return v0
.end method

.method public onLinearCursorEvent(Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;

    .prologue
    .line 320
    new-instance v2, Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-direct {v2}, Lcom/hcrest/gestures/symbol/PathSegment;-><init>()V

    iput-object v2, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mPath:Lcom/hcrest/gestures/symbol/PathSegment;

    .line 321
    invoke-virtual {p1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;->getPath()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hcrest/sensors/util/Vector3D;

    .line 322
    .local v1, "pt":Lcom/hcrest/sensors/util/Vector3D;
    iget-object v2, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mPath:Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-virtual {v1}, Lcom/hcrest/sensors/util/Vector3D;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/hcrest/sensors/util/Vector3D;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/hcrest/gestures/symbol/PathSegment;->moveTo(FF)V

    goto :goto_0

    .line 324
    .end local v1    # "pt":Lcom/hcrest/sensors/util/Vector3D;
    :cond_0
    iget-object v2, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursorEventListener:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursorEventListener:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;

    invoke-interface {v2, p1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;->onLinearCursorEvent(Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;)V

    .line 327
    :cond_1
    return-void
.end method

.method public onSensorData(Lcom/hcrest/sensors/SensorData;)V
    .locals 1
    .param p1, "sensorData"    # Lcom/hcrest/sensors/SensorData;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    invoke-virtual {v0, p1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->onSensorData(Lcom/hcrest/sensors/SensorData;)V

    .line 293
    return-void
.end method

.method public processPath()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v2, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mPath:Lcom/hcrest/gestures/symbol/PathSegment;

    if-nez v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    if-eqz v2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    iget-object v2, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mPath:Lcom/hcrest/gestures/symbol/PathSegment;

    invoke-virtual {v1, v2}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;->matchSymbol(Lcom/hcrest/gestures/symbol/PathSegment;)Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    move-result-object v0

    .line 279
    .local v0, "result":Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    iget-object v1, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mAirSymbolEventListener:Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEventListener;

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mAirSymbolEventListener:Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEventListener;

    new-instance v2, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEvent;

    invoke-direct {v2, p0, v0}, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEvent;-><init>(Ljava/lang/Object;Lcom/hcrest/gestures/symbol/SymbolGestureResult;)V

    invoke-interface {v1, v2}, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEventListener;->onAirSymbolEvent(Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEvent;)V

    .line 284
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->reset()V

    .line 227
    :cond_0
    return-void
.end method

.method public setAirSymbolEventListener(Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEventListener;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mAirSymbolEventListener:Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolEventListener;

    .line 302
    return-void
.end method

.method public setConfig(Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    iget-object v1, p1, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;->linearCursorConfig:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorConfig;

    invoke-virtual {v0, v1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->setConfig(Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/hcrest/sensors/AbstractMotionDetector;->setConfig(Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 163
    return-void
.end method

.method public bridge synthetic setConfig(Lcom/hcrest/sensors/MotionDetectorConfig;)V
    .locals 0
    .param p1, "x0"    # Lcom/hcrest/sensors/MotionDetectorConfig;

    .prologue
    .line 79
    check-cast p1, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;

    .end local p1    # "x0":Lcom/hcrest/sensors/MotionDetectorConfig;
    invoke-virtual {p0, p1}, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->setConfig(Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetectorConfig;)V

    return-void
.end method

.method public setLinearCursorEventListener(Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursorEventListener:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEventListener;

    .line 313
    return-void
.end method

.method public setSensorAdapter(Lcom/hcrest/sensors/SensorAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/hcrest/sensors/SensorAdapter;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    invoke-virtual {v0, p1}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->setSensorAdapter(Lcom/hcrest/sensors/SensorAdapter;)V

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/hcrest/sensors/AbstractMotionDetector;->setSensorAdapter(Lcom/hcrest/sensors/SensorAdapter;)V

    .line 175
    return-void
.end method

.method public setSymbolLibrary(Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;)V
    .locals 0
    .param p1, "library"    # Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mSymbolLibrary:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary;

    .line 184
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->start()V

    .line 209
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/hcrest/gestures/symbol/airsymbol/AirSymbolDetector;->mLinearCursor:Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;

    invoke-virtual {v0}, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursor;->stop()V

    .line 217
    return-void
.end method
