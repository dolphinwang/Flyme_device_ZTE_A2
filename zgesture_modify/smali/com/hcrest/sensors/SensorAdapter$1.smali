.class final Lcom/hcrest/sensors/SensorAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hcrest/sensors/SensorAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/sensors/SensorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p2, "sensorTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    return-void
.end method

.method public registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;I)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;
    .param p3, "sensorDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "sensorTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    return-void
.end method

.method public registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;ILcom/hcrest/sensors/SensorType;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;
    .param p3, "sensorDelay"    # I
    .param p4, "triggerSensor"    # Lcom/hcrest/sensors/SensorType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;I",
            "Lcom/hcrest/sensors/SensorType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "sensorTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    return-void
.end method

.method public unregisterSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    .prologue
    .line 151
    return-void
.end method
