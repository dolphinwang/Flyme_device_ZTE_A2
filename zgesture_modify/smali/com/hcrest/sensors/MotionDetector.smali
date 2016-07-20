.class public interface abstract Lcom/hcrest/sensors/MotionDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Config::",
        "Lcom/hcrest/sensors/MotionDetectorConfig;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;"
    }
.end annotation


# virtual methods
.method public abstract getConfig()Lcom/hcrest/sensors/MotionDetectorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TConfig;"
        }
    .end annotation
.end method

.method public abstract getPreferredSensorDelay()I
.end method

.method public abstract getSensorAdapter()Lcom/hcrest/sensors/SensorAdapter;
.end method

.method public abstract getSensorTypes()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public abstract getTriggerSensor()Lcom/hcrest/sensors/SensorType;
.end method

.method public abstract reset()V
.end method

.method public abstract setConfig(Lcom/hcrest/sensors/MotionDetectorConfig;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConfig;)V"
        }
    .end annotation
.end method

.method public abstract setSensorAdapter(Lcom/hcrest/sensors/SensorAdapter;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
