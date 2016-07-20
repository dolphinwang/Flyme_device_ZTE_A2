.class public Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;
.super Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
.source "AccelerometerSensorMonitor.java"


# static fields
.field private static mAccelerometerSensorMonitor:Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, v0, v0}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;-><init>(Landroid/content/Context;II)V

    .line 12
    return-void
.end method

.method public static getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;->mAccelerometerSensorMonitor:Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

    if-nez v0, :cond_0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    new-instance v0, Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;->mAccelerometerSensorMonitor:Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

    .line 19
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;->mAccelerometerSensorMonitor:Lcom/zte/zgesture/core/basesensor/AccelerometerSensorMonitor;

    return-object v0
.end method
