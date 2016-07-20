.class public abstract Lcom/hcrest/sensors/AbstractMotionDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hcrest/sensors/MotionDetector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Config::",
        "Lcom/hcrest/sensors/MotionDetectorConfig;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hcrest/sensors/MotionDetector",
        "<TConfig;>;"
    }
.end annotation


# instance fields
.field protected mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TConfig;"
        }
    .end annotation
.end field

.field protected mSensorAdapter:Lcom/hcrest/sensors/SensorAdapter;


# direct methods
.method public constructor <init>(Lcom/hcrest/sensors/SensorAdapter;Lcom/hcrest/sensors/MotionDetectorConfig;)V
    .locals 0
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hcrest/sensors/SensorAdapter;",
            "TConfig;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/hcrest/sensors/AbstractMotionDetector;, "Lcom/hcrest/sensors/AbstractMotionDetector<TConfig;>;"
    .local p2, "config":Lcom/hcrest/sensors/MotionDetectorConfig;, "TConfig;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/hcrest/sensors/AbstractMotionDetector;->setSensorAdapter(Lcom/hcrest/sensors/SensorAdapter;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/hcrest/sensors/AbstractMotionDetector;->setConfig(Lcom/hcrest/sensors/MotionDetectorConfig;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TConfig;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/hcrest/sensors/AbstractMotionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    return-object v0
.end method

.method public getPreferredSensorDelay()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getSensorAdapter()Lcom/hcrest/sensors/SensorAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/hcrest/sensors/AbstractMotionDetector;->mSensorAdapter:Lcom/hcrest/sensors/SensorAdapter;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTriggerSensor()Lcom/hcrest/sensors/SensorType;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public setConfig(Lcom/hcrest/sensors/MotionDetectorConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConfig;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/hcrest/sensors/AbstractMotionDetector;, "Lcom/hcrest/sensors/AbstractMotionDetector<TConfig;>;"
    .local p1, "config":Lcom/hcrest/sensors/MotionDetectorConfig;, "TConfig;"
    iput-object p1, p0, Lcom/hcrest/sensors/AbstractMotionDetector;->mConfig:Lcom/hcrest/sensors/MotionDetectorConfig;

    .line 56
    invoke-virtual {p0}, Lcom/hcrest/sensors/AbstractMotionDetector;->reset()V

    .line 57
    return-void
.end method

.method public setSensorAdapter(Lcom/hcrest/sensors/SensorAdapter;)V
    .locals 0
    .param p1, "sensorAdapter"    # Lcom/hcrest/sensors/SensorAdapter;

    .prologue
    .line 72
    .local p0, "this":Lcom/hcrest/sensors/AbstractMotionDetector;, "Lcom/hcrest/sensors/AbstractMotionDetector<TConfig;>;"
    iput-object p1, p0, Lcom/hcrest/sensors/AbstractMotionDetector;->mSensorAdapter:Lcom/hcrest/sensors/SensorAdapter;

    .line 73
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/hcrest/sensors/AbstractMotionDetector;->mSensorAdapter:Lcom/hcrest/sensors/SensorAdapter;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/hcrest/sensors/AbstractMotionDetector;->mSensorAdapter:Lcom/hcrest/sensors/SensorAdapter;

    invoke-virtual {p0}, Lcom/hcrest/sensors/AbstractMotionDetector;->getSensorTypes()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hcrest/sensors/AbstractMotionDetector;->getPreferredSensorDelay()I

    move-result v2

    invoke-virtual {p0}, Lcom/hcrest/sensors/AbstractMotionDetector;->getTriggerSensor()Lcom/hcrest/sensors/SensorType;

    move-result-object v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/hcrest/sensors/SensorAdapter;->registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;ILcom/hcrest/sensors/SensorType;)V

    .line 118
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/hcrest/sensors/AbstractMotionDetector;->mSensorAdapter:Lcom/hcrest/sensors/SensorAdapter;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/hcrest/sensors/AbstractMotionDetector;->mSensorAdapter:Lcom/hcrest/sensors/SensorAdapter;

    invoke-interface {v0, p0}, Lcom/hcrest/sensors/SensorAdapter;->unregisterSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;)V

    .line 128
    :cond_0
    return-void
.end method
