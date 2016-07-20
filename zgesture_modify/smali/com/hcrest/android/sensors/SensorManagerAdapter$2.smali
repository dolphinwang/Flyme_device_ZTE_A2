.class Lcom/hcrest/android/sensors/SensorManagerAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hcrest/sensors/SensorAdapter$SensorDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hcrest/android/sensors/SensorManagerAdapter;->initializeAngularPositionSensor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hcrest/android/sensors/SensorManagerAdapter$a;

.field final synthetic b:Lcom/hcrest/android/sensors/SensorManagerAdapter;

.field private c:I


# direct methods
.method constructor <init>(Lcom/hcrest/android/sensors/SensorManagerAdapter;Lcom/hcrest/android/sensors/SensorManagerAdapter$a;)V
    .locals 1

    .prologue
    .line 330
    iput-object p1, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$2;->b:Lcom/hcrest/android/sensors/SensorManagerAdapter;

    iput-object p2, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$2;->a:Lcom/hcrest/android/sensors/SensorManagerAdapter$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$2;->c:I

    return-void
.end method


# virtual methods
.method public onSensorData(Lcom/hcrest/sensors/SensorData;)V
    .locals 2
    .param p1, "sensorData"    # Lcom/hcrest/sensors/SensorData;

    .prologue
    .line 336
    iget v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$2;->c:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$2;->b:Lcom/hcrest/android/sensors/SensorManagerAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hcrest/android/sensors/SensorManagerAdapter;->a(Lcom/hcrest/android/sensors/SensorManagerAdapter;Z)Z

    .line 338
    iget-object v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$2;->a:Lcom/hcrest/android/sensors/SensorManagerAdapter$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hcrest/android/sensors/SensorManagerAdapter$a;->a(Z)V

    .line 340
    :cond_0
    iget v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$2;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hcrest/android/sensors/SensorManagerAdapter$2;->c:I

    .line 341
    return-void
.end method
