.class public Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hcrest/sensors/SensorAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$1;,
        Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$DSFSensorData;,
        Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;,
        Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;,
        Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;,
        Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;
    }
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Z

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->b:Z

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->c:Ljava/util/Vector;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->a:Ljava/io/InputStream;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "dsfInputStream"    # Ljava/io/InputStream;
    .param p2, "startImmediately"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->b:Z

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->c:Ljava/util/Vector;

    .line 63
    invoke-virtual {p0, p1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->setDsfInputStream(Ljava/io/InputStream;)V

    .line 64
    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->start()V

    .line 67
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->c:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public getSensorDelayFromPreferred(I)I
    .locals 0
    .param p1, "preferredDelay"    # I

    .prologue
    .line 172
    return p1
.end method

.method public getTriggerSensor(Ljava/util/EnumSet;)Lcom/hcrest/sensors/SensorType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;)",
            "Lcom/hcrest/sensors/SensorType;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "sensorTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    const/4 v1, 0x0

    .line 140
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/sensors/SensorType;

    .line 141
    sget-object v3, Lcom/hcrest/sensors/SensorType;->ALL:Lcom/hcrest/sensors/SensorType;

    sget-object v4, Lcom/hcrest/sensors/SensorType;->APP_STATE:Lcom/hcrest/sensors/SensorType;

    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorType;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_2

    :cond_0
    :goto_1
    move-object v1, v0

    .line 145
    goto :goto_0

    .line 149
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->d:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->d:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;

    invoke-virtual {v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;)V
    .locals 2
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
    .line 415
    .local p2, "sensorTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;ILcom/hcrest/sensors/SensorType;)V

    .line 416
    return-void
.end method

.method public registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;I)V
    .locals 1
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
    .line 406
    .local p2, "sensorTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;ILcom/hcrest/sensors/SensorType;)V

    .line 407
    return-void
.end method

.method public registerSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;ILcom/hcrest/sensors/SensorType;)V
    .locals 2
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
    .line 424
    .local p2, "sensorTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/hcrest/sensors/SensorType;>;"
    if-nez p1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 428
    :cond_0
    new-instance v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;-><init>(Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;)V

    .line 431
    if-eqz p4, :cond_1

    .line 432
    invoke-virtual {v0, p4}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->a(Lcom/hcrest/sensors/SensorType;)V

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->c:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->b()V

    goto :goto_0
.end method

.method public setDsfInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "dsfInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->a:Ljava/io/InputStream;

    .line 85
    return-void
.end method

.method public setIgnoreTimestamps(Z)V
    .locals 0
    .param p1, "ignoreTimestamps"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->b:Z

    .line 96
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->a:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;-><init>(Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$1;)V

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->d:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;

    .line 107
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->d:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/InputStream;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->a:Ljava/io/InputStream;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->d:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->d:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->cancel(Z)Z

    .line 117
    :cond_0
    return-void
.end method

.method public unregisterSensorDataListener(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 465
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v1, Ljava/util/Vector;

    const/16 v0, 0xa

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    .line 450
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;

    .line 451
    invoke-virtual {v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->a()Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;

    .line 458
    invoke-virtual {v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->c()V

    .line 459
    iget-object v3, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->c:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 463
    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    goto :goto_0
.end method
