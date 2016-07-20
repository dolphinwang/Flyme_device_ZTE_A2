.class public Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorCaptureData"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/hcrest/sensors/SensorType;

.field private c:J

.field private d:[F


# direct methods
.method public constructor <init>(ILcom/hcrest/sensors/SensorType;J[F)V
    .locals 1
    .param p1, "sensorIndex"    # I
    .param p2, "type"    # Lcom/hcrest/sensors/SensorType;
    .param p3, "timestamp"    # J
    .param p5, "values"    # [F

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput p1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->a:I

    .line 678
    iput-object p2, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->b:Lcom/hcrest/sensors/SensorType;

    .line 679
    iput-wide p3, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->c:J

    .line 680
    iput-object p5, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->d:[F

    .line 681
    return-void
.end method

.method public static fromString(Ljava/lang/String;Landroid/util/SparseArray;)Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;
    .locals 8
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;)",
            "Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;"
        }
    .end annotation

    .prologue
    .local p1, "sensorIndexTypeMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/hcrest/sensors/SensorType;>;"
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 747
    const-string v1, "[, ]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 748
    aget-object v2, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 749
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hcrest/sensors/SensorType;

    .line 750
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 751
    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    new-array v6, v6, [F

    .line 752
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_0

    .line 753
    add-int/lit8 v7, v0, 0x2

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v6, v0

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_0
    new-instance v1, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;

    invoke-direct/range {v1 .. v6}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;-><init>(ILcom/hcrest/sensors/SensorType;J[F)V

    return-object v1
.end method


# virtual methods
.method public getSensorIndex()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->a:I

    return v0
.end method

.method public getSensorType()Lcom/hcrest/sensors/SensorType;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->b:Lcom/hcrest/sensors/SensorType;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 698
    iget-wide v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->c:J

    return-wide v0
.end method

.method public getValues()[F
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->d:[F

    return-object v0
.end method

.method public setSensorType(Lcom/hcrest/sensors/SensorType;)V
    .locals 0
    .param p1, "type"    # Lcom/hcrest/sensors/SensorType;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->b:Lcom/hcrest/sensors/SensorType;

    .line 726
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 707
    iput-wide p1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->c:J

    .line 708
    return-void
.end method
