.class Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field protected a:Lcom/hcrest/sensors/SensorType;

.field final synthetic b:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;

.field private c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

.field private d:J

.field private e:Lcom/hcrest/sensors/SensorData;

.field private f:Z

.field private g:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;)V
    .locals 2
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
    .line 205
    iput-object p1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->b:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->d:J

    .line 187
    new-instance v0, Lcom/hcrest/sensors/SensorData;

    invoke-direct {v0}, Lcom/hcrest/sensors/SensorData;-><init>()V

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->f:Z

    .line 192
    const-class v0, Lcom/hcrest/sensors/SensorType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->g:Ljava/util/EnumSet;

    .line 196
    sget-object v0, Lcom/hcrest/sensors/SensorType;->ANGULAR_VELOCITY:Lcom/hcrest/sensors/SensorType;

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->a:Lcom/hcrest/sensors/SensorType;

    .line 206
    iput-object p2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    .line 207
    iput-object p3, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->g:Ljava/util/EnumSet;

    .line 208
    invoke-virtual {p1, p3}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->getTriggerSensor(Ljava/util/EnumSet;)Lcom/hcrest/sensors/SensorType;

    move-result-object v0

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->a:Lcom/hcrest/sensors/SensorType;

    .line 209
    return-void
.end method


# virtual methods
.method public a()Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    return-object v0
.end method

.method public a(Lcom/hcrest/sensors/SensorType;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->a:Lcom/hcrest/sensors/SensorType;

    .line 219
    return-void
.end method

.method public declared-synchronized a(Lcom/hcrest/sensors/SensorType;[FJ)V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v7, 0x3

    .line 274
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 278
    :cond_1
    if-eqz p1, :cond_0

    .line 282
    :try_start_1
    iget-object v2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->g:Ljava/util/EnumSet;

    invoke-virtual {v2, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    invoke-virtual {v2}, Lcom/hcrest/sensors/SensorData;->getSensorTypes()Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    invoke-virtual {v2}, Lcom/hcrest/sensors/SensorData;->getTimestamp()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    iget-object v3, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    invoke-interface {v2, v3}, Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;->onSensorData(Lcom/hcrest/sensors/SensorData;)V

    .line 290
    new-instance v2, Lcom/hcrest/sensors/SensorData;

    invoke-direct {v2}, Lcom/hcrest/sensors/SensorData;-><init>()V

    iput-object v2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    .line 294
    :cond_2
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 295
    :try_start_2
    sget-object v2, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$1;->a:[I

    invoke-virtual {p1}, Lcom/hcrest/sensors/SensorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 385
    monitor-exit p0

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 274
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 297
    :pswitch_0
    :try_start_4
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setLinearAcceleration(Lcom/hcrest/sensors/util/Vector3D;)V

    .line 388
    :goto_1
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    invoke-virtual {v0, p3, p4}, Lcom/hcrest/sensors/SensorData;->setTimestamp(J)V

    .line 390
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    invoke-virtual {v0}, Lcom/hcrest/sensors/SensorData;->getSensorTypes()Ljava/util/EnumSet;

    move-result-object v0

    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->g:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 391
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    invoke-interface {v0, v1}, Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;->onSensorData(Lcom/hcrest/sensors/SensorData;)V

    .line 394
    :cond_3
    new-instance v0, Lcom/hcrest/sensors/SensorData;

    invoke-direct {v0}, Lcom/hcrest/sensors/SensorData;-><init>()V

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    .line 396
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    .line 300
    :pswitch_1
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setGravity(Lcom/hcrest/sensors/util/Vector3D;)V

    goto :goto_1

    .line 303
    :pswitch_2
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setMagnetometer(Lcom/hcrest/sensors/util/Vector3D;)V

    goto :goto_1

    .line 306
    :pswitch_3
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Angle;

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Angle;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setOrientation(Lcom/hcrest/sensors/util/Angle;)V

    goto :goto_1

    .line 309
    :pswitch_4
    iget-object v2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v3, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v4, 0x0

    aget v4, p2, v4

    const/4 v5, 0x1

    aget v5, p2, v5

    const/4 v6, 0x2

    aget v6, p2, v6

    invoke-direct {v3, v4, v5, v6}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/hcrest/sensors/SensorData;->setAngularVelocity(Lcom/hcrest/sensors/util/Vector3D;)V

    .line 311
    array-length v2, p2

    if-le v2, v7, :cond_6

    .line 312
    const/4 v0, 0x3

    aget v0, p2, v0

    float-to-long v0, v0

    .line 317
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    invoke-virtual {v2, v0, v1}, Lcom/hcrest/sensors/SensorData;->setAngularVelocitySamplePeriod(J)V

    .line 318
    iput-wide p3, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->d:J

    goto/16 :goto_1

    .line 314
    :cond_6
    iget-wide v2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->d:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    iget-wide v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->d:J

    sub-long v0, p3, v0

    goto :goto_2

    .line 321
    :pswitch_5
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setLinearAccelerationNoGravity(Lcom/hcrest/sensors/util/Vector3D;)V

    goto/16 :goto_1

    .line 324
    :pswitch_6
    array-length v0, p2

    if-le v0, v7, :cond_7

    .line 325
    iget-object v6, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v0, Lcom/hcrest/sensors/util/Quaternion;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, p2, v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFFZ)V

    invoke-virtual {v6, v0}, Lcom/hcrest/sensors/SensorData;->setAngularPosition(Lcom/hcrest/sensors/util/Quaternion;)V

    goto/16 :goto_1

    .line 327
    :cond_7
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    invoke-static {v1, v2, v3}, Lcom/hcrest/sensors/util/Quaternion;->fromUnitVector(FFF)Lcom/hcrest/sensors/util/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setAngularPosition(Lcom/hcrest/sensors/util/Quaternion;)V

    goto/16 :goto_1

    .line 331
    :pswitch_7
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/sensors/SensorData;->setRelativeCursorPosition(FF)V

    goto/16 :goto_1

    .line 334
    :pswitch_8
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setApplicationState(I)V

    goto/16 :goto_1

    .line 338
    :pswitch_9
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setLight(F)V

    goto/16 :goto_1

    .line 341
    :pswitch_a
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setPressure(F)V

    goto/16 :goto_1

    .line 344
    :pswitch_b
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setProximity(F)V

    goto/16 :goto_1

    .line 347
    :pswitch_c
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setRelativeHumidity(F)V

    goto/16 :goto_1

    .line 350
    :pswitch_d
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setAmbientTemperature(F)V

    goto/16 :goto_1

    .line 353
    :pswitch_e
    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {v1, v0}, Lcom/hcrest/sensors/SensorData;->setMagneticFieldUncalibrated([F)V

    goto/16 :goto_1

    .line 356
    :pswitch_f
    array-length v0, p2

    if-le v0, v7, :cond_8

    .line 357
    iget-object v6, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v0, Lcom/hcrest/sensors/util/Quaternion;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, p2, v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFFZ)V

    invoke-virtual {v6, v0}, Lcom/hcrest/sensors/SensorData;->setGameRotationVector(Lcom/hcrest/sensors/util/Quaternion;)V

    goto/16 :goto_1

    .line 359
    :cond_8
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    invoke-static {v1, v2, v3}, Lcom/hcrest/sensors/util/Quaternion;->fromUnitVector(FFF)Lcom/hcrest/sensors/util/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setGameRotationVector(Lcom/hcrest/sensors/util/Quaternion;)V

    goto/16 :goto_1

    .line 364
    :pswitch_10
    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {v1, v0}, Lcom/hcrest/sensors/SensorData;->setGyroscopeUncalibrated([F)V

    goto/16 :goto_1

    .line 367
    :pswitch_11
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setSignificantMotion(I)V

    goto/16 :goto_1

    .line 370
    :pswitch_12
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setStepsDetected(I)V

    goto/16 :goto_1

    .line 373
    :pswitch_13
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setStepsCounted(I)V

    goto/16 :goto_1

    .line 376
    :pswitch_14
    array-length v0, p2

    if-le v0, v7, :cond_9

    .line 377
    iget-object v6, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v0, Lcom/hcrest/sensors/util/Quaternion;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, p2, v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFFZ)V

    invoke-virtual {v6, v0}, Lcom/hcrest/sensors/SensorData;->setGeomagneticRotationVector(Lcom/hcrest/sensors/util/Quaternion;)V

    goto/16 :goto_1

    .line 379
    :cond_9
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    invoke-static {v1, v2, v3}, Lcom/hcrest/sensors/util/Quaternion;->fromUnitVector(FFF)Lcom/hcrest/sensors/util/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setGeomagneticRotationVector(Lcom/hcrest/sensors/util/Quaternion;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->f:Z

    .line 235
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->f:Z

    .line 242
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    invoke-virtual {v0}, Lcom/hcrest/sensors/SensorData;->getSensorTypes()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    invoke-interface {v0, v1}, Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;->onSensorData(Lcom/hcrest/sensors/SensorData;)V

    .line 252
    :cond_0
    new-instance v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$DSFSensorData;

    invoke-direct {v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$DSFSensorData;-><init>()V

    .line 253
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$DSFSensorData;->setEOF(Z)V

    .line 254
    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    invoke-interface {v1, v0}, Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;->onSensorData(Lcom/hcrest/sensors/SensorData;)V

    .line 256
    :cond_1
    new-instance v0, Lcom/hcrest/sensors/SensorData;

    invoke-direct {v0}, Lcom/hcrest/sensors/SensorData;-><init>()V

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->e:Lcom/hcrest/sensors/SensorData;

    .line 257
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->f:Z

    return v0
.end method
