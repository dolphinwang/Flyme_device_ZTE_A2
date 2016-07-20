.class public Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$DSFSensorData;
.super Lcom/hcrest/sensors/SensorData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DSFSensorData"
.end annotation


# instance fields
.field private L:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/hcrest/sensors/SensorData;-><init>()V

    .line 762
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$DSFSensorData;->L:Z

    return-void
.end method


# virtual methods
.method public isEOF()Z
    .locals 1

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$DSFSensorData;->L:Z

    return v0
.end method

.method protected setEOF(Z)V
    .locals 0
    .param p1, "isEOF"    # Z

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$DSFSensorData;->L:Z

    .line 770
    return-void
.end method
