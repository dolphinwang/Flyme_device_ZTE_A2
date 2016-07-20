.class public Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;
.super Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;
.source "ProximitySensorMonitor.java"


# static fields
.field private static mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const/16 v0, 0x8

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/zgesture/core/basesensor/AbstractSensorMonitor;-><init>(Landroid/content/Context;II)V

    .line 12
    return-void
.end method

.method public static getSensorMonitor(Landroid/content/Context;)Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-object v0, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    if-nez v0, :cond_0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    new-instance v0, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    invoke-direct {v0, p0}, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    .line 19
    :cond_0
    sget-object v0, Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;->mProximitySensorMonitor:Lcom/zte/zgesture/core/basesensor/ProximitySensorMonitor;

    return-object v0
.end method
