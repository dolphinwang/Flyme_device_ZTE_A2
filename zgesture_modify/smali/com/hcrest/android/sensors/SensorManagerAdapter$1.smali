.class Lcom/hcrest/android/sensors/SensorManagerAdapter$1;
.super Landroid/util/SparseIntArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/android/sensors/SensorManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hcrest/android/sensors/SensorManagerAdapter;


# direct methods
.method constructor <init>(Lcom/hcrest/android/sensors/SensorManagerAdapter;I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 107
    iput-object p1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$1;->a:Lcom/hcrest/android/sensors/SensorManagerAdapter;

    invoke-direct {p0, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 108
    invoke-virtual {p0, v0, v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter$1;->append(II)V

    .line 109
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/hcrest/android/sensors/SensorManagerAdapter$1;->append(II)V

    .line 110
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v2}, Lcom/hcrest/android/sensors/SensorManagerAdapter$1;->append(II)V

    .line 111
    invoke-virtual {p0, v1, v3}, Lcom/hcrest/android/sensors/SensorManagerAdapter$1;->append(II)V

    .line 112
    const/4 v0, 0x5

    invoke-virtual {p0, v3, v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter$1;->append(II)V

    .line 113
    const/16 v0, 0xb

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/hcrest/android/sensors/SensorManagerAdapter$1;->append(II)V

    .line 114
    const/4 v0, 0x7

    invoke-virtual {p0, v2, v0}, Lcom/hcrest/android/sensors/SensorManagerAdapter$1;->append(II)V

    .line 115
    const/16 v0, 0xf

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/hcrest/android/sensors/SensorManagerAdapter$1;->append(II)V

    .line 116
    return-void
.end method
