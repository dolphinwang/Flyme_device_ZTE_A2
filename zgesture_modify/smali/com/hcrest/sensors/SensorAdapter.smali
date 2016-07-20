.class public interface abstract Lcom/hcrest/sensors/SensorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;
    }
.end annotation


# static fields
.field public static final DummySensorAdapter:Lcom/hcrest/sensors/SensorAdapter;

.field public static final SENSOR_DELAY_FASTEST:I = 0x0

.field public static final SENSOR_DELAY_NORMAL:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/hcrest/sensors/SensorAdapter$1;

    invoke-direct {v0}, Lcom/hcrest/sensors/SensorAdapter$1;-><init>()V

    sput-object v0, Lcom/hcrest/sensors/SensorAdapter;->DummySensorAdapter:Lcom/hcrest/sensors/SensorAdapter;

    return-void
.end method


# virtual methods
.method public abstract registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;)V
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
.end method

.method public abstract registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;I)V
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
.end method

.method public abstract registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;ILcom/hcrest/sensors/SensorType;)V
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
.end method

.method public abstract unregisterSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;)V
.end method
