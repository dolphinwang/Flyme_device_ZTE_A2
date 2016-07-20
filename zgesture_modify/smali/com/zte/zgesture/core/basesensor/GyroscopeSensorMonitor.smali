.class public Lcom/zte/zgesture/core/basesensor/GyroscopeSensorMonitor;
.super Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
.source "GyroscopeSensorMonitor.java"


# static fields
.field private static mGyroscopeSensorMonitor:Lcom/zte/zgesture/core/basesensor/GyroscopeSensorMonitor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;-><init>(Landroid/content/Context;II)V

    .line 12
    return-void
.end method

.method public static getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/GyroscopeSensorMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-object v0, Lcom/zte/zgesture/core/basesensor/GyroscopeSensorMonitor;->mGyroscopeSensorMonitor:Lcom/zte/zgesture/core/basesensor/GyroscopeSensorMonitor;

    if-nez v0, :cond_0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    new-instance v0, Lcom/zte/zgesture/core/basesensor/GyroscopeSensorMonitor;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/basesensor/GyroscopeSensorMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/core/basesensor/GyroscopeSensorMonitor;->mGyroscopeSensorMonitor:Lcom/zte/zgesture/core/basesensor/GyroscopeSensorMonitor;

    .line 19
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/basesensor/GyroscopeSensorMonitor;->mGyroscopeSensorMonitor:Lcom/zte/zgesture/core/basesensor/GyroscopeSensorMonitor;

    return-object v0
.end method
