.class Lcom/hcrest/android/sensors/SensorManagerAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/android/sensors/SensorManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field protected a:I

.field final synthetic b:Lcom/hcrest/android/sensors/SensorManagerAdapter;

.field private c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

.field private d:J

.field private e:Lcom/hcrest/sensors/SensorData;

.field private f:[I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/hcrest/android/sensors/SensorManagerAdapter;Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;Ljava/util/EnumSet;I)V
    .locals 2
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
    .line 399
    iput-object p1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->b:Lcom/hcrest/android/sensors/SensorManagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->d:J

    .line 375
    new-instance v0, Lcom/hcrest/sensors/SensorData;

    invoke-direct {v0}, Lcom/hcrest/sensors/SensorData;-><init>()V

    iput-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->h:Z

    .line 389
    const/4 v0, 0x4

    iput v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a:I

    .line 400
    iput-object p2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    .line 402
    invoke-virtual {p1, p3}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->getSensorsFromSensorTypes(Ljava/util/EnumSet;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->f:[I

    .line 403
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->f:[I

    invoke-virtual {p1, v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->getTriggerSensor([I)I

    move-result v0

    iput v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a:I

    .line 405
    invoke-virtual {p1, p4}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->getSensorDelayFromPreferred(I)I

    move-result v0

    iput v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->g:I

    .line 406
    return-void
.end method


# virtual methods
.method public a()Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    return-object v0
.end method

.method public a(Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    .line 449
    return-void
.end method

.method public a(Lcom/hcrest/sensors/SensorType;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->b:Lcom/hcrest/android/sensors/SensorManagerAdapter;

    invoke-virtual {v0, p1}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->getSensorFromSensorType(Lcom/hcrest/sensors/SensorType;)I

    move-result v0

    .line 410
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 411
    iput v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a:I

    .line 413
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->h:Z

    .line 465
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->g:I

    return v0
.end method

.method public c()[I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->f:[I

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->h:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 471
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x3

    .line 478
    iget-boolean v2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->h:Z

    if-nez v2, :cond_0

    .line 614
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->b:Lcom/hcrest/android/sensors/SensorManagerAdapter;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v2, v3}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->a(Lcom/hcrest/android/sensors/SensorManagerAdapter;[F)[F

    move-result-object v4

    .line 482
    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 601
    monitor-exit p0

    goto :goto_0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 485
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setLinearAcceleration(Lcom/hcrest/sensors/util/Vector3D;)V

    .line 605
    :cond_1
    :goto_1
    iget v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a:I

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/hcrest/sensors/SensorData;->setTimestamp(J)V

    .line 608
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->c:Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;

    iget-object v1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    invoke-interface {v0, v1}, Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;->onSensorData(Lcom/hcrest/sensors/SensorData;)V

    .line 610
    new-instance v0, Lcom/hcrest/sensors/SensorData;

    invoke-direct {v0}, Lcom/hcrest/sensors/SensorData;-><init>()V

    iput-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    .line 613
    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 488
    :sswitch_1
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setGravity(Lcom/hcrest/sensors/util/Vector3D;)V

    goto :goto_1

    .line 491
    :sswitch_2
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setMagnetometer(Lcom/hcrest/sensors/util/Vector3D;)V

    goto :goto_1

    .line 495
    :sswitch_3
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Angle;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-float v3, v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    neg-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Angle;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setOrientation(Lcom/hcrest/sensors/util/Angle;)V

    goto :goto_1

    .line 498
    :sswitch_4
    iget-wide v2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->d:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_4

    .line 500
    :goto_2
    iget-object v2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v3, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    const/4 v7, 0x2

    aget v4, v4, v7

    invoke-direct {v3, v5, v6, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/hcrest/sensors/SensorData;->setAngularVelocity(Lcom/hcrest/sensors/util/Vector3D;J)V

    .line 501
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->d:J

    goto/16 :goto_1

    .line 498
    :cond_4
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->d:J

    sub-long/2addr v0, v2

    goto :goto_2

    .line 504
    :sswitch_5
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Vector3D;

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setLinearAccelerationNoGravity(Lcom/hcrest/sensors/util/Vector3D;)V

    goto/16 :goto_1

    .line 507
    :sswitch_6
    array-length v0, v4

    if-le v0, v5, :cond_5

    .line 508
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Quaternion;

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v4, v3

    const/4 v5, 0x2

    aget v5, v4, v5

    const/4 v6, 0x3

    aget v4, v4, v6

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setAngularPosition(Lcom/hcrest/sensors/util/Quaternion;)V

    goto/16 :goto_1

    .line 510
    :cond_5
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x2

    aget v3, v4, v3

    invoke-static {v1, v2, v3}, Lcom/hcrest/sensors/util/Quaternion;->fromUnitVector(FFF)Lcom/hcrest/sensors/util/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setAngularPosition(Lcom/hcrest/sensors/util/Quaternion;)V

    goto/16 :goto_1

    .line 514
    :sswitch_7
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/sensors/SensorData;->setRelativeCursorPosition(FF)V

    goto/16 :goto_1

    .line 517
    :sswitch_8
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->b:Lcom/hcrest/android/sensors/SensorManagerAdapter;

    invoke-static {v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->a(Lcom/hcrest/android/sensors/SensorManagerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/sensors/SensorData;->setRelativeCursorPosition(FF)V

    goto/16 :goto_1

    .line 522
    :sswitch_9
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setLight(F)V

    goto/16 :goto_1

    .line 525
    :sswitch_a
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setPressure(F)V

    goto/16 :goto_1

    .line 528
    :sswitch_b
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setProximity(F)V

    goto/16 :goto_1

    .line 531
    :sswitch_c
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setRelativeHumidity(F)V

    goto/16 :goto_1

    .line 534
    :sswitch_d
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setAmbientTemperature(F)V

    goto/16 :goto_1

    .line 537
    :sswitch_e
    iget-object v1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {v1, v0}, Lcom/hcrest/sensors/SensorData;->setMagneticFieldUncalibrated([F)V

    goto/16 :goto_1

    .line 541
    :sswitch_f
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->b:Lcom/hcrest/android/sensors/SensorManagerAdapter;

    invoke-static {v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->a(Lcom/hcrest/android/sensors/SensorManagerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->b:Lcom/hcrest/android/sensors/SensorManagerAdapter;

    invoke-static {v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->b(Lcom/hcrest/android/sensors/SensorManagerAdapter;)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    .line 543
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hcrest/sensors/SensorData;->setRelativeCursorPosition(FF)V

    goto/16 :goto_1

    .line 545
    :cond_6
    array-length v0, v4

    if-le v0, v5, :cond_7

    .line 546
    iget-object v6, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v0, Lcom/hcrest/sensors/util/Quaternion;

    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x2

    aget v3, v4, v3

    const/4 v5, 0x3

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFFZ)V

    invoke-virtual {v6, v0}, Lcom/hcrest/sensors/SensorData;->setGameRotationVector(Lcom/hcrest/sensors/util/Quaternion;)V

    goto/16 :goto_1

    .line 548
    :cond_7
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x2

    aget v3, v4, v3

    invoke-static {v1, v2, v3}, Lcom/hcrest/sensors/util/Quaternion;->fromUnitVector(FFF)Lcom/hcrest/sensors/util/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setGameRotationVector(Lcom/hcrest/sensors/util/Quaternion;)V

    goto/16 :goto_1

    .line 554
    :sswitch_10
    iget-object v1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    invoke-virtual {v4}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {v1, v0}, Lcom/hcrest/sensors/SensorData;->setGyroscopeUncalibrated([F)V

    goto/16 :goto_1

    .line 557
    :sswitch_11
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setSignificantMotion(I)V

    goto/16 :goto_1

    .line 560
    :sswitch_12
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setStepsDetected(I)V

    goto/16 :goto_1

    .line 563
    :sswitch_13
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setStepsCounted(I)V

    goto/16 :goto_1

    .line 566
    :sswitch_14
    array-length v0, v4

    if-le v0, v5, :cond_8

    .line 567
    iget-object v6, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v0, Lcom/hcrest/sensors/util/Quaternion;

    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x2

    aget v3, v4, v3

    const/4 v5, 0x3

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/hcrest/sensors/util/Quaternion;-><init>(FFFFZ)V

    invoke-virtual {v6, v0}, Lcom/hcrest/sensors/SensorData;->setGeomagneticRotationVector(Lcom/hcrest/sensors/util/Quaternion;)V

    goto/16 :goto_1

    .line 569
    :cond_8
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x2

    aget v3, v4, v3

    invoke-static {v1, v2, v3}, Lcom/hcrest/sensors/util/Quaternion;->fromUnitVector(FFF)Lcom/hcrest/sensors/util/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setGeomagneticRotationVector(Lcom/hcrest/sensors/util/Quaternion;)V

    goto/16 :goto_1

    .line 574
    :sswitch_15
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setFlipDetected(I)V

    goto/16 :goto_1

    .line 577
    :sswitch_16
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setPickUpDetected(I)V

    goto/16 :goto_1

    .line 580
    :sswitch_17
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setShakeDetected(I)V

    goto/16 :goto_1

    .line 583
    :sswitch_18
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setStabilityClassified(F)V

    goto/16 :goto_1

    .line 586
    :sswitch_19
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setStabilityDetected(F)V

    goto/16 :goto_1

    .line 589
    :sswitch_1a
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/hcrest/sensors/SensorData;->setTapDetected(III)V

    goto/16 :goto_1

    .line 592
    :sswitch_1b
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Vector3D;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setRawAccelerometer(Lcom/hcrest/sensors/util/Vector3D;)V

    goto/16 :goto_1

    .line 595
    :sswitch_1c
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Vector3D;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setRawGyroscope(Lcom/hcrest/sensors/util/Vector3D;)V

    goto/16 :goto_1

    .line 598
    :sswitch_1d
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->e:Lcom/hcrest/sensors/SensorData;

    new-instance v1, Lcom/hcrest/sensors/util/Vector3D;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/hcrest/sensors/util/Vector3D;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/hcrest/sensors/SensorData;->setRawMagneticField(Lcom/hcrest/sensors/util/Vector3D;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 483
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x8 -> :sswitch_b
        0x9 -> :sswitch_1
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x80 -> :sswitch_8
        0x1010000 -> :sswitch_7
        0x1010002 -> :sswitch_1b
        0x1010003 -> :sswitch_1c
        0x1010004 -> :sswitch_1d
        0x1010005 -> :sswitch_18
        0x1010007 -> :sswitch_1a
        0x1010008 -> :sswitch_17
        0x1010009 -> :sswitch_15
        0x101000a -> :sswitch_16
        0x101000b -> :sswitch_19
    .end sparse-switch
.end method
